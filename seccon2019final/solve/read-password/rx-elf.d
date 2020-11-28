
rx-elf.x:     file format elf32-rx-le


Disassembly of section .text:

00001af4 <_start>:
    1af4:	64 63                         	and	#6, r3
    1af6:	62 61                         	add	#6, r1
	...
    1b08:	0c                            	bra.s	1b0c <_code>
    1b09:	1b                            	bne.s	1b0c <_code>
	...

00001b0c <_code>:
    1b0c:	fb 02 f4 1a 00 00             	mov.l	#0x1af4, r0

00001b12 <___open>:
    1b12:	fb 12 95 1b 00 00             	mov.l	#0x1b95, r1
    1b18:	3e 01 00                      	mov.l	#0, 4[r0]
    1b1b:	3e 02 00                      	mov.l	#0, 8[r0]
    1b1e:	66 25                         	mov.l	#2, r5
    1b20:	75 60 ff                      	int #255

00001b23 <___read>:
    1b23:	fb 22 aa 1b 00 00             	mov.l	#0x1baa, r2
    1b29:	75 43 10                      	mov.l	#16, r3
    1b2c:	66 45                         	mov.l	#4, r5
    1b2e:	75 60 ff                      	int #255

00001b31 <_save_size>:
    1b31:	ef 14                         	mov.l	r1, r4

00001b33 <___kopen>:
    1b33:	fb 12 a2 1b 00 00             	mov.l	#0x1ba2, r1
    1b39:	3e 01 00                      	mov.l	#0, 4[r0]
    1b3c:	3e 02 00                      	mov.l	#0, 8[r0]
    1b3f:	66 25                         	mov.l	#2, r5
    1b41:	75 60 ff                      	int #255

00001b44 <___kread>:
    1b44:	fb 22 ba 1b 00 00             	mov.l	#0x1bba, r2
    1b4a:	ef 43                         	mov.l	r4, r3
    1b4c:	66 45                         	mov.l	#4, r5
    1b4e:	75 60 ff                      	int #255

00001b51 <_exchange>:
    1b51:	fb 12 aa 1b 00 00             	mov.l	#0x1baa, r1
    1b57:	fb 22 ba 1b 00 00             	mov.l	#0x1bba, r2
    1b5d:	ef 13                         	mov.l	r1, r3
    1b5f:	4b 43                         	add	r4, r3
    1b61:	cc 15                         	mov.b	[r1], r5
    1b63:	fd 28 26                      	mov.b	[r2+], r6
    1b66:	fc 37 65                      	xor	r6, r5
    1b69:	fd 20 15                      	mov.b	r5, [r1+]
    1b6c:	47 13                         	cmp	r1, r3
    1b6e:	21 f3                         	bne.b	1b61 <_exchange+0x10>

00001b70 <___write>:
    1b70:	66 11                         	mov.l	#1, r1
    1b72:	fb 22 aa 1b 00 00             	mov.l	#0x1baa, r2
    1b78:	ef 43                         	mov.l	r4, r3
    1b7a:	66 55                         	mov.l	#5, r5
    1b7c:	75 60 ff                      	int #255

00001b7f <___kwrite>:
    1b7f:	66 11                         	mov.l	#1, r1
    1b81:	fb 22 ba 1b 00 00             	mov.l	#0x1bba, r2
    1b87:	ef 43                         	mov.l	r4, r3
    1b89:	66 55                         	mov.l	#5, r5
    1b8b:	75 60 ff                      	int #255

00001b8e <___exit>:
    1b8e:	66 01                         	mov.l	#0, r1
    1b90:	66 15                         	mov.l	#1, r5
    1b92:	75 60 ff                      	int #255

00001b95 <_fname>:
    1b95:	70 61 73 73 77 6f             	add	#0x6f777373, r6, r1
    1b9b:	72 64 2e 74                   	add	#0x742e, r6, r4
    1b9f:	78 74                         	bset	#7, r4
	...

00001ba2 <_kname>:
    1ba2:	6b 65                         	shar	#22, r5
    1ba4:	79 2e                         	bset	#18, r14
    1ba6:	62 69                         	add	#6, r9
    1ba8:	6e 00                         	pushm	r0-r0

00001baa <_buffer>:
	...

00001bba <_kbuffer>:
	...

Disassembly of section P:

00001bca <_erodata-0x1af4>:
	...
