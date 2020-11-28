
microblaze-elf.x:     file format elf32-microblaze


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	
00000004 <_.xy>:
       4:	
00000008 <_.z>:
       8:	
0000000c <_.frame>:
       c:	
00000010 <_.d1>:
      10:	
00000014 <_.d2>:
      14:	
00000018 <_.d3>:
      18:	
0000001c <_.d4>:
	...

00001ae4 <_start>:
    1ae4:	61626364 	muli	r11, r2, 25444
	...
    1af4:	00001af0 		r0, r0, r3

00001af8 <_code>:
    1af8:	30201ae4 	addik	r1, r0, 6884	// 1ae4 <_start>

00001afc <__open>:
    1afc:	30a01b80 	addik	r5, r0, 7040	// 1b80 <_fname>
    1b00:	30c00000 	addik	r6, r0, 0
    1b04:	30e00000 	addik	r7, r0, 0
    1b08:	30600005 	addik	r3, r0, 5
    1b0c:	f8610000 	swi	r3, r1, 0
    1b10:	f8a10004 	swi	r5, r1, 4
    1b14:	f8c10008 	swi	r6, r1, 8
    1b18:	f8e1000c 	swi	r7, r1, 12
    1b1c:	10a10000 	addk	r5, r1, r0
    1b20:	986c2800 	brk	r3, r5

00001b24 <__read>:
    1b24:	10a01800 	addk	r5, r0, r3
    1b28:	30c01b8c 	addik	r6, r0, 7052	// 1b8c <_buffer>
    1b2c:	30e00020 	addik	r7, r0, 32
    1b30:	30600003 	addik	r3, r0, 3
    1b34:	f8610000 	swi	r3, r1, 0
    1b38:	f8a10004 	swi	r5, r1, 4
    1b3c:	f8c10008 	swi	r6, r1, 8
    1b40:	f8e1000c 	swi	r7, r1, 12
    1b44:	10a10000 	addk	r5, r1, r0
    1b48:	986c2800 	brk	r3, r5

00001b4c <_save_size>:
    1b4c:	11001800 	addk	r8, r0, r3

00001b50 <__write>:
    1b50:	30a00001 	addik	r5, r0, 1
    1b54:	30c01b8c 	addik	r6, r0, 7052	// 1b8c <_buffer>
    1b58:	10e04000 	addk	r7, r0, r8
    1b5c:	30600004 	addik	r3, r0, 4	// 4 <_.xy>
    1b60:	f8610000 	swi	r3, r1, 0
    1b64:	f8a10004 	swi	r5, r1, 4
    1b68:	f8c10008 	swi	r6, r1, 8
    1b6c:	f8e1000c 	swi	r7, r1, 12
    1b70:	10a10000 	addk	r5, r1, r0
    1b74:	986c2800 	brk	r3, r5

00001b78 <__exit>:
    1b78:	30600000 	addik	r3, r0, 0
    1b7c:	b8000000 	bri	0		// 1b7c

00001b80 <_fname>:
    1b80:	776f7264 		r27, r15, r14
    1b84:	2e747874 	rsubic	r19, r20, 30836
    1b88:	
00001b8c <_buffer>:
	...
