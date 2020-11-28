
cr16-elf.x:     file format elf32-cr16


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	00 00       	illegal 
	...

00000004 <_.xy>:
       4:	00 00       	illegal 
	...

00000008 <_.z>:
       8:	00 00       	illegal 
	...

0000000c <_.frame>:
       c:	00 00       	illegal 
	...

00000010 <_.d1>:
      10:	00 00       	illegal 
	...

00000014 <_.d2>:
      14:	00 00       	illegal 
	...

00000018 <_.d3>:
      18:	00 00       	illegal 
	...

0000001c <_.d4>:
	...

00001af8 <_start>:
    1af8:	64 63       	muluw	r6,(r5,r4)
    1afa:	62 61       	addd	(r7,r6),(r3,r2)
	...
    1b08:	86 0d       	bne0b	r6,*+0x32 <_.d4+0x16>:s
	...

00001b0c <_code>:
    1b0c:	bf 5a f8 1a 	movw	$0x1af8:m,r15

00001b10 <___open>:
    1b10:	b2 5a 48 1b 	movw	$0x1b48:m,r2
    1b14:	03 5a       	movw	$0x0:s,r3
    1b16:	b0 5a 01 04 	movw	$0x401:m,r0
    1b1a:	c8 00       	excp	bpt

00001b1c <___read>:
    1b1c:	02 5b       	movw	r0,r2
    1b1e:	b3 5a 52 1b 	movw	$0x1b52:m,r3
    1b22:	04 5a       	movw	$0x0:s,r4
    1b24:	b5 5a 20 00 	movw	$0x20:m,r5
    1b28:	b0 5a 03 04 	movw	$0x403:m,r0
    1b2c:	c8 00       	excp	bpt

00001b2e <_save_size>:
    1b2e:	06 5b       	movw	r0,r6

00001b30 <___write>:
    1b30:	12 5a       	movw	$0x1:s,r2
    1b32:	b3 5a 52 1b 	movw	$0x1b52:m,r3
    1b36:	04 5a       	movw	$0x0:s,r4
    1b38:	65 5b       	movw	r6,r5
    1b3a:	b0 5a 04 04 	movw	$0x404:m,r0
    1b3e:	c8 00       	excp	bpt

00001b40 <___exit>:
    1b40:	02 5a       	movw	$0x0:s,r2
    1b42:	b0 5a 10 04 	movw	$0x410:m,r0
    1b46:	c8 00       	excp	bpt

00001b48 <_fname>:
    1b48:	77 6f 72 64 	cbitw	$0x7:s,0x76472 <_end+0x74472>:m
    1b4c:	2e 74 78 74 	sbitw	$0x2:s,[r12]0xe7478:m
	...

00001b52 <_buffer>:
	...
