
h8300-elf.x:     file format elf32-h8300


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	00 00       	nop	
	...

00000004 <_.xy>:
       4:	00 00       	nop	
	...

00000008 <_.z>:
       8:	00 00       	nop	
	...

0000000c <_.frame>:
       c:	00 00       	nop	
	...

00000010 <_.d1>:
      10:	00 00       	nop	
	...

00000014 <_.d2>:
      14:	00 00       	nop	
	...

00000018 <_.d3>:
      18:	00 00       	nop	
	...

0000001c <_.d4>:
	...

00001afc <_start>:
    1afc:	61 62       	bnot	r6h,r2h
    1afe:	63 64       	btst	r6h,r4h
	...
    1b0c:	1b 0e       	subs	#1,r6

00001b0e <_code>:
    1b0e:	79 07 1a fc 	mov.w	#0x1afc,r7

00001b12 <___open>:
    1b12:	79 00 1b 96 	mov.w	#0x1b96,r0
    1b16:	79 01 00 00 	mov.w	#0x0,r1
    1b1a:	6d f1       	mov.w	r1,@-r7
    1b1c:	1b 87       	subs	#2,r7
    1b1e:	5e 00 00 c5 	jsr	@0xc5:24
    1b22:	0b 87       	adds	#2,r7
    1b24:	0b 87       	adds	#2,r7

00001b26 <___read>:
    1b26:	79 01 1b ac 	mov.w	#0x1bac,r1
    1b2a:	79 02 00 10 	mov.w	#0x10,r2
    1b2e:	5e 00 00 c6 	jsr	@0xc6:24

00001b32 <_save_size>:
    1b32:	0d 03       	mov.w	r0,r3

00001b34 <___kopen>:
    1b34:	79 00 1b a3 	mov.w	#0x1ba3,r0
    1b38:	79 01 00 00 	mov.w	#0x0,r1
    1b3c:	6d f1       	mov.w	r1,@-r7
    1b3e:	1b 87       	subs	#2,r7
    1b40:	5e 00 00 c5 	jsr	@0xc5:24
    1b44:	0b 87       	adds	#2,r7
    1b46:	0b 87       	adds	#2,r7

00001b48 <___kread>:
    1b48:	79 01 1b bc 	mov.w	#0x1bbc,r1
    1b4c:	0d 32       	mov.w	r3,r2
    1b4e:	5e 00 00 c6 	jsr	@0xc6:24

00001b52 <_exchange>:
    1b52:	79 00 1b ac 	mov.w	#0x1bac,r0
    1b56:	79 01 1b bc 	mov.w	#0x1bbc,r1
    1b5a:	0d 02       	mov.w	r0,r2
    1b5c:	09 32       	add.w	r3,r2

00001b5e <.L11>:
    1b5e:	68 0c       	mov.b	@r0,r4l
    1b60:	6c 1d       	mov.b	@r1+,r5l
    1b62:	15 dc       	xor.b	r5l,r4l
    1b64:	68 8c       	mov.b	r4l,@r0
    1b66:	0b 00       	adds	#1,r0
    1b68:	1d 02       	cmp.w	r0,r2
    1b6a:	46 f2       	bne	.-14 (0x1b5e)

00001b6c <___write>:
    1b6c:	79 00 00 01 	mov.w	#0x1,r0
    1b70:	79 01 1b ac 	mov.w	#0x1bac,r1
    1b74:	0d 32       	mov.w	r3,r2
    1b76:	5e 00 00 c7 	jsr	@0xc7:24

00001b7a <___kwrite>:
    1b7a:	79 00 00 01 	mov.w	#0x1,r0
    1b7e:	79 01 1b bc 	mov.w	#0x1bbc,r1
    1b82:	0d 32       	mov.w	r3,r2
    1b84:	5e 00 00 c7 	jsr	@0xc7:24

00001b88 <___exit>:
    1b88:	79 00 00 00 	mov.w	#0x0,r0
    1b8c:	79 01 de ad 	mov.w	#0xdead,r1
    1b90:	79 02 be ef 	mov.w	#0xbeef,r2
    1b94:	01 80       	sleep	

00001b96 <_fname>:
    1b96:	70 61       	bset	#0x6,r1h
    1b98:	73 73       	btst	#0x7,r3h
    1b9a:	77 6f       	bld	#0x6,r7l
    1b9c:	72 64       	bclr	#0x6,r4h
    1b9e:	2e 74       	mov.b	@0x74:8,r6l
    1ba0:	78 74       	.word	H'78,H'74
	...

00001ba3 <_kname>:
    1ba3:	6b 65       	.word	H'6b,H'65
    1ba5:	79 2e 62 69 	cmp.w	#0x6269,e6
    1ba9:	6e 00 00 00 	mov.b	@(0x6269:16,r0),r0h

00001bac <_buffer>:
	...

00001bbc <_kbuffer>:
	...
