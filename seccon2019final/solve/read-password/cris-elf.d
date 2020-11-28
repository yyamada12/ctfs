
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
    1b12:	6fae a01b 0000      	move.d 1ba0 <_fname>,r10
    1b18:	6fbe 0000 0000      	move.d 0 <_.xy-0x4>,r11
    1b1e:	4592                	moveq 5,r9
    1b20:	3de9                	break 13
    1b22:	0f05                	nop 

00001b24 <___read>:
    1b24:	6fbe b81b 0000      	move.d 1bb8 <_buffer>,r11
    1b2a:	6fce 1000 0000      	move.d 10 <_.d1>,r12
    1b30:	4392                	moveq 3,r9
    1b32:	3de9                	break 13
    1b34:	0f05                	nop 

00001b36 <_save_size>:
    1b36:	6ad6                	move.d r10,r13

00001b38 <___kopen>:
    1b38:	6fae ad1b 0000      	move.d 1bad <_kname>,r10
    1b3e:	6fbe 0000 0000      	move.d 0 <_.xy-0x4>,r11
    1b44:	4592                	moveq 5,r9
    1b46:	3de9                	break 13
    1b48:	0f05                	nop 

00001b4a <___kread>:
    1b4a:	6fbe c81b 0000      	move.d 1bc8 <_kbuffer>,r11
    1b50:	6dc6                	move.d r13,r12
    1b52:	4392                	moveq 3,r9
    1b54:	3de9                	break 13
    1b56:	0f05                	nop 

00001b58 <_exchange>:
    1b58:	6fae b81b 0000      	move.d 1bb8 <_buffer>,r10
    1b5e:	6fbe c81b 0000      	move.d 1bc8 <_kbuffer>,r11
    1b64:	6ac6                	move.d r10,r12
    1b66:	2dc6                	add.d r13,r12
    1b68:	4a8e                	move.b [r10+],r8
    1b6a:	4b9e                	move.b [r11+],r9
    1b6c:	b987                	xor r9,r8
    1b6e:	ffa1 c88b           	move.b r8,[r10-1]
    1b72:	eac6                	cmp.d r10,r12
    1b74:	f320                	bne 1b68 <_exchange+0x10>
    1b76:	0f05                	nop 

00001b78 <___write>:
    1b78:	41a2                	moveq 1,r10
    1b7a:	6fbe b81b 0000      	move.d 1bb8 <_buffer>,r11
    1b80:	6dc6                	move.d r13,r12
    1b82:	4492                	moveq 4,r9
    1b84:	3de9                	break 13
    1b86:	0f05                	nop 

00001b88 <___kwrite>:
    1b88:	41a2                	moveq 1,r10
    1b8a:	6fbe c81b 0000      	move.d 1bc8 <_kbuffer>,r11
    1b90:	6dc6                	move.d r13,r12
    1b92:	4492                	moveq 4,r9
    1b94:	3de9                	break 13
    1b96:	0f05                	nop 

00001b98 <___exit>:
    1b98:	40a2                	moveq 0,r10
    1b9a:	4192                	moveq 1,r9
    1b9c:	3de9                	break 13
    1b9e:	0f05                	nop 

00001ba0 <_fname>:
    1ba0:	7061                	bdap 112,r6
    1ba2:	7373                	orq -13,r7
    1ba4:	776f                	??0x6f77
    1ba6:	7264                	movs.w r2,r6
    1ba8:	2e74                	adds.b sp,r7
    1baa:	7874                	movs.w r8,r7
	...

00001bad <_kname>:
    1bad:	6b65 792e           	move p2,[r9=r11+r6.d]
    1bb1:	6269                	bdap.d [r2],r6
    1bb3:	6e00                	bcc 1c23 <_ebss+0x23>
    1bb5:	0000                	bcc .+2
	...

00001bb8 <_buffer>:
	...

00001bc8 <_kbuffer>:
	...
