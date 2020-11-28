
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
    1b10:	e1 00 1b 48 	ld24 r1,1b48 <_fname>
    1b14:	62 00 60 02 	ldi r2,#0 -> ldi r0,#2
    1b18:	10 f0 f0 00 	trap #0x0 || nop

00001b1c <__r_read>:
    1b1c:	11 80 f0 00 	mv r1,r0 || nop
    1b20:	e2 00 1b 54 	ld24 r2,1b54 <_buffer>
    1b24:	63 20 60 04 	ldi r3,#32 -> ldi r0,#4
    1b28:	10 f0 f0 00 	trap #0x0 || nop

00001b2c <_save_size>:
    1b2c:	14 80 f0 00 	mv r4,r0 || nop

00001b30 <__r_write>:
    1b30:	61 01 f0 00 	ldi r1,#1 || nop
    1b34:	e2 00 1b 54 	ld24 r2,1b54 <_buffer>
    1b38:	13 84 60 05 	mv r3,r4 -> ldi r0,#5
    1b3c:	10 f0 f0 00 	trap #0x0 || nop

00001b40 <__r_exit>:
    1b40:	61 00 60 01 	ldi r1,#0 -> ldi r0,#1
    1b44:	10 f0 f0 00 	trap #0x0 || nop

00001b48 <_fname>:
    1b48:	77 6f 72 64 	*unknown* -> clrpsw #0x64
    1b4c:	2e 74 78 74 	st lr,@-r4 -> bcl 1d1c <_ebss+0x11c>
    1b50:	00 00 f0 00 	subv r0,r0 || nop

00001b54 <_buffer>:
	...
