
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
    1b0c:	4809      	ldr	r0, [pc, #36]	; (1b34 <_start_addr>)
    1b0e:	4685      	mov	sp, r0

00001b10 <__open>:
    1b10:	4809      	ldr	r0, [pc, #36]	; (1b38 <_fname_addr>)
    1b12:	2100      	movs	r1, #0
    1b14:	df66      	svc	102	; 0x66

00001b16 <__read>:
    1b16:	4909      	ldr	r1, [pc, #36]	; (1b3c <_buffer_addr>)
    1b18:	2220      	movs	r2, #32
    1b1a:	df6a      	svc	106	; 0x6a

00001b1c <_save_size>:
    1b1c:	1c03      	adds	r3, r0, #0

00001b1e <__write>:
    1b1e:	2001      	movs	r0, #1
    1b20:	4906      	ldr	r1, [pc, #24]	; (1b3c <_buffer_addr>)
    1b22:	1c1a      	adds	r2, r3, #0
    1b24:	df69      	svc	105	; 0x69

00001b26 <__exit>:
    1b26:	2000      	movs	r0, #0
    1b28:	df11      	svc	17

00001b2a <_fname>:
    1b2a:	6f77      	.short	0x6f77
    1b2c:	742e6472 	.word	0x742e6472
    1b30:	7478      	.short	0x7478
	...

00001b34 <_start_addr>:
    1b34:	00001af8 	.word	0x00001af8

00001b38 <_fname_addr>:
    1b38:	00001b2a 	.word	0x00001b2a

00001b3c <_buffer_addr>:
    1b3c:	00001b40 	.word	0x00001b40

00001b40 <_buffer>:
	...
