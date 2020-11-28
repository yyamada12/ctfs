
m32c-elf.x:     file format elf32-m32c


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	00          	brk
       1:	00          	brk
	...

00000004 <_.xy>:
       4:	00          	brk
       5:	00          	brk
	...

00000008 <_.z>:
       8:	00          	brk
       9:	00          	brk
	...

0000000c <_.frame>:
       c:	00          	brk
       d:	00          	brk
	...

00000010 <_.d1>:
      10:	00          	brk
      11:	00          	brk
	...

00000014 <_.d2>:
      14:	00          	brk
      15:	00          	brk
	...

00000018 <_.d3>:
      18:	00          	brk
      19:	00          	brk
	...

0000001c <_.d4>:
	...

00001af6 <_start>:
    1af6:	64          	jmp.s 1afc <_start+0x6>
    1af7:	63          	jmp.s 1afc <_start+0x6>
    1af8:	62          	jmp.s 1afc <_start+0x6>
    1af9:	61          	jmp.s 1afc <_start+0x6>
	...
    1b06:	00          	brk
    1b07:	00          	brk
    1b08:	0c          	mov.b:s r0l,r0h
    1b09:	1b 00 00 eb 	*unknown*

00001b0c <_code>:
    1b0c:	eb 50 f6 1a 	ldc #6902,sp

00001b10 <___open>:
    1b10:	75 c1 a2 1b 	mov.w:g #7074,r1
    1b14:	d9 02       	mov.w:q #0,r2
    1b16:	7d e2 00 00 	push.w:g #0
    1b1a:	7d bd       	add.b:q #-3,sp
    1b1c:	d9 20       	mov.w:q #2,r0
    1b1e:	72 0f 00 04 	mov.b:g r0l,0x400
    1b22:	7d b3 73 01 	*unknown*

00001b24 <___read>:
    1b24:	73 01       	mov.w:g r0,r1
    1b26:	75 c2 b8 1b 	mov.w:g #7096,r2
    1b2a:	7d e2 10 00 	push.w:g #16
    1b2e:	7d bd       	add.b:q #-3,sp
    1b30:	d9 40       	mov.w:q #4,r0
    1b32:	72 0f 00 04 	mov.b:g r0l,0x400
    1b36:	7d b3 73 03 	*unknown*

00001b38 <_save_size>:
    1b38:	73 03 75 c1 	*unknown*

00001b3a <___kopen>:
    1b3a:	75 c1 af 1b 	mov.w:g #7087,r1
    1b3e:	d9 02       	mov.w:q #0,r2
    1b40:	7d e2 00 00 	push.w:g #0
    1b44:	7d bd       	add.b:q #-3,sp
    1b46:	d9 20       	mov.w:q #2,r0
    1b48:	72 0f 00 04 	mov.b:g r0l,0x400
    1b4c:	7d b3 73 01 	*unknown*

00001b4e <___kread>:
    1b4e:	73 01       	mov.w:g r0,r1
    1b50:	75 c2 c8 1b 	mov.w:g #7112,r2
    1b54:	75 43       	push.w:g r3
    1b56:	7d bd       	add.b:q #-3,sp
    1b58:	d9 40       	mov.w:q #4,r0
    1b5a:	72 0f 00 04 	mov.b:g r0l,0x400
    1b5e:	7d b3 75 c4 	*unknown*

00001b60 <_exchange>:
    1b60:	75 c4 b8 1b 	mov.w:g #7096,a0
    1b64:	75 c5 c8 1b 	mov.w:g #7112,a1
    1b68:	73 40       	mov.w:g a0,r0
    1b6a:	a1 30       	add.w:g r3,r0
    1b6c:	88 76       	xor.b:g [a1],[a0]
    1b6e:	c9 14       	add.w:q #1,a0
    1b70:	c9 15       	add.w:q #1,a1
    1b72:	c1 40       	cmp.w:g a0,r0
    1b74:	6e f7 d9 11 	*unknown*

00001b76 <___write>:
    1b76:	d9 11       	mov.w:q #1,r1
    1b78:	75 c2 b8 1b 	mov.w:g #7096,r2
    1b7c:	75 43       	push.w:g r3
    1b7e:	7d bd       	add.b:q #-3,sp
    1b80:	d9 50       	mov.w:q #5,r0
    1b82:	72 0f 00 04 	mov.b:g r0l,0x400
    1b86:	7d b3 d9 11 	*unknown*

00001b88 <___kwrite>:
    1b88:	d9 11       	mov.w:q #1,r1
    1b8a:	75 c2 c8 1b 	mov.w:g #7112,r2
    1b8e:	75 43       	push.w:g r3
    1b90:	7d bd       	add.b:q #-3,sp
    1b92:	d9 50       	mov.w:q #5,r0
    1b94:	72 0f 00 04 	mov.b:g r0l,0x400
    1b98:	7d b3 d9 01 	*unknown*

00001b9a <___exit>:
    1b9a:	d9 01       	mov.w:q #0,r1
    1b9c:	d9 10       	mov.w:q #1,r0
    1b9e:	72 0f 00 04 	mov.b:g r0l,0x400

00001ba2 <_fname>:
    1ba2:	70 61       	mulu.b:g [a0],r0h
    1ba4:	73 73       	mov.w:g [a1],r3
    1ba6:	77 6f 72 64 	adc.w #29742,0x6472
    1baa:	2e 74 
    1bac:	78 74 00 6b 	*unknown*

00001baf <_kname>:
    1baf:	6b 65       	jn 1c15 <_ebss+0x15>
    1bb1:	79 2e 62 69 	mul.w:g r2,0x6962[sb]
    1bb5:	6e 00 00 00 	*unknown*

00001bb8 <_buffer>:
	...

00001bc8 <_kbuffer>:
	...
    1bd8:	04          	nop
    1bd9:	04          	nop
    1bda:	04          	nop
    1bdb:	04          	nop
