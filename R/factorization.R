#' @title R6 Class Representing Factorization
#' @description
#' Provides methods to factorize large integers quickly using Pollard's Rho algorithm.
#' @details
#' This class implements the Pollard's Rho-Brent Integer Factorization algorithm
#' to efficiently factorize large integers into their prime components.
#' @export
Factorization <- R6::R6Class(
  "Factorization",
  public = list(

    #' @description
    #' Factorizes the given large integer.
    #'
    #' @details
    #' Implementation based on Pollard's Rho-Brent Integer Factorization algorithm.
    #'
    #' @param pq An integer representing the product of two primes.
    #' @return A numeric vector containing the two factors `p` and `q`.
    #' @examples
    #' factorizer <- Factorization$new()
    #' factorizer$factorize(15) # Returns c(3, 5)
    factorize = function(pq) {
      if (gmp::mod.bigz(pq, 2) == 0) {
        return(list(p = 2, q = gmp::divq.bigz(pq, 2)))
      }

      y <- raster::sampleInt(as.numeric(pq - 1), 1)
      c <- raster::sampleInt(as.numeric(pq - 1), 1)
      m <- raster::sampleInt(as.numeric(pq - 1), 1)
      g <- r <- q <- 1
      x <- ys <- 0

      while (g == 1) {
        x <- y
        for (i in seq_len(r)) {
          y <- gmp::mod.bigz((y^2 + c), pq)
        }

        k <- 0
        while (k < r && g == 1) {
          ys <- y
          for (i in seq_len(min(m, r - k))) {
            y <- gmp::mod.bigz((y^2 + c), pq)
            q <- gmp::mod.bigz((q * abs(x - y)), pq)
          }
          g <- self$gcd(q, pq)
          k <- k + m
        }
        r <- r * 2
      }

      if (g == pq) {
        repeat {
          ys <- gmp::mod.bigz((ys^2 + c), pq)
          g <- self$gcd(abs(x - ys), pq)
          if (g > 1) {
            break
          }
        }
      }

      p <- g
      q <- pq %/% g
      return(if (p < q) list(p = p, q = q) else list(p = q, q = p))
    },

    #' @description
    #' Calculates the Greatest Common Divisor (GCD).
    #'
    #' @param a An integer.
    #' @param b Another integer.
    #' @return The GCD of `a` and `b`.
    #' @examples
    #' factorizer <- Factorization$new()
    #' factorizer$gcd(12, 8) # Returns 4
    gcd = function(a, b) {
      while (b != 0) {
        temp <- b
        b <- a %% b
        a <- temp
      }
      return(a)
    }
  )
)
