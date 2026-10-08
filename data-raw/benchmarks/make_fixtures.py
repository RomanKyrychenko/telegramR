import datetime as dt, random, json, sys, os
from telethon.tl import types as T
from telethon.tl.functions.messages import GetHistoryRequest
random.seed(42)
OUT = sys.argv[1]
base = dt.datetime(2026, 1, 1, tzinfo=dt.timezone.utc)
CH = 1234567890

def photo(i):
    return T.MessageMediaPhoto(photo=T.Photo(id=10**15+i, access_hash=-(10**15)-i, file_reference=os.urandom(20),
        date=base, sizes=[T.PhotoSize(type='m', w=320, h=240, size=12345), T.PhotoSize(type='x', w=800, h=600, size=65432)], dc_id=2))

def msg(i, kind):
    text = f"Message {i}: " + " ".join(random.choice(["привіт","news","update","дані","report","link"]) for _ in range(random.randint(5,40)))
    ents = [T.MessageEntityBold(offset=0, length=7), T.MessageEntityUrl(offset=8, length=3)]
    reacts = T.MessageReactions(results=[T.ReactionCount(reaction=T.ReactionEmoji(emoticon=e), count=random.randint(1,500)) for e in ["👍","❤","🔥"][:random.randint(1,3)]])
    return T.Message(id=100000+i, peer_id=T.PeerChannel(CH), date=base+dt.timedelta(minutes=i), message=text,
        out=False, post=True, from_id=None, entities=ents, views=random.randint(100,100000), forwards=random.randint(0,500),
        replies=T.MessageReplies(replies=random.randint(0,50), replies_pts=i), edit_date=base+dt.timedelta(minutes=i+5) if i%3==0 else None,
        post_author="Editor" if i%2 else None, media=photo(i) if kind=="photo" else None, reactions=reacts)

def channel_messages(n):
    msgs = [msg(i, "photo" if i%4==0 else "text") for i in range(n)]
    chats = [T.Channel(id=CH, title="Test channel", photo=T.ChatPhotoEmpty(), date=base, access_hash=987654321, username="testchan", broadcast=True)]
    users = [T.User(id=500+i, access_hash=1000+i, first_name=f"User{i}", username=f"user{i}") for i in range(10)]
    return T.messages.ChannelMessages(pts=1, count=n*10, messages=msgs, topics=[], chats=chats, users=users)

truth = {}
for n in (1, 10, 100):
    obj = channel_messages(n)
    b = bytes(obj)
    open(f"{OUT}/channel_messages_{n}.bin","wb").write(b)
    truth[n] = [{"id": m.id, "date": int(m.date.timestamp()), "message": m.message, "views": m.views, "forwards": m.forwards,
                 "replies": m.replies.replies, "reactions": sum(r.count for r in m.reactions.results),
                 "has_photo": m.media is not None, "post_author": m.post_author} for m in obj.messages]
    print(n, len(b), "bytes")
json.dump(truth, open(f"{OUT}/truth.json","w"), ensure_ascii=False)
