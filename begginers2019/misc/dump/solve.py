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
    
    import os
    
    def is_within_directory(directory, target):
        
        abs_directory = os.path.abspath(directory)
        abs_target = os.path.abspath(target)
    
        prefix = os.path.commonprefix([abs_directory, abs_target])
        
        return prefix == abs_directory
    
    def safe_extract(tar, path=".", members=None, *, numeric_owner=False):
    
        for member in tar.getmembers():
            member_path = os.path.join(path, member.name)
            if not is_within_directory(path, member_path):
                raise Exception("Attempted Path Traversal in Tar File")
    
        tar.extractall(path, members, numeric_owner=numeric_owner) 
        
    
    safe_extract(f)