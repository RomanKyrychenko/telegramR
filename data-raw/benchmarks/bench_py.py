import os, sys, json, timeit, statistics, struct
from telethon.extensions import BinaryReader
from telethon.crypto import AES, AuthKey, Factorization
from telethon.network.mtprotostate import MTProtoState
from telethon.tl import types as T
from telethon.tl.functions.messages import GetHistoryRequest
import telethon.crypto.aes as aesmod
FX = sys.argv[1]
res = {}
def bench(name, fn, n=None):
    fn()
    t = timeit.Timer(fn)
    if n is None:
        n, _ = t.autorange(); n = max(n, 3)
    runs = [t.timeit(n)/n for _ in range(7)]
    res[name] = statistics.median(runs)
    print(f"{name:40s} {res[name]*1e6:12.2f} us")
for n in (1, 10, 100):
    b = open(f"{FX}/channel_messages_{n}.bin","rb").read()
    bench(f"decode ChannelMessages n={n}", lambda b=b: BinaryReader(b).tgread_object())
obj = BinaryReader(open(f"{FX}/channel_messages_100.bin","rb").read()).tgread_object()
bench("encode ChannelMessages n=100", lambda: bytes(obj))
req = GetHistoryRequest(peer=T.InputPeerChannel(1234567890, 987654321), offset_id=0, offset_date=None, add_offset=0, limit=100, max_id=0, min_id=0, hash=0)
bench("encode GetHistoryRequest", lambda: bytes(req))
key, iv = os.urandom(32), os.urandom(32)
for sz in (1024, 131072, 1048576):
    d = os.urandom(sz)
    bench(f"AES-IGE encrypt {sz//1024}KB", lambda d=d: AES.encrypt_ige(d, key, iv))
    c = AES.encrypt_ige(d, key, iv)
    bench(f"AES-IGE decrypt {sz//1024}KB", lambda c=c: AES.decrypt_ige(c, key, iv))
st = MTProtoState(AuthKey(os.urandom(256)), loggers={"telethon.network.mtprotostate": __import__("logging").getLogger("x")} )
for sz in (1024, 131072):
    d = os.urandom(sz)
    bench(f"MTProto encrypt_message_data {sz//1024}KB", lambda d=d: st.encrypt_message_data(d))
bench("factorize pq (64-bit)", lambda: Factorization.factorize(1724114033281923457))
print("cryptg backend:", aesmod.cryptg is not None)
json.dump(res, open(sys.argv[2], "w"))
