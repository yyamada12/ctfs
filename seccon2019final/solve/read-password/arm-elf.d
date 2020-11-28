
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
    1b00:	e59fd094 	ldr	sp, [pc, #148]	; 1b9c <_start_addr>

00001b04 <__open>:
    1b04:	e59f0094 	ldr	r0, [pc, #148]	; 1ba0 <_fname_addr>
    1b08:	e3a01000 	mov	r1, #0
    1b0c:	ef000066 	svc	0x00000066

00001b10 <__read>:
    1b10:	e59f1090 	ldr	r1, [pc, #144]	; 1ba8 <_buffer_addr>
    1b14:	e3a02010 	mov	r2, #16
    1b18:	ef00006a 	svc	0x0000006a

00001b1c <_save_size>:
    1b1c:	e1a03000 	mov	r3, r0

00001b20 <__kopen>:
    1b20:	e59f007c 	ldr	r0, [pc, #124]	; 1ba4 <_kname_addr>
    1b24:	e3a01000 	mov	r1, #0
    1b28:	ef000066 	svc	0x00000066

00001b2c <__kread>:
    1b2c:	e59f1078 	ldr	r1, [pc, #120]	; 1bac <_kbuffer_addr>
    1b30:	e1a02003 	mov	r2, r3
    1b34:	ef00006a 	svc	0x0000006a

00001b38 <_exchange>:
    1b38:	e59f0068 	ldr	r0, [pc, #104]	; 1ba8 <_buffer_addr>
    1b3c:	e59f1068 	ldr	r1, [pc, #104]	; 1bac <_kbuffer_addr>
    1b40:	e0802003 	add	r2, r0, r3
    1b44:	e4d04001 	ldrb	r4, [r0], #1
    1b48:	e4d15001 	ldrb	r5, [r1], #1
    1b4c:	e0244005 	eor	r4, r4, r5
    1b50:	e5404001 	strb	r4, [r0, #-1]
    1b54:	e1500002 	cmp	r0, r2
    1b58:	1afffff9 	bne	1b44 <_exchange+0xc>

00001b5c <__write>:
    1b5c:	e3a00001 	mov	r0, #1
    1b60:	e59f1040 	ldr	r1, [pc, #64]	; 1ba8 <_buffer_addr>
    1b64:	e1a02003 	mov	r2, r3
    1b68:	ef000069 	svc	0x00000069

00001b6c <__kwrite>:
    1b6c:	e3a00001 	mov	r0, #1
    1b70:	e59f1034 	ldr	r1, [pc, #52]	; 1bac <_kbuffer_addr>
    1b74:	e1a02003 	mov	r2, r3
    1b78:	ef000069 	svc	0x00000069

00001b7c <__exit>:
    1b7c:	e3a00000 	mov	r0, #0
    1b80:	ef000011 	svc	0x00000011

00001b84 <_fname>:
    1b84:	73736170 	.word	0x73736170
    1b88:	64726f77 	.word	0x64726f77
    1b8c:	7478742e 	.word	0x7478742e
	...

00001b91 <_kname>:
    1b91:	6b          	.byte	0x6b
    1b92:	7965      	.short	0x7965
    1b94:	6e69622e 	.word	0x6e69622e
    1b98:	00          	.byte	0x00
    1b99:	00          	.byte	0x00
	...

00001b9c <_start_addr>:
    1b9c:	00001ae0 	.word	0x00001ae0

00001ba0 <_fname_addr>:
    1ba0:	00001b84 	.word	0x00001b84

00001ba4 <_kname_addr>:
    1ba4:	00001b91 	.word	0x00001b91

00001ba8 <_buffer_addr>:
    1ba8:	00001bb0 	.word	0x00001bb0

00001bac <_kbuffer_addr>:
    1bac:	00001bc0 	.word	0x00001bc0

00001bb0 <_buffer>:
	...

00001bc0 <_kbuffer>:
	...
