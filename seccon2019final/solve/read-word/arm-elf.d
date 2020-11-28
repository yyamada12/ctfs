
arm-elf.x:     file format elf32-littlearm


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

00001ae0 <_start>:
    1ae0:	61626364 	.word	0x61626364
	...
    1af4:	00001c00 	.word	0x00001c00
    1af8:	00001b00 	.word	0x00001b00
    1afc:	00000000 	.word	0x00000000

00001b00 <_code>:
    1b00:	e59fd03c 	ldr	sp, [pc, #60]	; 1b44 <_start_addr>

00001b04 <__open>:
    1b04:	e59f003c 	ldr	r0, [pc, #60]	; 1b48 <_fname_addr>
    1b08:	e3a01000 	mov	r1, #0
    1b0c:	ef000066 	svc	0x00000066

00001b10 <__read>:
    1b10:	e59f1034 	ldr	r1, [pc, #52]	; 1b4c <_buffer_addr>
    1b14:	e3a02020 	mov	r2, #32
    1b18:	ef00006a 	svc	0x0000006a

00001b1c <_save_size>:
    1b1c:	e1a03000 	mov	r3, r0

00001b20 <__write>:
    1b20:	e3a00001 	mov	r0, #1
    1b24:	e59f1020 	ldr	r1, [pc, #32]	; 1b4c <_buffer_addr>
    1b28:	e1a02003 	mov	r2, r3
    1b2c:	ef000069 	svc	0x00000069

00001b30 <__exit>:
    1b30:	e3a00000 	mov	r0, #0
    1b34:	ef000011 	svc	0x00000011

00001b38 <_fname>:
    1b38:	64726f77 	.word	0x64726f77
    1b3c:	7478742e 	.word	0x7478742e
    1b40:	00          	.byte	0x00
    1b41:	00          	.byte	0x00
	...

00001b44 <_start_addr>:
    1b44:	00001ae0 	.word	0x00001ae0

00001b48 <_fname_addr>:
    1b48:	00001b38 	.word	0x00001b38

00001b4c <_buffer_addr>:
    1b4c:	00001b50 	.word	0x00001b50

00001b50 <_buffer>:
	...
