
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
    1b12:	79 00 1b 50 	mov.w	#0x1b50,r0
    1b16:	79 01 00 00 	mov.w	#0x0,r1
    1b1a:	6d f1       	mov.w	r1,@-r7
    1b1c:	1b 87       	subs	#2,r7
    1b1e:	5e 00 00 c5 	jsr	@0xc5:24
    1b22:	0b 87       	adds	#2,r7
    1b24:	0b 87       	adds	#2,r7

00001b26 <___read>:
    1b26:	79 01 1b 5c 	mov.w	#0x1b5c,r1
    1b2a:	79 02 00 20 	mov.w	#0x20,r2
    1b2e:	5e 00 00 c6 	jsr	@0xc6:24

00001b32 <_save_size>:
    1b32:	0d 03       	mov.w	r0,r3

00001b34 <___write>:
    1b34:	79 00 00 01 	mov.w	#0x1,r0
    1b38:	79 01 1b 5c 	mov.w	#0x1b5c,r1
    1b3c:	0d 32       	mov.w	r3,r2
    1b3e:	5e 00 00 c7 	jsr	@0xc7:24

00001b42 <___exit>:
    1b42:	79 00 00 00 	mov.w	#0x0,r0
    1b46:	79 01 de ad 	mov.w	#0xdead,r1
    1b4a:	79 02 be ef 	mov.w	#0xbeef,r2
    1b4e:	01 80       	sleep	

00001b50 <_fname>:
    1b50:	77 6f       	bld	#0x6,r7l
    1b52:	72 64       	bclr	#0x6,r4h
    1b54:	2e 74       	mov.b	@0x74:8,r6l
    1b56:	78 74       	.word	H'78,H'74
    1b58:	00 00       	nop	
	...

00001b5c <_buffer>:
	...
