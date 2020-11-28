
arm16-elf.x:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	00000000 	.word	0x00000000

00000004 <_.xy>:
       4:	00000000 	.word	0x00000000

00000008 <_.z>:
       8:	00000000 	.word	0x00000000

0000000c <_.frame>:
       c:	00000000 	.word	0x00000000

00000010 <_.d1>:
      10:	00000000 	.word	0x00000000

00000014 <_.d2>:
      14:	00000000 	.word	0x00000000

00000018 <_.d3>:
      18:	00000000 	.word	0x00000000

0000001c <_.d4>:
	...

00001af8 <_start>:
    1af8:	61626364 	.word	0x61626364
	...
    1b08:	00001b0d 	.word	0x00001b0d

00001b0c <_code>:
    1b0c:	4816      	ldr	r0, [pc, #88]	; (1b68 <_start_addr>)
    1b0e:	4685      	mov	sp, r0

00001b10 <__open>:
    1b10:	4816      	ldr	r0, [pc, #88]	; (1b6c <_fname_addr>)
    1b12:	2100      	movs	r1, #0
    1b14:	df66      	svc	102	; 0x66

00001b16 <__read>:
    1b16:	4917      	ldr	r1, [pc, #92]	; (1b74 <_buffer_addr>)
    1b18:	2210      	movs	r2, #16
    1b1a:	df6a      	svc	106	; 0x6a

00001b1c <_save_size>:
    1b1c:	1c03      	adds	r3, r0, #0

00001b1e <__kopen>:
    1b1e:	4814      	ldr	r0, [pc, #80]	; (1b70 <_kname_addr>)
    1b20:	2100      	movs	r1, #0
    1b22:	df66      	svc	102	; 0x66

00001b24 <__kread>:
    1b24:	4914      	ldr	r1, [pc, #80]	; (1b78 <_kbuffer_addr>)
    1b26:	1c1a      	adds	r2, r3, #0
    1b28:	df6a      	svc	106	; 0x6a

00001b2a <_exchange>:
    1b2a:	4812      	ldr	r0, [pc, #72]	; (1b74 <_buffer_addr>)
    1b2c:	4912      	ldr	r1, [pc, #72]	; (1b78 <_kbuffer_addr>)
    1b2e:	2200      	movs	r2, #0
    1b30:	5c84      	ldrb	r4, [r0, r2]
    1b32:	5c8d      	ldrb	r5, [r1, r2]
    1b34:	406c      	eors	r4, r5
    1b36:	5484      	strb	r4, [r0, r2]
    1b38:	3201      	adds	r2, #1
    1b3a:	429a      	cmp	r2, r3
    1b3c:	d1f8      	bne.n	1b30 <_exchange+0x6>

00001b3e <__write>:
    1b3e:	2001      	movs	r0, #1
    1b40:	490c      	ldr	r1, [pc, #48]	; (1b74 <_buffer_addr>)
    1b42:	1c1a      	adds	r2, r3, #0
    1b44:	df69      	svc	105	; 0x69

00001b46 <__kwrite>:
    1b46:	2001      	movs	r0, #1
    1b48:	490b      	ldr	r1, [pc, #44]	; (1b78 <_kbuffer_addr>)
    1b4a:	1c1a      	adds	r2, r3, #0
    1b4c:	df69      	svc	105	; 0x69

00001b4e <__exit>:
    1b4e:	2000      	movs	r0, #0
    1b50:	df11      	svc	17

00001b52 <_fname>:
    1b52:	6170      	.short	0x6170
    1b54:	6f777373 	.word	0x6f777373
    1b58:	742e6472 	.word	0x742e6472
    1b5c:	7478      	.short	0x7478
	...

00001b5f <_kname>:
    1b5f:	6b          	.byte	0x6b
    1b60:	622e7965 	.word	0x622e7965
    1b64:	6e69      	.short	0x6e69
	...

00001b68 <_start_addr>:
    1b68:	00001af8 	.word	0x00001af8

00001b6c <_fname_addr>:
    1b6c:	00001b52 	.word	0x00001b52

00001b70 <_kname_addr>:
    1b70:	00001b5f 	.word	0x00001b5f

00001b74 <_buffer_addr>:
    1b74:	00001b7c 	.word	0x00001b7c

00001b78 <_kbuffer_addr>:
    1b78:	00001b8c 	.word	0x00001b8c

00001b7c <_buffer>:
	...

00001b8c <_kbuffer>:
	...
