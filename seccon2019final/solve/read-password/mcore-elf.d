
mcore-elf.x:     file format elf32-mcore-little


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	0000      	bkpt
	...

00000004 <_.xy>:
       4:	0000      	bkpt
	...

00000008 <_.z>:
       8:	0000      	bkpt
	...

0000000c <_.frame>:
       c:	0000      	bkpt
	...

00000010 <_.d1>:
      10:	0000      	bkpt
	...

00000014 <_.d2>:
      14:	0000      	bkpt
	...

00000018 <_.d3>:
      18:	0000      	bkpt
	...

0000001c <_.d4>:
	...

00001af0 <_start>:
    1af0:	6364      	movi	r4, 54
    1af2:	6162      	movi	r2, 22
	...
    1b00:	1b14      	lsl	r4, r1
	...

00001b04 <_addr>:
    1b04:	1b6a      	lsl	r10, r6
	...

00001b08 <_kname_addr>:
    1b08:	1b77      	lsl	r7, r7
	...

00001b0c <_buffer_addr>:
    1b0c:	1b80      	lsl	r0, r8
	...

00001b10 <_kbuffer_addr>:
    1b10:	1b90      	lsl	r0, r9
	...

00001b14 <_code>:
    1b14:	2570      	subi	r0, 24
    1b16:	2130      	addi	r0, 20

00001b18 <__open>:
    1b18:	8200      	ld	r2, (r0, 0)
    1b1a:	6003      	movi	r3, 0
    1b1c:	6051      	movi	r1, 5
    1b1e:	0009      	trap	1

00001b20 <__read>:
    1b20:	8320      	ld	r3, (r0, 8)
    1b22:	6104      	movi	r4, 16
    1b24:	6031      	movi	r1, 3
    1b26:	0009      	trap	1

00001b28 <_save_size>:
    1b28:	1225      	mov	r5, r2

00001b2a <__kopen>:
    1b2a:	8210      	ld	r2, (r0, 4)
    1b2c:	6003      	movi	r3, 0
    1b2e:	6051      	movi	r1, 5
    1b30:	0009      	trap	1

00001b32 <__kread>:
    1b32:	8330      	ld	r3, (r0, 12)
    1b34:	1254      	mov	r4, r5
    1b36:	6031      	movi	r1, 3
    1b38:	0009      	trap	1

00001b3a <_exchange>:
    1b3a:	8120      	ld	r1, (r0, 8)
    1b3c:	8230      	ld	r2, (r0, 12)
    1b3e:	1216      	mov	r6, r1
    1b40:	1c56      	addu	r6, r5
    1b42:	a301      	ldb	r3, (r1, 0)
    1b44:	a402      	ldb	r4, (r2, 0)
    1b46:	1743      	xor	r3, r4
    1b48:	b301      	stb	r3, (r1, 0)
    1b4a:	2001      	addi	r1, 1
    1b4c:	2002      	addi	r2, 1
    1b4e:	0f61      	cmpne	r1, r6
    1b50:	e7f8      	bt	0x1b42

00001b52 <__write>:
    1b52:	6012      	movi	r2, 1
    1b54:	8320      	ld	r3, (r0, 8)
    1b56:	1254      	mov	r4, r5
    1b58:	6041      	movi	r1, 4
    1b5a:	0009      	trap	1

00001b5c <__kwrite>:
    1b5c:	6012      	movi	r2, 1
    1b5e:	8330      	ld	r3, (r0, 12)
    1b60:	1254      	mov	r4, r5
    1b62:	6041      	movi	r1, 4
    1b64:	0009      	trap	1

00001b66 <__exit>:
    1b66:	6002      	movi	r2, 0
    1b68:	5000      	.short 0x5000

00001b6a <_fname>:
    1b6a:	6170      	movi	r0, 23
    1b6c:	7373      	lrwAddress 0x00001b6c is out of bounds.

    1b6e:	6f77      	.short 0x6f77
    1b70:	6472      	movi	r2, 71
    1b72:	742e      	lrwAddress 0x00001b72 is out of bounds.

    1b74:	7478      	lrwAddress 0x00001b74 is out of bounds.

	...

00001b77 <_kname>:
    1b77:	656b      	movi	r11, 86
    1b79:	2e79      	andi	r9, 7
    1b7b:	6962      	.short 0x6962
    1b7d:	006e      	ldm	r14-r15, (r0)
	...

00001b80 <_buffer>:
	...

00001b90 <_kbuffer>:
	...
