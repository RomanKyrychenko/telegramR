#' @title Authentication Methods
#' @description Provides methods for user authentication with Telegram
#' @details This class handles all authentication-related operations including login, logout, two-factor authentication,
#' and code verification. It implements session management and authorization workflows for the Telegram API.
#' @export
AuthMethods <- R6::R6Class(
  "AuthMethods",
  public = list(
    #' @description
    #' Starts the client (connects and logs in if necessary).
    #' @param phone Function or string representing the phone number or bot token
    #' @param password Function or string to provide 2FA password if needed
    #' @param bot_token Bot token for logging in as a bot
    #' @param force_sms Whether to force sending the code request as SMS
    #' @param code_callback Function to retrieve login code
    #' @param first_name First name for new accounts
    #' @param last_name Last name for new accounts
    #' @param max_attempts Maximum number of attempts for code/password verification
    #' @return The client instance
    start = function(phone = function() readline("Please enter your phone (or bot token): "),
                     password = function() getPass::getPass("Please enter your password: "),
                     bot_token = NULL, force_sms = FALSE, code_callback = NULL,
                     first_name = "New User", last_name = "", max_attempts = 3) {

      if (is.null(code_callback)) {
        code_callback <- function() readline("Please enter the code you received: ")
      } else if (!is.function(code_callback)) {
        stop("The code_callback parameter needs to be a callable function that returns the code you received by Telegram.")
      }

      if (!is.null(phone) && !is.null(bot_token) && !is.function(phone)) {
        stop("Both a phone and a bot token provided, must only provide one of either")
      }

      if (is.null(phone) && is.null(bot_token)) {
        stop("No phone number or bot token provided.")
      }

      coro <- private$start_impl(
        phone = phone,
        password = password,
        bot_token = bot_token,
        force_sms = force_sms,
        code_callback = code_callback,
        first_name = first_name,
        last_name = last_name,
        max_attempts = max_attempts
      )

      if (private$loop$is_running()) {
        return(coro)
      } else {
        return(private$loop$run_until_complete(coro))
      }
    },

    #' @description
    #' Signs in to an existing user or bot account.
    #' @param phone Phone number
    #' @param code The verification code sent by Telegram
    #' @param password 2FA password if enabled
    #' @param bot_token Bot token for logging in as a bot
    #' @param phone_code_hash Hash returned by send_code_request
    #' @return The signed in user or information about send_code_request
    sign_in = function(phone = NULL, code = NULL, password = NULL,
                       bot_token = NULL, phone_code_hash = NULL) {

      me <- self$get_me()
      if (!is.null(me)) {
        return(me)
      }

      if (!is.null(phone) && is.null(code) && is.null(password)) {
        return(self$send_code_request(phone))
      } else if (!is.null(code)) {
        result <- private$parse_phone_and_hash(phone, phone_code_hash)
        phone <- result[[1]]
        phone_code_hash <- result[[2]]

        request <- SignInRequest$new(
          phone, phone_code_hash, as.character(code)
        )
      } else if (!is.null(password)) {
        pwd <- self$invoke(GetPasswordRequest$new())
        request <- CheckPasswordRequest$new(
          private$compute_check(pwd, password)
        )
      } else if (!is.null(bot_token)) {
        request <- ImportBotAuthorizationRequest$new(
          flags = 0, bot_auth_token = bot_token,
          api_id = self$api_id, api_hash = self$api_hash
        )
      } else {
        stop("You must provide a phone and a code the first time, and a password only if an RPCError was raised before.")
      }

      tryCatch({
        result <- self$invoke(request)
      }, error = function(e) {
        if (inherits(e, "PhoneCodeExpiredError")) {
          private$phone_code_hash[[phone]] <- NULL
        }
        stop(e)
      })

      if (inherits(result, "auth.AuthorizationSignUpRequired")) {
        private$tos <- result$terms_of_service
        stop("PhoneNumberUnoccupiedError")
      }

      return(private$on_login(result$user))
    },

    #' @description
    #' This method can no longer be used due to Telegram's restrictions.
    #' @param code The verification code
    #' @param first_name First name for the new user
    #' @param last_name Last name for the new user
    #' @param phone Phone number
    #' @param phone_code_hash Hash returned by send_code_request
    sign_up = function(code, first_name, last_name = "", phone = NULL, phone_code_hash = NULL) {
      stop("Third-party applications cannot sign up for Telegram. See https://github.com/LonamiWebs/Telethon/issues/4050 for details")
    },

    #' @description
    #' Sends the verification code to the given phone number
    #' @param phone Phone number to send the code to
    #' @param force_sms Whether to force sending as SMS
    #' @return The sent code information
    send_code_request = function(phone, force_sms = FALSE, retry_count = 0) {
      if (force_sms) {
        warning("force_sms has been deprecated and no longer works")
        force_sms <- FALSE
      }

      result <- NULL
      phone <- private$parse_phone(phone) %||% private$phone
      phone_hash <- private$phone_code_hash[[phone]]

      if (is.null(phone_hash)) {
        tryCatch({
          result <- self$invoke(SendCodeRequest$new(
            phone, self$api_id, self$api_hash, types$CodeSettings()
          ))
        }, error = function(e) {
          if (inherits(e, "AuthRestartError")) {
            if (retry_count > 2) stop(e)
            return(self$send_code_request(phone, force_sms = force_sms, retry_count = retry_count + 1))
          }
          stop(e)
        })

        if (inherits(result, "auth.SentCodeSuccess")) {
          stop("Logged in right after sending the code")
        }

        if (inherits(result$type, "auth.SentCodeTypeSms")) {
          force_sms <- FALSE
        }

        if (!is.null(result$phone_code_hash) && nzchar(result$phone_code_hash)) {
          private$phone_code_hash[[phone]] <- phone_hash <- result$phone_code_hash
        }
      } else {
        force_sms <- TRUE
      }

      private$phone <- phone

      if (force_sms) {
        tryCatch({
          result <- self$invoke(ResendCodeRequest$new(phone, phone_hash))
        }, error = function(e) {
          if (inherits(e, "PhoneCodeExpiredError")) {
            if (retry_count > 2) stop(e)
            private$phone_code_hash[[phone]] <- NULL
            private$log$info("Phone code expired in ResendCodeRequest, requesting a new code")
            return(self$send_code_request(phone, force_sms = FALSE, retry_count = retry_count + 1))
          }
          stop(e)
        })

        if (inherits(result, "auth.SentCodeSuccess")) {
          stop("Logged in right after resending the code")
        }

        private$phone_code_hash[[phone]] <- result$phone_code_hash
      }

      return(result)
    },

    #' @description
    #' Initiates the QR login procedure
    #' @param ignored_ids List of already logged-in user IDs
    #' @return QR login object
    qr_login = function(ignored_ids = NULL) {
      qr_login <- custom$QRLogin$new(self, ignored_ids %||% list())
      qr_login$recreate()
      return(qr_login)
    },

    #' @description
    #' Logs out of Telegram and deletes the current session file
    #' @return TRUE if successful, FALSE otherwise
    log_out = function() {
      tryCatch({
        self$invoke(LogOutRequest$new())
      }, error = function(e) {
        return(FALSE)
      })

      private$mb_entity_cache$set_self_user(NULL, NULL, NULL)
      private$authorized <- FALSE

      self$disconnect()
      self$session$delete()
      self$session <- NULL
      return(TRUE)
    },

    #' @description
    #' Changes the 2FA settings of the logged in user
    #' @param current_password Current password
    #' @param new_password New password to set
    #' @param hint Hint to display when prompting for 2FA
    #' @param email Recovery email address
    #' @param email_code_callback Function to retrieve email verification code
    #' @return TRUE if successful, FALSE otherwise
    edit_2fa = function(current_password = NULL, new_password = NULL,
                         hint = "", email = NULL, email_code_callback = NULL) {
      if (is.null(new_password) && is.null(current_password)) {
        return(FALSE)
      }

      if (!is.null(email) && !is.function(email_code_callback)) {
        stop("Email present without email_code_callback")
      }

      pwd <- self$invoke(GetPasswordRequest$new())
      pwd$new_algo$salt1 <- paste0(pwd$new_algo$salt1, openssl::rand_bytes(32))

      if (!pwd$has_password && !is.null(current_password)) {
        current_password <- NULL
      }

      if (!is.null(current_password)) {
        password <- private$compute_check(pwd, current_password)
      } else {
        password <- types$InputCheckPasswordEmpty()
      }

      if (!is.null(new_password)) {
        new_password_hash <- private$compute_digest(pwd$new_algo, new_password)
      } else {
        new_password_hash <- raw(0)
      }

      tryCatch({
        self$invoke(UpdatePasswordSettingsRequest$new(
          password = password,
          new_settings = types$account$PasswordInputSettings(
            new_algo = pwd$new_algo,
            new_password_hash = new_password_hash,
            hint = hint,
            email = email,
            new_secure_settings = NULL
          )
        ))
      }, error = function(e) {
        if (inherits(e, "EmailUnconfirmedError")) {
          code <- email_code_callback(e$code_length)
          code <- as.character(code)
          self$invoke(ConfirmPasswordEmailRequest$new(code))
        } else {
          stop(e)
        }
      })

      return(TRUE)
    }
  ),

  private = list(
    phone = NULL,
    phone_code_hash = list(),
    tos = NULL,
    authorized = FALSE,

    parse_phone_and_hash = function(phone, phone_hash) {
      phone <- private$parse_phone(phone) %||% private$phone
      if (is.null(phone)) {
        stop("Please make sure to call send_code_request first.")
      }

      phone_hash <- phone_hash %||% private$phone_code_hash[[phone]]
      if (is.null(phone_hash)) {
        stop("You also need to provide a phone_code_hash.")
      }

      return(list(phone, phone_hash))
    },

    on_login = function(user) {
      private$mb_entity_cache$set_self_user(user$id, user$bot, user$access_hash)
      private$authorized <- TRUE

      state <- self$invoke(GetStateRequest$new())
      difference <- self$invoke(GetDifferenceRequest$new(
        pts = state$pts, date = state$date, qts = state$qts
      ))

      if (inherits(difference, "updates.Difference")) {
        state <- difference$state
      } else if (inherits(difference, "updates.DifferenceSlice")) {
        state <- difference$intermediate_state
      } else if (inherits(difference, "updates.DifferenceTooLong")) {
        state$pts <- difference$pts
      }

      private$message_box$load(
        SessionState$new(0, 0, 0, state$pts, state$qts, as.numeric(state$date), state$seq, 0),
        list()
      )

      return(user)
    },

    start_impl = function(phone, password, bot_token, force_sms, code_callback,
                          first_name, last_name, max_attempts) {
      if (!self$is_connected()) {
        self$connect()
      }

      me <- self$get_me()
      if (!is.null(me)) {
        if (!is.null(bot_token)) {
          if (bot_token %>% strsplit(":") %>% `[[`(1) %>% `[`(1) != as.character(me$id)) {
            warning("The session already had an authorized user so it did not login to the bot account using the provided bot_token; if you were expecting a different user, check whether you are accidentally reusing an existing session")
          }
        } else if (!is.null(phone) && !is.function(phone) && private$parse_phone(phone) != me$phone) {
          warning("The session already had an authorized user so it did not login to the user account using the provided phone; if you were expecting a different user, check whether you are accidentally reusing an existing session")
        }

        return(self)
      }

      if (is.null(bot_token)) {
        while (is.function(phone)) {
          value <- phone()

          if (grepl(":", value)) {
            bot_token <- value
            break
          }

          phone <- private$parse_phone(value) %||% phone
        }
      }

      if (!is.null(bot_token)) {
        self$sign_in(bot_token = bot_token)
        return(self)
      }

      me <- NULL
      attempts <- 0
      two_step_detected <- FALSE

      self$send_code_request(phone, force_sms = force_sms)

      while (attempts < max_attempts) {
        tryCatch({
          value <- code_callback()

          if (is.null(value) || !nzchar(value)) {
            stop("PhoneCodeEmptyError")
          }

          me <- self$sign_in(phone, code = value)
          break
        }, error = function(e) {
          if (inherits(e, "SessionPasswordNeededError")) {
            two_step_detected <- TRUE
          } else if (any(c("PhoneCodeEmptyError", "PhoneCodeExpiredError",
                          "PhoneCodeHashEmptyError", "PhoneCodeInvalidError") %in% class(e))) {
            cat("Invalid code. Please try again.\n", file = stderr())
          } else {
            stop(e)
          }
        })

        attempts <- attempts + 1
      }

      if (attempts >= max_attempts && !two_step_detected && is.null(me)) {
        stop(sprintf("%d consecutive sign-in attempts failed. Aborting", max_attempts))
      }

      if (two_step_detected) {
        if (is.null(password)) {
          stop("Two-step verification is enabled for this account. Please provide the 'password' argument to 'start()'.")
        }

        if (is.function(password)) {
          for (i in 1:max_attempts) {
            tryCatch({
              value <- password()
              me <- self$sign_in(phone = phone, password = value)
              break
            }, error = function(e) {
              if (inherits(e, "PasswordHashInvalidError")) {
                cat("Invalid password. Please try again\n", file = stderr())
              } else {
                stop(e)
              }
            })
          }
          if (is.null(me)) {
            stop("PasswordHashInvalidError")
          }
        } else {
          me <- self$sign_in(phone = phone, password = password)
        }
      }

      signed_msg <- "Signed in successfully as "
      name <- private$get_display_name(me)
      tos_msg <- "; remember to not break the ToS or you will risk an account ban!"

      tryCatch({
        cat(signed_msg, name, tos_msg, sep = "")
      }, error = function(e) {
        name_encoded <- iconv(name, "UTF-8", "ASCII", sub = "")
        cat(signed_msg, name_encoded, tos_msg, sep = "")
      })

      return(self)
    },

    parse_phone = function(phone) {
      if (is.null(phone)) return(NULL)
      # Simple phone number parsing logic
      phone <- gsub("[^0-9+]", "", as.character(phone))
      if (nchar(phone) < 5) return(NULL)
      return(phone)
    },

    # Password hashing functions would be implemented here
    compute_check = function(pwd, password) {
      # Implementation would depend on the actual password hashing algorithm
      # This is a placeholder
      return(list(password_hash = digest::digest(paste0(pwd$salt, password, pwd$salt))))
    },

    compute_digest = function(algo, password) {
      # Implementation would depend on the actual password hashing algorithm
      # This is a placeholder
      return(digest::digest(paste0(algo$salt, password, algo$salt), raw = TRUE))
    },

    get_display_name = function(user) {
      if (!is.null(user$first_name)) {
        if (!is.null(user$last_name) && nzchar(user$last_name)) {
          return(paste(user$first_name, user$last_name))
        }
        return(user$first_name)
      }
      return(user$username %||% as.character(user$id))
    }
  )
)
