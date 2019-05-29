import struct
import gzip
import tarfile

with open('hex.txt', 'r') as f:
    lines = f.readlines()

# with open('flag.gz', 'wb') as f:
#     for line in lines:
#         for hex in line.split():
#             f.write(struct.pack('B', int(hex, 8)))
# with gzip.open('flag.gz', 'rb') as rf:
#     with open('flag.tar', 'wb') as wf:
#         wf.write(rf.read())
# with tarfile.open("flag.tar") as f:
#     f.extractall()

with open('flag.tar.gz', 'wb') as f:
    for line in lines:
        for hex in line.split():
            f.write(struct.pack('B', int(hex, 8)))
with tarfile.open("flag.tar.gz") as f:
    f.extractall()