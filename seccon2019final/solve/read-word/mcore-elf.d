
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
    1b00:	1b0c      	lsl	r12, r0
	...

00001b04 <_addr>:
    1b04:	1b30      	lsl	r0, r3
	...

00001b08 <_buffer_addr>:
    1b08:	1b3c      	lsl	r12, r3
	...

00001b0c <_code>:
    1b0c:	2570      	subi	r0, 24
    1b0e:	2130      	addi	r0, 20

00001b10 <__open>:
    1b10:	8200      	ld	r2, (r0, 0)
    1b12:	6003      	movi	r3, 0
    1b14:	6051      	movi	r1, 5
    1b16:	0009      	trap	1

00001b18 <__read>:
    1b18:	8310      	ld	r3, (r0, 4)
    1b1a:	6204      	movi	r4, 32
    1b1c:	6031      	movi	r1, 3
    1b1e:	0009      	trap	1

00001b20 <_save_size>:
    1b20:	1225      	mov	r5, r2

00001b22 <__write>:
    1b22:	6012      	movi	r2, 1
    1b24:	8310      	ld	r3, (r0, 4)
    1b26:	1254      	mov	r4, r5
    1b28:	6041      	movi	r1, 4
    1b2a:	0009      	trap	1

00001b2c <__exit>:
    1b2c:	6002      	movi	r2, 0
    1b2e:	5000      	.short 0x5000

00001b30 <_fname>:
    1b30:	6f77      	.short 0x6f77
    1b32:	6472      	movi	r2, 71
    1b34:	742e      	lrwAddress 0x00001b34 is out of bounds.

    1b36:	7478      	lrwAddress 0x00001b36 is out of bounds.

    1b38:	0000      	bkpt
	...

00001b3c <_buffer>:
	...
