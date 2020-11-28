
mn10300-elf.x:     file format elf32-mn10300


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	00          	clr	d0
       1:	00          	clr	d0
	...

00000004 <_.xy>:
       4:	00          	clr	d0
       5:	00          	clr	d0
	...

00000008 <_.z>:
       8:	00          	clr	d0
       9:	00          	clr	d0
	...

0000000c <_.frame>:
       c:	00          	clr	d0
       d:	00          	clr	d0
	...

00000010 <_.d1>:
      10:	00          	clr	d0
      11:	00          	clr	d0
	...

00000014 <_.d2>:
      14:	00          	clr	d0
      15:	00          	clr	d0
	...

00000018 <_.d3>:
      18:	00          	clr	d0
      19:	00          	clr	d0
	...

0000001c <_.d4>:
	...

00001af4 <_start>:
    1af4:	64          	mov	d1,(a0)
    1af5:	63          	mov	d0,(a3)
    1af6:	62          	mov	d0,(a2)
    1af7:	61          	mov	d0,(a1)
	...
    1b04:	08          	clr	d2
    1b05:	1b          	exth	d3
	...

00001b08 <_code>:
    1b08:	fc dc f4 1a 	mov	6900,a0
    1b0c:	00 00 
    1b0e:	f2 f0       	mov	a0,sp

00001b10 <___r_open>:
    1b10:	fc dc 4e 1b 	mov	6990,a0
    1b14:	00 00 
    1b16:	f1 d1       	mov	a0,d1
    1b18:	8a 00       	mov	0,d2
    1b1a:	4a 0c       	mov	d2,(12,sp)
    1b1c:	80 02       	mov	2,d0
    1b1e:	f0 c0       	syscall	

00001b20 <___r_read>:
    1b20:	fc dc 58 1b 	mov	7000,a0
    1b24:	00 00 
    1b26:	f1 d2       	mov	a0,d2
    1b28:	4a 0c       	mov	d2,(12,sp)
    1b2a:	8f 20       	mov	32,d3
    1b2c:	4e 10       	mov	d3,(16,sp)
    1b2e:	80 04       	mov	4,d0
    1b30:	f0 c0       	syscall	

00001b32 <_save_size>:
    1b32:	46 14       	mov	d1,(20,sp)

00001b34 <___r_write>:
    1b34:	85 01       	mov	1,d1
    1b36:	fc dc 58 1b 	mov	7000,a0
    1b3a:	00 00 
    1b3c:	f1 d2       	mov	a0,d2
    1b3e:	4a 0c       	mov	d2,(12,sp)
    1b40:	5b 14       	mov	(20,sp),d3
    1b42:	4e 10       	mov	d3,(16,sp)
    1b44:	80 05       	mov	5,d0
    1b46:	f0 c0       	syscall	

00001b48 <___r_exit>:
    1b48:	85 00       	mov	0,d1
    1b4a:	80 01       	mov	1,d0
    1b4c:	f0 c0       	syscall	

00001b4e <_fname>:
    1b4e:	77          	mov	(a3),d1
    1b4f:	6f          	mov	d3,(a3)
    1b50:	72          	mov	(a2),d0
    1b51:	64          	mov	d1,(a0)
    1b52:	2e 74 78    	mov	30836,d2
    1b55:	74          	mov	(a0),d1
	...

00001b58 <_buffer>:
	...
