
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
    1b04:	d2838c00 	mov	x0, #0x1c60                	// #7264
    1b08:	f9400000 	ldr	x0, [x0]
    1b0c:	9100001f 	mov	sp, x0

0000000000001b10 <__open>:
    1b10:	d2838d00 	mov	x0, #0x1c68                	// #7272
    1b14:	f9400000 	ldr	x0, [x0]
    1b18:	d2800001 	mov	x1, #0x0                   	// #0
    1b1c:	d2800002 	mov	x2, #0x0                   	// #0
    1b20:	d10083ff 	sub	sp, sp, #0x20
    1b24:	f90003e0 	str	x0, [sp]
    1b28:	f90007e1 	str	x1, [sp, #8]
    1b2c:	f9000be2 	str	x2, [sp, #16]
    1b30:	910003e1 	mov	x1, sp
    1b34:	d2800020 	mov	x0, #0x1                   	// #1
    1b38:	d45e0000 	.word	0xd45e0000
    1b3c:	910083ff 	add	sp, sp, #0x20

0000000000001b40 <__read>:
    1b40:	580009c1 	ldr	x1, 1c78 <_buffer_addr>
    1b44:	d2800202 	mov	x2, #0x10                  	// #16
    1b48:	d10083ff 	sub	sp, sp, #0x20
    1b4c:	f90003e0 	str	x0, [sp]
    1b50:	f90007e1 	str	x1, [sp, #8]
    1b54:	f9000be2 	str	x2, [sp, #16]
    1b58:	910003e1 	mov	x1, sp
    1b5c:	d28000c0 	mov	x0, #0x6                   	// #6
    1b60:	d45e0000 	.word	0xd45e0000
    1b64:	910083ff 	add	sp, sp, #0x20

0000000000001b68 <_save_size>:
    1b68:	aa0003e3 	mov	x3, x0

0000000000001b6c <__kopen>:
    1b6c:	58000820 	ldr	x0, 1c70 <_kname_addr>
    1b70:	d2800001 	mov	x1, #0x0                   	// #0
    1b74:	d2800002 	mov	x2, #0x0                   	// #0
    1b78:	d10083ff 	sub	sp, sp, #0x20
    1b7c:	f90003e0 	str	x0, [sp]
    1b80:	f90007e1 	str	x1, [sp, #8]
    1b84:	f9000be2 	str	x2, [sp, #16]
    1b88:	910003e1 	mov	x1, sp
    1b8c:	d2800020 	mov	x0, #0x1                   	// #1
    1b90:	d45e0000 	.word	0xd45e0000
    1b94:	910083ff 	add	sp, sp, #0x20

0000000000001b98 <__kread>:
    1b98:	58000741 	ldr	x1, 1c80 <_kbuffer_addr>
    1b9c:	aa0303e2 	mov	x2, x3
    1ba0:	d10083ff 	sub	sp, sp, #0x20
    1ba4:	f90003e0 	str	x0, [sp]
    1ba8:	f90007e1 	str	x1, [sp, #8]
    1bac:	f9000be2 	str	x2, [sp, #16]
    1bb0:	910003e1 	mov	x1, sp
    1bb4:	d28000c0 	mov	x0, #0x6                   	// #6
    1bb8:	d45e0000 	.word	0xd45e0000
    1bbc:	910083ff 	add	sp, sp, #0x20

0000000000001bc0 <_exchange>:
    1bc0:	580005c0 	ldr	x0, 1c78 <_buffer_addr>
    1bc4:	580005e1 	ldr	x1, 1c80 <_kbuffer_addr>
    1bc8:	d2800002 	mov	x2, #0x0                   	// #0
    1bcc:	38626804 	ldrb	w4, [x0, x2]
    1bd0:	38626825 	ldrb	w5, [x1, x2]
    1bd4:	4a050084 	eor	w4, w4, w5
    1bd8:	38226804 	strb	w4, [x0, x2]
    1bdc:	91000442 	add	x2, x2, #0x1
    1be0:	eb03005f 	cmp	x2, x3
    1be4:	54ffff41 	b.ne	1bcc <_exchange+0xc>  // b.any

0000000000001be8 <__write>:
    1be8:	d2800020 	mov	x0, #0x1                   	// #1
    1bec:	58000461 	ldr	x1, 1c78 <_buffer_addr>
    1bf0:	aa0303e2 	mov	x2, x3
    1bf4:	d10083ff 	sub	sp, sp, #0x20
    1bf8:	f90003e0 	str	x0, [sp]
    1bfc:	f90007e1 	str	x1, [sp, #8]
    1c00:	f9000be2 	str	x2, [sp, #16]
    1c04:	910003e1 	mov	x1, sp
    1c08:	d28000a0 	mov	x0, #0x5                   	// #5
    1c0c:	d45e0000 	.word	0xd45e0000
    1c10:	910083ff 	add	sp, sp, #0x20

0000000000001c14 <__kwrite>:
    1c14:	d2800020 	mov	x0, #0x1                   	// #1
    1c18:	58000341 	ldr	x1, 1c80 <_kbuffer_addr>
    1c1c:	aa0303e2 	mov	x2, x3
    1c20:	d10083ff 	sub	sp, sp, #0x20
    1c24:	f90003e0 	str	x0, [sp]
    1c28:	f90007e1 	str	x1, [sp, #8]
    1c2c:	f9000be2 	str	x2, [sp, #16]
    1c30:	910003e1 	mov	x1, sp
    1c34:	d28000a0 	mov	x0, #0x5                   	// #5
    1c38:	d45e0000 	.word	0xd45e0000
    1c3c:	910083ff 	add	sp, sp, #0x20

0000000000001c40 <__exit>:
    1c40:	d2800000 	mov	x0, #0x0                   	// #0
    1c44:	d4200000 	.word	0xd4200000

0000000000001c48 <_fname>:
    1c48:	73736170 	.word	0x73736170
    1c4c:	64726f77 	.word	0x64726f77
    1c50:	7478742e 	.word	0x7478742e
	...

0000000000001c55 <_kname>:
    1c55:	6b          	.byte	0x6b
    1c56:	7965      	.short	0x7965
    1c58:	6e69622e 	.word	0x6e69622e
    1c5c:	00          	.byte	0x00
    1c5d:	00          	.byte	0x00
	...

0000000000001c60 <_start_addr>:
    1c60:	00001af0 	.word	0x00001af0
    1c64:	00000000 	.word	0x00000000

0000000000001c68 <_fname_addr>:
    1c68:	00001c48 	.word	0x00001c48
    1c6c:	00000000 	.word	0x00000000

0000000000001c70 <_kname_addr>:
    1c70:	00001c55 	.word	0x00001c55
    1c74:	00000000 	.word	0x00000000

0000000000001c78 <_buffer_addr>:
    1c78:	00001c88 	.word	0x00001c88
    1c7c:	00000000 	.word	0x00000000

0000000000001c80 <_kbuffer_addr>:
    1c80:	00001c98 	.word	0x00001c98
    1c84:	00000000 	.word	0x00000000

0000000000001c88 <_buffer>:
	...

0000000000001c98 <_kbuffer>:
	...
