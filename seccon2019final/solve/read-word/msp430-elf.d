
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
    1b10:	3c 40 3c 1b 	mov	#6972,	r12	;#0x1b3c
    1b14:	0d 43       	clr	r13		;
    1b16:	0e 43       	clr	r14		;
    1b18:	b0 13 82 01 	calla	#386		;0x00182

00001b1c <__read>:
    1b1c:	3d 40 48 1b 	mov	#6984,	r13	;#0x1b48
    1b20:	3e 40 20 00 	mov	#32,	r14	;#0x0020
    1b24:	b0 13 84 01 	calla	#388		;0x00184

00001b28 <_save_size>:
    1b28:	0f 4c       	mov	r12,	r15	;

00001b2a <__write>:
    1b2a:	1c 43       	mov	#1,	r12	;r3 As==01
    1b2c:	3d 40 48 1b 	mov	#6984,	r13	;#0x1b48
    1b30:	0e 4f       	mov	r15,	r14	;
    1b32:	b0 13 85 01 	calla	#389		;0x00185

00001b36 <__exit>:
    1b36:	0c 43       	clr	r12		;
    1b38:	b0 13 81 01 	calla	#385		;0x00181

00001b3c <_fname>:
    1b3c:	77 6f       	addc.b	@r15+,	r7	;
    1b3e:	72 64       	addc.b	@r4+,	r2	;
    1b40:	2e 74       	subc	@r4,	r14	;
    1b42:	78 74       	subc.b	@r4+,	r8	;
    1b44:	00 00       	beq			
	...

00001b48 <_buffer>:
	...
