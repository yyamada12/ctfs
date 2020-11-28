
aarch64-elf.x:     file format elf64-littleaarch64


Disassembly of section .text:

0000000000000000 <_.xy-0x4>:
       0:	00000000 	.inst	0x00000000 ; undefined

0000000000000004 <_.xy>:
       4:	00000000 	.inst	0x00000000 ; undefined

0000000000000008 <_.z>:
       8:	00000000 	.inst	0x00000000 ; undefined

000000000000000c <_.frame>:
       c:	00000000 	.inst	0x00000000 ; undefined

0000000000000010 <_.d1>:
      10:	00000000 	.inst	0x00000000 ; undefined

0000000000000014 <_.d2>:
      14:	00000000 	.inst	0x00000000 ; undefined

0000000000000018 <_.d3>:
      18:	00000000 	.inst	0x00000000 ; undefined

000000000000001c <_.d4>:
	...

0000000000001af0 <_start>:
    1af0:	61626364 	.word	0x61626364
	...
    1b00:	00001b04 	.word	0x00001b04

0000000000001b04 <_code>:
    1b04:	58000520 	ldr	x0, 1ba8 <_start_addr>
    1b08:	9100001f 	mov	sp, x0

0000000000001b0c <__open>:
    1b0c:	58000520 	ldr	x0, 1bb0 <_fname_addr>
    1b10:	d2800001 	mov	x1, #0x0                   	// #0
    1b14:	d2800002 	mov	x2, #0x0                   	// #0
    1b18:	d10083ff 	sub	sp, sp, #0x20
    1b1c:	f90003e0 	str	x0, [sp]
    1b20:	f90007e1 	str	x1, [sp, #8]
    1b24:	f9000be2 	str	x2, [sp, #16]
    1b28:	910003e1 	mov	x1, sp
    1b2c:	d2800020 	mov	x0, #0x1                   	// #1
    1b30:	d45e0000 	.word	0xd45e0000
    1b34:	910083ff 	add	sp, sp, #0x20

0000000000001b38 <__read>:
    1b38:	58000401 	ldr	x1, 1bb8 <_buffer_addr>
    1b3c:	d2800402 	mov	x2, #0x20                  	// #32
    1b40:	d10083ff 	sub	sp, sp, #0x20
    1b44:	f90003e0 	str	x0, [sp]
    1b48:	f90007e1 	str	x1, [sp, #8]
    1b4c:	f9000be2 	str	x2, [sp, #16]
    1b50:	910003e1 	mov	x1, sp
    1b54:	d28000c0 	mov	x0, #0x6                   	// #6
    1b58:	d45e0000 	.word	0xd45e0000
    1b5c:	910083ff 	add	sp, sp, #0x20

0000000000001b60 <_save_size>:
    1b60:	aa0003e3 	mov	x3, x0

0000000000001b64 <__write>:
    1b64:	d2800020 	mov	x0, #0x1                   	// #1
    1b68:	58000281 	ldr	x1, 1bb8 <_buffer_addr>
    1b6c:	aa0303e2 	mov	x2, x3
    1b70:	d10083ff 	sub	sp, sp, #0x20
    1b74:	f90003e0 	str	x0, [sp]
    1b78:	f90007e1 	str	x1, [sp, #8]
    1b7c:	f9000be2 	str	x2, [sp, #16]
    1b80:	910003e1 	mov	x1, sp
    1b84:	d28000a0 	mov	x0, #0x5                   	// #5
    1b88:	d45e0000 	.word	0xd45e0000
    1b8c:	910083ff 	add	sp, sp, #0x20

0000000000001b90 <__exit>:
    1b90:	d2800000 	mov	x0, #0x0                   	// #0
    1b94:	d4200000 	.word	0xd4200000

0000000000001b98 <_fname>:
    1b98:	64726f77 	.word	0x64726f77
    1b9c:	7478742e 	.word	0x7478742e
    1ba0:	00          	.byte	0x00
    1ba1:	00          	.byte	0x00
    1ba2:	0000      	.short	0x0000
    1ba4:	d503201f 	nop

0000000000001ba8 <_start_addr>:
    1ba8:	00001af0 	.word	0x00001af0
    1bac:	00000000 	.word	0x00000000

0000000000001bb0 <_fname_addr>:
    1bb0:	00001b98 	.word	0x00001b98
    1bb4:	00000000 	.word	0x00000000

0000000000001bb8 <_buffer_addr>:
    1bb8:	00001bc0 	.word	0x00001bc0
    1bbc:	00000000 	.word	0x00000000

0000000000001bc0 <_buffer>:
	...
