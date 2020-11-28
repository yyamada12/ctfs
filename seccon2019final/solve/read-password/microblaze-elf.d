
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
    1afc:	30a01c20 	addik	r5, r0, 7200	// 1c20 <_fname>
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
    1b28:	30c01c38 	addik	r6, r0, 7224	// 1c38 <_buffer>
    1b2c:	30e00010 	addik	r7, r0, 16	// 10 <_.d1>
    1b30:	30600003 	addik	r3, r0, 3
    1b34:	f8610000 	swi	r3, r1, 0
    1b38:	f8a10004 	swi	r5, r1, 4
    1b3c:	f8c10008 	swi	r6, r1, 8
    1b40:	f8e1000c 	swi	r7, r1, 12
    1b44:	10a10000 	addk	r5, r1, r0
    1b48:	986c2800 	brk	r3, r5

00001b4c <_save_size>:
    1b4c:	11001800 	addk	r8, r0, r3

00001b50 <__kopen>:
    1b50:	30a01c2d 	addik	r5, r0, 7213	// 1c2d <_kname>
    1b54:	30c00000 	addik	r6, r0, 0
    1b58:	30e00000 	addik	r7, r0, 0
    1b5c:	30600005 	addik	r3, r0, 5
    1b60:	f8610000 	swi	r3, r1, 0
    1b64:	f8a10004 	swi	r5, r1, 4
    1b68:	f8c10008 	swi	r6, r1, 8
    1b6c:	f8e1000c 	swi	r7, r1, 12
    1b70:	10a10000 	addk	r5, r1, r0
    1b74:	986c2800 	brk	r3, r5

00001b78 <__kread>:
    1b78:	10a01800 	addk	r5, r0, r3
    1b7c:	30c01c48 	addik	r6, r0, 7240	// 1c48 <_kbuffer>
    1b80:	10e04000 	addk	r7, r0, r8
    1b84:	30600003 	addik	r3, r0, 3
    1b88:	f8610000 	swi	r3, r1, 0
    1b8c:	f8a10004 	swi	r5, r1, 4
    1b90:	f8c10008 	swi	r6, r1, 8
    1b94:	f8e1000c 	swi	r7, r1, 12
    1b98:	10a10000 	addk	r5, r1, r0
    1b9c:	986c2800 	brk	r3, r5

00001ba0 <_exchange>:
    1ba0:	30601c38 	addik	r3, r0, 7224	// 1c38 <_buffer>
    1ba4:	30801c48 	addik	r4, r0, 7240	// 1c48 <_kbuffer>
    1ba8:	10e00000 	addk	r7, r0, r0
    1bac:	c0a71800 	lbu	r5, r7, r3
    1bb0:	c0c72000 	lbu	r6, r7, r4
    1bb4:	88a53000 	xor	r5, r5, r6
    1bb8:	d0a71800 	sb	r5, r7, r3
    1bbc:	30e70001 	addik	r7, r7, 1
    1bc0:	89274000 	xor	r9, r7, r8
    1bc4:	bc29ffe8 	bnei	r9, -24		// 1bac

00001bc8 <__write>:
    1bc8:	30a00001 	addik	r5, r0, 1
    1bcc:	30c01c38 	addik	r6, r0, 7224	// 1c38 <_buffer>
    1bd0:	10e04000 	addk	r7, r0, r8
    1bd4:	30600004 	addik	r3, r0, 4	// 4 <_.xy>
    1bd8:	f8610000 	swi	r3, r1, 0
    1bdc:	f8a10004 	swi	r5, r1, 4
    1be0:	f8c10008 	swi	r6, r1, 8
    1be4:	f8e1000c 	swi	r7, r1, 12
    1be8:	10a10000 	addk	r5, r1, r0
    1bec:	986c2800 	brk	r3, r5

00001bf0 <__kwrite>:
    1bf0:	30a00001 	addik	r5, r0, 1
    1bf4:	30c01c48 	addik	r6, r0, 7240	// 1c48 <_kbuffer>
    1bf8:	10e04000 	addk	r7, r0, r8
    1bfc:	30600004 	addik	r3, r0, 4	// 4 <_.xy>
    1c00:	f8610000 	swi	r3, r1, 0
    1c04:	f8a10004 	swi	r5, r1, 4
    1c08:	f8c10008 	swi	r6, r1, 8
    1c0c:	f8e1000c 	swi	r7, r1, 12
    1c10:	10a10000 	addk	r5, r1, r0
    1c14:	986c2800 	brk	r3, r5

00001c18 <__exit>:
    1c18:	30600000 	addik	r3, r0, 0
    1c1c:	b8000000 	bri	0		// 1c1c

00001c20 <_fname>:
    1c20:	70617373 		r3, r1, r14
    1c24:	776f7264 		r27, r15, r14
    1c28:	2e747874 	rsubic	r19, r20, 30836
	...

00001c2d <_kname>:
    1c2d:	6b65792e 		r27, r5, r15
    1c31:	62696e00 	muli	r19, r9, 28160
    1c35:	Address 0x00001c35 is out of bounds.


00001c38 <_buffer>:
	...

00001c48 <_kbuffer>:
	...
