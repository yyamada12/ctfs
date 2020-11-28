
msp430-elf.x:     file format elf32-msp430


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	00 00       	beq			
	...

00000004 <_.xy>:
       4:	00 00       	beq			
	...

00000008 <_.z>:
       8:	00 00       	beq			
	...

0000000c <_.frame>:
       c:	00 00       	beq			
	...

00000010 <_.d1>:
      10:	00 00       	beq			
	...

00000014 <_.d2>:
      14:	00 00       	beq			
	...

00000018 <_.d3>:
      18:	00 00       	beq			
	...

0000001c <_.d4>:
	...

00001af4 <_start>:
    1af4:	64 63       	addc.b	#2,	r4	;r3 As==10
    1af6:	62 61       	addc.b	@r1,	r2	;
	...
    1b08:	0c 1b 00 00 	rpt #13 { beqx			

00001b0c <_code>:
    1b0c:	81 00 f4 1a 	mova	#6900,	r1	;0x01af4

00001b10 <__open>:
    1b10:	3c 40 7c 1b 	mov	#7036,	r12	;#0x1b7c
    1b14:	0d 43       	clr	r13		;
    1b16:	0e 43       	clr	r14		;
    1b18:	b0 13 82 01 	calla	#386		;0x00182

00001b1c <__read>:
    1b1c:	3d 40 94 1b 	mov	#7060,	r13	;#0x1b94
    1b20:	3e 40 10 00 	mov	#16,	r14	;#0x0010
    1b24:	b0 13 84 01 	calla	#388		;0x00184

00001b28 <_save_size>:
    1b28:	0f 4c       	mov	r12,	r15	;

00001b2a <__kopen>:
    1b2a:	3c 40 89 1b 	mov	#7049,	r12	;#0x1b89
    1b2e:	0d 43       	clr	r13		;
    1b30:	0e 43       	clr	r14		;
    1b32:	b0 13 82 01 	calla	#386		;0x00182

00001b36 <__kread>:
    1b36:	3d 40 a4 1b 	mov	#7076,	r13	;#0x1ba4
    1b3a:	0e 4f       	mov	r15,	r14	;
    1b3c:	b0 13 84 01 	calla	#388		;0x00184

00001b40 <_exchange>:
    1b40:	3c 40 94 1b 	mov	#7060,	r12	;#0x1b94
    1b44:	3d 40 a4 1b 	mov	#7076,	r13	;#0x1ba4
    1b48:	0e 4c       	mov	r12,	r14	;
    1b4a:	0e 5f       	add	r15,	r14	;

00001b4c <.L11>:
    1b4c:	6a 4c       	mov.b	@r12,	r10	;
    1b4e:	6b 4d       	mov.b	@r13,	r11	;
    1b50:	4a eb       	xor.b	r11,	r10	;
    1b52:	cc 4a 00 00 	mov.b	r10,	0(r12)	;
    1b56:	1c 53       	inc	r12		;
    1b58:	1d 53       	inc	r13		;
    1b5a:	0e 9c       	cmp	r12,	r14	;
    1b5c:	f7 23       	jnz	$-16     	;abs 0x1b4c

00001b5e <__write>:
    1b5e:	1c 43       	mov	#1,	r12	;r3 As==01
    1b60:	3d 40 94 1b 	mov	#7060,	r13	;#0x1b94
    1b64:	0e 4f       	mov	r15,	r14	;
    1b66:	b0 13 85 01 	calla	#389		;0x00185

00001b6a <__kwrite>:
    1b6a:	1c 43       	mov	#1,	r12	;r3 As==01
    1b6c:	3d 40 a4 1b 	mov	#7076,	r13	;#0x1ba4
    1b70:	0e 4f       	mov	r15,	r14	;
    1b72:	b0 13 85 01 	calla	#389		;0x00185

00001b76 <__exit>:
    1b76:	0c 43       	clr	r12		;
    1b78:	b0 13 81 01 	calla	#385		;0x00181

00001b7c <_fname>:
    1b7c:	70 61       	addc.b	@r1+,	r0	;
    1b7e:	73 73       	.word	0x7373;	????
    1b80:	77 6f       	addc.b	@r15+,	r7	;
    1b82:	72 64       	addc.b	@r4+,	r2	;
    1b84:	2e 74       	subc	@r4,	r14	;
    1b86:	78 74       	subc.b	@r4+,	r8	;
	...

00001b89 <_kname>:
    1b89:	6b 65       	addc.b	@r5,	r11	;
    1b8b:	79 2e       	jc	$-780    	;abs 0x187f
    1b8d:	62 69       	addc.b	@r9,	r2	;
    1b8f:	6e 00 00 00 	mova	r0,	&917504	; 0xe0000
	...

00001b94 <_buffer>:
	...

00001ba4 <_kbuffer>:
	...
