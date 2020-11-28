
cris-elf.x:     file format elf32-us-cris


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	0000                	bcc .+2
	...

00000004 <_.xy>:
       4:	0000                	bcc .+2
	...

00000008 <_.z>:
       8:	0000                	bcc .+2
	...

0000000c <_.frame>:
       c:	0000                	bcc .+2
	...

00000010 <_.d1>:
      10:	0000                	bcc .+2
	...

00000014 <_.d2>:
      14:	0000                	bcc .+2
	...

00000018 <_.d3>:
      18:	0000                	bcc .+2
	...

0000001c <_.d4>:
	...

00001af8 <_start>:
    1af8:	6463                	orq -28,r6
    1afa:	6261                	bdap 98,r6
	...
    1b08:	0c1b                	and.b [r12],r1
	...

00001b0c <_code>:
    1b0c:	6fee f81a 0000      	move.d 1af8 <_start>,sp

00001b12 <___open>:
    1b12:	6fae 501b 0000      	move.d 1b50 <_fname>,r10
    1b18:	6fbe 0000 0000      	move.d 0 <_.xy-0x4>,r11
    1b1e:	4592                	moveq 5,r9
    1b20:	3de9                	break 13
    1b22:	0f05                	nop 

00001b24 <___read>:
    1b24:	6fbe 5c1b 0000      	move.d 1b5c <_buffer>,r11
    1b2a:	6fce 2000 0000      	move.d 20 <_.d4+0x4>,r12
    1b30:	4392                	moveq 3,r9
    1b32:	3de9                	break 13
    1b34:	0f05                	nop 

00001b36 <_save_size>:
    1b36:	6ad6                	move.d r10,r13

00001b38 <___write>:
    1b38:	41a2                	moveq 1,r10
    1b3a:	6fbe 5c1b 0000      	move.d 1b5c <_buffer>,r11
    1b40:	6dc6                	move.d r13,r12
    1b42:	4492                	moveq 4,r9
    1b44:	3de9                	break 13
    1b46:	0f05                	nop 

00001b48 <___exit>:
    1b48:	40a2                	moveq 0,r10
    1b4a:	4192                	moveq 1,r9
    1b4c:	3de9                	break 13
    1b4e:	0f05                	nop 

00001b50 <_fname>:
    1b50:	776f                	??0x6f77
    1b52:	7264                	movs.w r2,r6
    1b54:	2e74                	adds.b sp,r7
    1b56:	7874                	movs.w r8,r7
    1b58:	0000                	bcc .+2
	...

00001b5c <_buffer>:
	...
