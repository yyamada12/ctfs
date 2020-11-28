
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
    1b10:	75 c1 54 1b 	mov.w:g #6996,r1
    1b14:	d9 02       	mov.w:q #0,r2
    1b16:	7d e2 00 00 	push.w:g #0
    1b1a:	7d bd       	add.b:q #-3,sp
    1b1c:	d9 20       	mov.w:q #2,r0
    1b1e:	72 0f 00 04 	mov.b:g r0l,0x400
    1b22:	7d b3 73 01 	*unknown*

00001b24 <___read>:
    1b24:	73 01       	mov.w:g r0,r1
    1b26:	75 c2 60 1b 	mov.w:g #7008,r2
    1b2a:	7d e2 20 00 	push.w:g #32
    1b2e:	7d bd       	add.b:q #-3,sp
    1b30:	d9 40       	mov.w:q #4,r0
    1b32:	72 0f 00 04 	mov.b:g r0l,0x400
    1b36:	7d b3 73 03 	*unknown*

00001b38 <_save_size>:
    1b38:	73 03 d9 11 	*unknown*

00001b3a <___write>:
    1b3a:	d9 11       	mov.w:q #1,r1
    1b3c:	75 c2 60 1b 	mov.w:g #7008,r2
    1b40:	75 43       	push.w:g r3
    1b42:	7d bd       	add.b:q #-3,sp
    1b44:	d9 50       	mov.w:q #5,r0
    1b46:	72 0f 00 04 	mov.b:g r0l,0x400
    1b4a:	7d b3 d9 01 	*unknown*

00001b4c <___exit>:
    1b4c:	d9 01       	mov.w:q #0,r1
    1b4e:	d9 10       	mov.w:q #1,r0
    1b50:	72 0f 00 04 	mov.b:g r0l,0x400

00001b54 <_fname>:
    1b54:	77 6f 72 64 	adc.w #29742,0x6472
    1b58:	2e 74 
    1b5a:	78 74       	mul.b:g [a1],a0
    1b5c:	00          	brk
    1b5d:	00          	brk
	...

00001b60 <_buffer>:
	...
    1b80:	04          	nop
    1b81:	04          	nop
    1b82:	04          	nop
    1b83:	04          	nop
