
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
    1b08:	60 63 1b 54 	ori     r3,r3,6996
    1b0c:	38 80 00 00 	li      r4,0
    1b10:	38 00 00 05 	li      r0,5
    1b14:	44 00 00 02 	sc      

00001b18 <__read>:
    1b18:	3c 80 00 00 	lis     r4,0
    1b1c:	60 84 1b 60 	ori     r4,r4,7008
    1b20:	38 a0 00 20 	li      r5,32
    1b24:	38 00 00 03 	li      r0,3
    1b28:	44 00 00 02 	sc      

00001b2c <_save_size>:
    1b2c:	7c 66 1b 78 	mr      r6,r3

00001b30 <__write>:
    1b30:	38 60 00 01 	li      r3,1
    1b34:	3c 80 00 00 	lis     r4,0
    1b38:	60 84 1b 60 	ori     r4,r4,7008
    1b3c:	7c c5 33 78 	mr      r5,r6
    1b40:	38 00 00 04 	li      r0,4
    1b44:	44 00 00 02 	sc      

00001b48 <__exit>:
    1b48:	38 60 00 00 	li      r3,0
    1b4c:	38 00 00 01 	li      r0,1
    1b50:	44 00 00 02 	sc      

00001b54 <_fname>:
    1b54:	77 6f 72 64 	andis.  r15,r27,29284
    1b58:	2e 74 78 74 	cmpdi   cr4,r20,30836
    1b5c:	00 00 00 00 	.long 0x0

00001b60 <_buffer>:
	...
