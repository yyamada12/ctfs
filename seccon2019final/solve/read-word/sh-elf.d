
sh-elf.x:     file format elf32-sh


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	00 00       	.word 0x0000
	...

00000004 <_.xy>:
       4:	00 00       	.word 0x0000
	...

00000008 <_.z>:
       8:	00 00       	.word 0x0000
	...

0000000c <_.frame>:
       c:	00 00       	.word 0x0000
	...

00000010 <_.d1>:
      10:	00 00       	.word 0x0000
	...

00000014 <_.d2>:
      14:	00 00       	.word 0x0000
	...

00000018 <_.d3>:
      18:	00 00       	.word 0x0000
	...

0000001c <_.d4>:
	...

00001af4 <_start>:
    1af4:	61 62       	mov.l	@r6,r1
    1af6:	63 64       	mov.b	@r6+,r3
	...
    1b04:	00 00       	.word 0x0000
    1b06:	1b 08       	mov.l	r0,@(32,r11)

00001b08 <_code>:
    1b08:	df 0d       	mov.l	1b40 <_start_addr>,r15	! 1af4 <_start>

00001b0a <___r_open>:
    1b0a:	d5 0e       	mov.l	1b44 <_fname_addr>,r5	! 1b36 <_fname>
    1b0c:	e6 00       	mov	#0,r6
    1b0e:	e4 05       	mov	#5,r4
    1b10:	c3 22       	trapa	#34
    1b12:	00 09       	nop	

00001b14 <___r_read>:
    1b14:	65 03       	mov	r0,r5
    1b16:	d6 0c       	mov.l	1b48 <_buffer_addr>,r6	! 1b4c <_buffer>
    1b18:	e7 20       	mov	#32,r7
    1b1a:	e4 03       	mov	#3,r4
    1b1c:	c3 22       	trapa	#34
    1b1e:	00 09       	nop	

00001b20 <_save_size>:
    1b20:	68 03       	mov	r0,r8

00001b22 <___r_write>:
    1b22:	e5 01       	mov	#1,r5
    1b24:	d6 08       	mov.l	1b48 <_buffer_addr>,r6	! 1b4c <_buffer>
    1b26:	67 83       	mov	r8,r7
    1b28:	e4 04       	mov	#4,r4
    1b2a:	c3 22       	trapa	#34
    1b2c:	00 09       	nop	

00001b2e <___r_exit>:
    1b2e:	e5 00       	mov	#0,r5
    1b30:	e4 01       	mov	#1,r4
    1b32:	c3 22       	trapa	#34
    1b34:	00 09       	nop	

00001b36 <_fname>:
    1b36:	77 6f       	add	#111,r7
    1b38:	72 64       	add	#100,r2
    1b3a:	2e 74       	mov.b	r7,@-r14
    1b3c:	78 74       	add	#116,r8
	...

00001b40 <_start_addr>:
    1b40:	00 00       	.word 0x0000
    1b42:	1a f4       	mov.l	r15,@(16,r10)

00001b44 <_fname_addr>:
    1b44:	00 00       	.word 0x0000
    1b46:	1b 36       	mov.l	r3,@(24,r11)

00001b48 <_buffer_addr>:
    1b48:	00 00       	.word 0x0000
    1b4a:	1b 4c       	mov.l	r4,@(48,r11)

00001b4c <_buffer>:
	...
