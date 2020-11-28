
m32r-elf.x:     file format elf32-m32r


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	00 00 00 00 	subv r0,r0 -> subv r0,r0

00000004 <_.xy>:
       4:	00 00 00 00 	subv r0,r0 -> subv r0,r0

00000008 <_.z>:
       8:	00 00 00 00 	subv r0,r0 -> subv r0,r0

0000000c <_.frame>:
       c:	00 00 00 00 	subv r0,r0 -> subv r0,r0

00000010 <_.d1>:
      10:	00 00 00 00 	subv r0,r0 -> subv r0,r0

00000014 <_.d2>:
      14:	00 00 00 00 	subv r0,r0 -> subv r0,r0

00000018 <_.d3>:
      18:	00 00 00 00 	subv r0,r0 -> subv r0,r0

0000001c <_.d4>:
	...

00001af8 <_start>:
    1af8:	61 62 63 64 	ldi r1,#98 -> ldi r3,#100
	...
    1b08:	00 00 1b 0c 	subv r0,r0 -> srl r11,r12

00001b0c <_code>:
    1b0c:	ef 00 1a f8 	ld24 sp,1af8 <_start>

00001b10 <__r_open>:
    1b10:	e1 00 1b 90 	ld24 r1,1b90 <_fname>
    1b14:	62 00 60 02 	ldi r2,#0 -> ldi r0,#2
    1b18:	10 f0 f0 00 	trap #0x0 || nop

00001b1c <__r_read>:
    1b1c:	11 80 f0 00 	mv r1,r0 || nop
    1b20:	e2 00 1b a8 	ld24 r2,1ba8 <_buffer>
    1b24:	63 10 60 04 	ldi r3,#16 -> ldi r0,#4
    1b28:	10 f0 f0 00 	trap #0x0 || nop

00001b2c <_save_size>:
    1b2c:	14 80 f0 00 	mv r4,r0 || nop

00001b30 <__r_kopen>:
    1b30:	e1 00 1b a0 	ld24 r1,1ba0 <_kname>
    1b34:	62 00 60 02 	ldi r2,#0 -> ldi r0,#2
    1b38:	10 f0 f0 00 	trap #0x0 || nop

00001b3c <__r_kread>:
    1b3c:	11 80 f0 00 	mv r1,r0 || nop
    1b40:	e2 00 1b b8 	ld24 r2,1bb8 <_kbuffer>
    1b44:	13 84 60 04 	mv r3,r4 -> ldi r0,#4
    1b48:	10 f0 f0 00 	trap #0x0 || nop

00001b4c <_exchange>:
    1b4c:	e0 00 1b a8 	ld24 r0,1ba8 <_buffer>
    1b50:	e1 00 1b b8 	ld24 r1,1bb8 <_kbuffer>
    1b54:	15 80 05 a4 	mv r5,r0 -> add r5,r4
    1b58:	22 90 23 91 	ldub r2,@r0 -> ldub r3,@r1
    1b5c:	02 d3 22 00 	xor r2,r3 -> stb r2,@r0
    1b60:	40 01 41 01 	addi r0,#1 -> addi r1,#1
    1b64:	b0 15 ff fd 	bne r0,r5,1b58 <_exchange+0xc>

00001b68 <__r_write>:
    1b68:	61 01 f0 00 	ldi r1,#1 || nop
    1b6c:	e2 00 1b a8 	ld24 r2,1ba8 <_buffer>
    1b70:	13 84 60 05 	mv r3,r4 -> ldi r0,#5
    1b74:	10 f0 f0 00 	trap #0x0 || nop

00001b78 <__r_kwrite>:
    1b78:	61 01 f0 00 	ldi r1,#1 || nop
    1b7c:	e2 00 1b b8 	ld24 r2,1bb8 <_kbuffer>
    1b80:	13 84 60 05 	mv r3,r4 -> ldi r0,#5
    1b84:	10 f0 f0 00 	trap #0x0 || nop

00001b88 <__r_exit>:
    1b88:	61 00 60 01 	ldi r1,#0 -> ldi r0,#1
    1b8c:	10 f0 f0 00 	trap #0x0 || nop

00001b90 <_fname>:
    1b90:	70 61 73 73 	*unknown* -> *unknown*
    1b94:	77 6f 72 64 	*unknown* -> clrpsw #0x64
    1b98:	2e 74 78 74 	st lr,@-r4 -> bcl 1d68 <_ebss+0x168>
    1b9c:	00 00 f0 00 	subv r0,r0 || nop

00001ba0 <_kname>:
    1ba0:	6b 65 79 2e 	ldi r11,#101 -> bncl 1c58 <_ebss+0x58>
    1ba4:	62 69 6e 00 	ldi r2,#105 -> ldi lr,#0

00001ba8 <_buffer>:
	...

00001bb8 <_kbuffer>:
	...
