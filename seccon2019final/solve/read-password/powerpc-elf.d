
powerpc-elf.x:     file format elf32-powerpc


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	00 00 00 00 	.long 0x0

00000004 <_.xy>:
       4:	00 00 00 00 	.long 0x0

00000008 <_.z>:
       8:	00 00 00 00 	.long 0x0

0000000c <_.frame>:
       c:	00 00 00 00 	.long 0x0

00000010 <_.d1>:
      10:	00 00 00 00 	.long 0x0

00000014 <_.d2>:
      14:	00 00 00 00 	.long 0x0

00000018 <_.d3>:
      18:	00 00 00 00 	.long 0x0

0000001c <_.d4>:
	...

00001ad8 <_start>:
    1ad8:	61 62 63 64 	ori     r2,r11,25444
	...
    1af4:	00 00 1a f8 	.long 0x1af8

00001af8 <_code>:
    1af8:	3c 20 00 00 	lis     r1,0
    1afc:	60 21 1a d8 	ori     r1,r1,6872
    1b00:	38 21 ff f0 	addi    r1,r1,-16

00001b04 <__open>:
    1b04:	3c 60 00 00 	lis     r3,0
    1b08:	60 63 1b c4 	ori     r3,r3,7108
    1b0c:	38 80 00 00 	li      r4,0
    1b10:	38 00 00 05 	li      r0,5
    1b14:	44 00 00 02 	sc      

00001b18 <__read>:
    1b18:	3c 80 00 00 	lis     r4,0
    1b1c:	60 84 1b dc 	ori     r4,r4,7132
    1b20:	38 a0 00 10 	li      r5,16
    1b24:	38 00 00 03 	li      r0,3
    1b28:	44 00 00 02 	sc      

00001b2c <_save_size>:
    1b2c:	7c 66 1b 78 	mr      r6,r3

00001b30 <__kopen>:
    1b30:	3c 60 00 00 	lis     r3,0
    1b34:	60 63 1b d1 	ori     r3,r3,7121
    1b38:	38 80 00 00 	li      r4,0
    1b3c:	38 00 00 05 	li      r0,5
    1b40:	44 00 00 02 	sc      

00001b44 <__kread>:
    1b44:	3c 80 00 00 	lis     r4,0
    1b48:	60 84 1b ec 	ori     r4,r4,7148
    1b4c:	7c c5 33 78 	mr      r5,r6
    1b50:	38 00 00 03 	li      r0,3
    1b54:	44 00 00 02 	sc      

00001b58 <_exchange>:
    1b58:	3c 60 00 00 	lis     r3,0
    1b5c:	60 63 1b dc 	ori     r3,r3,7132
    1b60:	3c 80 00 00 	lis     r4,0
    1b64:	60 84 1b ec 	ori     r4,r4,7148
    1b68:	38 63 ff ff 	addi    r3,r3,-1
    1b6c:	38 84 ff ff 	addi    r4,r4,-1
    1b70:	7c c9 03 a6 	mtctr   r6
    1b74:	8c e3 00 01 	lbzu    r7,1(r3)
    1b78:	8d 04 00 01 	lbzu    r8,1(r4)
    1b7c:	7c e7 42 78 	xor     r7,r7,r8
    1b80:	98 e3 00 00 	stb     r7,0(r3)
    1b84:	42 00 ff f0 	bdnz    1b74 <_exchange+0x1c>

00001b88 <__write>:
    1b88:	38 60 00 01 	li      r3,1
    1b8c:	3c 80 00 00 	lis     r4,0
    1b90:	60 84 1b dc 	ori     r4,r4,7132
    1b94:	7c c5 33 78 	mr      r5,r6
    1b98:	38 00 00 04 	li      r0,4
    1b9c:	44 00 00 02 	sc      

00001ba0 <__kwrite>:
    1ba0:	38 60 00 01 	li      r3,1
    1ba4:	3c 80 00 00 	lis     r4,0
    1ba8:	60 84 1b ec 	ori     r4,r4,7148
    1bac:	7c c5 33 78 	mr      r5,r6
    1bb0:	38 00 00 04 	li      r0,4
    1bb4:	44 00 00 02 	sc      

00001bb8 <__exit>:
    1bb8:	38 60 00 00 	li      r3,0
    1bbc:	38 00 00 01 	li      r0,1
    1bc0:	44 00 00 02 	sc      

00001bc4 <_fname>:
    1bc4:	70 61 73 73 	andi.   r1,r3,29555
    1bc8:	77 6f 72 64 	andis.  r15,r27,29284
    1bcc:	2e 74 78 74 	cmpdi   cr4,r20,30836
	...

00001bd1 <_kname>:
    1bd1:	6b 65 79 2e 	xori    r5,r27,31022
    1bd5:	62 69 6e 00 	ori     r9,r19,28160
    1bd9:	Address 0x00001bd9 is out of bounds.


00001bdc <_buffer>:
	...

00001bec <_kbuffer>:
	...
