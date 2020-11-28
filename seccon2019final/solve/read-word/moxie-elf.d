
moxie-elf.x:     file format elf32-bigmoxie


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	00 00       	bad
	...

00000004 <_.xy>:
       4:	00 00       	bad
	...

00000008 <_.z>:
       8:	00 00       	bad
	...

0000000c <_.frame>:
       c:	00 00       	bad
	...

00000010 <_.d1>:
      10:	00 00       	bad
	...

00000014 <_.d2>:
      14:	00 00       	bad
	...

00000018 <_.d3>:
      18:	00 00       	bad
	...

0000001c <_.d4>:
	...

00001ac8 <_start>:
    1ac8:	61 62       	bad
    1aca:	63 64       	bad
	...
    1ae0:	00 00       	bad
    1ae2:	1a e8 00 00 	jmpa	0 <_.xy-0x4>
    1ae6:	00 00 

00001ae8 <_code>:
    1ae8:	01 10 00 00 	ldi.l	$sp, 0x1ac8
    1aec:	1a c8 

00001aee <__open>:
    1aee:	01 20 00 00 	ldi.l	$r0, 0x1b3a
    1af2:	1b 3a 
    1af4:	01 30 00 00 	ldi.l	$r1, 0x0
    1af8:	00 00 
    1afa:	01 40 00 00 	ldi.l	$r2, 0x0
    1afe:	00 00 
    1b00:	30 00 00 00 	swi	0x2
    1b04:	00 02 

00001b06 <__read>:
    1b06:	01 30 00 00 	ldi.l	$r1, 0x1b44
    1b0a:	1b 44 
    1b0c:	01 40 00 00 	ldi.l	$r2, 0x20
    1b10:	00 20 
    1b12:	30 00 00 00 	swi	0x4
    1b16:	00 04 

00001b18 <_save_size>:
    1b18:	02 52       	mov	$r3, $r0

00001b1a <__write>:
    1b1a:	01 20 00 00 	ldi.l	$r0, 0x1
    1b1e:	00 01 
    1b20:	01 30 00 00 	ldi.l	$r1, 0x1b44
    1b24:	1b 44 
    1b26:	02 45       	mov	$r2, $r3
    1b28:	30 00 00 00 	swi	0x5
    1b2c:	00 05 

00001b2e <__exit>:
    1b2e:	01 20 00 00 	ldi.l	$r0, 0x0
    1b32:	00 00 
    1b34:	30 00 00 00 	swi	0x1
    1b38:	00 01 

00001b3a <_fname>:
    1b3a:	77 6f       	bad
    1b3c:	72 64       	bad
    1b3e:	2e 74       	xor	$r5, $r2
    1b40:	78 74       	bad
	...

00001b44 <_buffer>:
	...
