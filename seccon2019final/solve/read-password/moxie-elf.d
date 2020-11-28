
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
    1aee:	01 20 00 00 	ldi.l	$r0, 0x1b94
    1af2:	1b 94 
    1af4:	01 30 00 00 	ldi.l	$r1, 0x0
    1af8:	00 00 
    1afa:	01 40 00 00 	ldi.l	$r2, 0x0
    1afe:	00 00 
    1b00:	30 00 00 00 	swi	0x2
    1b04:	00 02 

00001b06 <__read>:
    1b06:	01 30 00 00 	ldi.l	$r1, 0x1bac
    1b0a:	1b ac 
    1b0c:	01 40 00 00 	ldi.l	$r2, 0x10
    1b10:	00 10 
    1b12:	30 00 00 00 	swi	0x4
    1b16:	00 04 

00001b18 <_save_size>:
    1b18:	02 52       	mov	$r3, $r0

00001b1a <__kopen>:
    1b1a:	01 20 00 00 	ldi.l	$r0, 0x1ba1
    1b1e:	1b a1 
    1b20:	01 30 00 00 	ldi.l	$r1, 0x0
    1b24:	00 00 
    1b26:	01 40 00 00 	ldi.l	$r2, 0x0
    1b2a:	00 00 
    1b2c:	30 00 00 00 	swi	0x2
    1b30:	00 02 

00001b32 <__kread>:
    1b32:	01 30 00 00 	ldi.l	$r1, 0x1bbc
    1b36:	1b bc 
    1b38:	02 45       	mov	$r2, $r3
    1b3a:	30 00 00 00 	swi	0x4
    1b3e:	00 04 

00001b40 <_exchange>:
    1b40:	01 20 00 00 	ldi.l	$r0, 0x1bac
    1b44:	1b ac 
    1b46:	01 30 00 00 	ldi.l	$r1, 0x1bbc
    1b4a:	1b bc 
    1b4c:	02 42       	mov	$r2, $r0
    1b4e:	05 45       	add	$r2, $r3
    1b50:	1c 62       	ld.b	$r4, ($r0)
    1b52:	1c 73       	ld.b	$r5, ($r1)
    1b54:	2e 67       	xor	$r4, $r5
    1b56:	1e 26       	st.b	($r0), $r4
    1b58:	82 01       	inc	$r0, 0x1
    1b5a:	83 01       	inc	$r1, 0x1
    1b5c:	0e 24       	cmp	$r0, $r2
    1b5e:	c7 f8       	bne	1b50 <_exchange+0x10>

00001b60 <__write>:
    1b60:	01 20 00 00 	ldi.l	$r0, 0x1
    1b64:	00 01 
    1b66:	01 30 00 00 	ldi.l	$r1, 0x1bac
    1b6a:	1b ac 
    1b6c:	02 45       	mov	$r2, $r3
    1b6e:	30 00 00 00 	swi	0x5
    1b72:	00 05 

00001b74 <__kwrite>:
    1b74:	01 20 00 00 	ldi.l	$r0, 0x1
    1b78:	00 01 
    1b7a:	01 30 00 00 	ldi.l	$r1, 0x1bbc
    1b7e:	1b bc 
    1b80:	02 45       	mov	$r2, $r3
    1b82:	30 00 00 00 	swi	0x5
    1b86:	00 05 

00001b88 <__exit>:
    1b88:	01 20 00 00 	ldi.l	$r0, 0x0
    1b8c:	00 00 
    1b8e:	30 00 00 00 	swi	0x1
    1b92:	00 01 

00001b94 <_fname>:
    1b94:	70 61       	bad
    1b96:	73 73       	bad
    1b98:	77 6f       	bad
    1b9a:	72 64       	bad
    1b9c:	2e 74       	xor	$r5, $r2
    1b9e:	78 74       	bad
	...

00001ba1 <_kname>:
    1ba1:	6b 65       	bad
    1ba3:	79 2e       	bad
    1ba5:	62 69       	bad
    1ba7:	6e 00       	bad
    1ba9:	00 00       	bad
	...

00001bac <_buffer>:
	...

00001bbc <_kbuffer>:
	...
