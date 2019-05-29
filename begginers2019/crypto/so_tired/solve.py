import base64
import zlib

encrypted = open('encrypted.txt').read().encode()
while True:
    try:
        encrypted = zlib.decompress(base64.b64decode(encrypted))
    except:
        print(encrypted)
        break