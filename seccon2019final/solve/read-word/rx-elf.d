
rx-elf.x:     file format elf32-rx-le


Disassembly of section .text:

00001af4 <_start>:
    1af4:	64 63                         	and	#6, r3
    1af6:	62 61                         	add	#6, r1
	...
    1b08:	0c                            	bra.s	1b0c <_code>
    1b09:	1b                            	bne.s	1b0c <_code>
	...

00001b0c <_code>:
    1b0c:	fb 02 f4 1a 00 00             	mov.l	#0x1af4, r0

00001b12 <___open>:
    1b12:	fb 12 49 1b 00 00             	mov.l	#0x1b49, r1
    1b18:	3e 01 00                      	mov.l	#0, 4[r0]
    1b1b:	3e 02 00                      	mov.l	#0, 8[r0]
    1b1e:	66 25                         	mov.l	#2, r5
    1b20:	75 60 ff                      	int #255

00001b23 <___read>:
    1b23:	fb 22 52 1b 00 00             	mov.l	#0x1b52, r2
    1b29:	75 43 20                      	mov.l	#32, r3
    1b2c:	66 45                         	mov.l	#4, r5
    1b2e:	75 60 ff                      	int #255

00001b31 <_save_size>:
    1b31:	ef 14                         	mov.l	r1, r4

00001b33 <___write>:
    1b33:	66 11                         	mov.l	#1, r1
    1b35:	fb 22 52 1b 00 00             	mov.l	#0x1b52, r2
    1b3b:	ef 43                         	mov.l	r4, r3
    1b3d:	66 55                         	mov.l	#5, r5
    1b3f:	75 60 ff                      	int #255

00001b42 <___exit>:
    1b42:	66 01                         	mov.l	#0, r1
    1b44:	66 15                         	mov.l	#1, r5
    1b46:	75 60 ff                      	int #255

00001b49 <_fname>:
    1b49:	77 6f                         	*unknown*
    1b4b:	72 64 2e 74                   	add	#0x742e, r6, r4
    1b4f:	78 74                         	bset	#7, r4
	...

00001b52 <_buffer>:
	...

Disassembly of section P:

00001b72 <_erodata-0x1af4>:
	...
