
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
    1b08:	df 1e       	mov.l	1b84 <_start_addr>,r15	! 1af4 <_start>

00001b0a <___r_open>:
    1b0a:	d5 1f       	mov.l	1b88 <_fname_addr>,r5	! 1b6e <_fname>
    1b0c:	e6 00       	mov	#0,r6
    1b0e:	e4 05       	mov	#5,r4
    1b10:	c3 22       	trapa	#34
    1b12:	00 09       	nop	

00001b14 <___r_read>:
    1b14:	65 03       	mov	r0,r5
    1b16:	d6 1e       	mov.l	1b90 <_buffer_addr>,r6	! 1b98 <_buffer>
    1b18:	e7 10       	mov	#16,r7
    1b1a:	e4 03       	mov	#3,r4
    1b1c:	c3 22       	trapa	#34
    1b1e:	00 09       	nop	

00001b20 <_save_size>:
    1b20:	68 03       	mov	r0,r8

00001b22 <___r_kopen>:
    1b22:	d5 1a       	mov.l	1b8c <_kname_addr>,r5	! 1b7b <_kname>
    1b24:	e6 00       	mov	#0,r6
    1b26:	e4 05       	mov	#5,r4
    1b28:	c3 22       	trapa	#34
    1b2a:	00 09       	nop	

00001b2c <___r_kread>:
    1b2c:	65 03       	mov	r0,r5
    1b2e:	d6 19       	mov.l	1b94 <_kbuffer_addr>,r6	! 1ba8 <_kbuffer>
    1b30:	67 83       	mov	r8,r7
    1b32:	e4 03       	mov	#3,r4
    1b34:	c3 22       	trapa	#34
    1b36:	00 09       	nop	

00001b38 <_exchange>:
    1b38:	d4 15       	mov.l	1b90 <_buffer_addr>,r4	! 1b98 <_buffer>
    1b3a:	d5 16       	mov.l	1b94 <_kbuffer_addr>,r5	! 1ba8 <_kbuffer>
    1b3c:	60 43       	mov	r4,r0
    1b3e:	30 8c       	add	r8,r0
    1b40:	66 40       	mov.b	@r4,r6
    1b42:	67 54       	mov.b	@r5+,r7
    1b44:	26 7a       	xor	r7,r6
    1b46:	24 60       	mov.b	r6,@r4
    1b48:	74 01       	add	#1,r4
    1b4a:	30 40       	cmp/eq	r4,r0
    1b4c:	8b f8       	bf	1b40 <_exchange+0x8>

00001b4e <___r_write>:
    1b4e:	e5 01       	mov	#1,r5
    1b50:	d6 0f       	mov.l	1b90 <_buffer_addr>,r6	! 1b98 <_buffer>
    1b52:	67 83       	mov	r8,r7
    1b54:	e4 04       	mov	#4,r4
    1b56:	c3 22       	trapa	#34
    1b58:	00 09       	nop	

00001b5a <___r_kwrite>:
    1b5a:	e5 01       	mov	#1,r5
    1b5c:	d6 0d       	mov.l	1b94 <_kbuffer_addr>,r6	! 1ba8 <_kbuffer>
    1b5e:	67 83       	mov	r8,r7
    1b60:	e4 04       	mov	#4,r4
    1b62:	c3 22       	trapa	#34
    1b64:	00 09       	nop	

00001b66 <___r_exit>:
    1b66:	e5 00       	mov	#0,r5
    1b68:	e4 01       	mov	#1,r4
    1b6a:	c3 22       	trapa	#34
    1b6c:	00 09       	nop	

00001b6e <_fname>:
    1b6e:	70 61       	add	#97,r0
    1b70:	73 73       	add	#115,r3
    1b72:	77 6f       	add	#111,r7
    1b74:	72 64       	add	#100,r2
    1b76:	2e 74       	mov.b	r7,@-r14
    1b78:	78 74       	add	#116,r8
	...

00001b7b <_kname>:
    1b7b:	6b 65       	mov.w	@r6+,r11
    1b7d:	79 2e       	add	#46,r9
    1b7f:	62 69       	swap.w	r6,r2
    1b81:	6e 00       	mov.b	@r0,r14
	...

00001b84 <_start_addr>:
    1b84:	00 00       	.word 0x0000
    1b86:	1a f4       	mov.l	r15,@(16,r10)

00001b88 <_fname_addr>:
    1b88:	00 00       	.word 0x0000
    1b8a:	1b 6e       	mov.l	r6,@(56,r11)

00001b8c <_kname_addr>:
    1b8c:	00 00       	.word 0x0000
    1b8e:	1b 7b       	mov.l	r7,@(44,r11)

00001b90 <_buffer_addr>:
    1b90:	00 00       	.word 0x0000
    1b92:	1b 98       	mov.l	r9,@(32,r11)

00001b94 <_kbuffer_addr>:
    1b94:	00 00       	.word 0x0000
    1b96:	1b a8       	mov.l	r10,@(32,r11)

00001b98 <_buffer>:
	...

00001ba8 <_kbuffer>:
	...
