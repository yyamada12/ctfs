
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
    1b10:	fc dc a3 1b 	mov	7075,a0
    1b14:	00 00 
    1b16:	f1 d1       	mov	a0,d1
    1b18:	8a 00       	mov	0,d2
    1b1a:	4a 0c       	mov	d2,(12,sp)
    1b1c:	80 02       	mov	2,d0
    1b1e:	f0 c0       	syscall	

00001b20 <___r_read>:
    1b20:	fc dc b8 1b 	mov	7096,a0
    1b24:	00 00 
    1b26:	f1 d2       	mov	a0,d2
    1b28:	4a 0c       	mov	d2,(12,sp)
    1b2a:	8f 10       	mov	16,d3
    1b2c:	4e 10       	mov	d3,(16,sp)
    1b2e:	80 04       	mov	4,d0
    1b30:	f0 c0       	syscall	

00001b32 <_save_size>:
    1b32:	46 14       	mov	d1,(20,sp)

00001b34 <___r_kopen>:
    1b34:	fc dc b0 1b 	mov	7088,a0
    1b38:	00 00 
    1b3a:	f1 d1       	mov	a0,d1
    1b3c:	8a 00       	mov	0,d2
    1b3e:	4a 0c       	mov	d2,(12,sp)
    1b40:	80 02       	mov	2,d0
    1b42:	f0 c0       	syscall	

00001b44 <___r_kread>:
    1b44:	fc dc c8 1b 	mov	7112,a0
    1b48:	00 00 
    1b4a:	f1 d2       	mov	a0,d2
    1b4c:	4a 0c       	mov	d2,(12,sp)
    1b4e:	5b 14       	mov	(20,sp),d3
    1b50:	4e 10       	mov	d3,(16,sp)
    1b52:	80 04       	mov	4,d0
    1b54:	f0 c0       	syscall	

00001b56 <_exchange>:
    1b56:	fc dc b8 1b 	mov	7096,a0
    1b5a:	00 00 
    1b5c:	fc dd c8 1b 	mov	7112,a1
    1b60:	00 00 
    1b62:	f1 d2       	mov	a0,d2
    1b64:	58 14       	mov	(20,sp),d0
    1b66:	e2          	add	d0,d2

00001b67 <.L11>:
    1b67:	f0 40       	movbu	(a0),d0
    1b69:	f0 45       	movbu	(a1),d1
    1b6b:	f2 24       	xor	d1,d0
    1b6d:	f0 50       	movbu	d0,(a0)
    1b6f:	41          	inc	a0
    1b70:	45          	inc	a1
    1b71:	f1 92       	cmp	a0,d2
    1b73:	c9 f4       	bne	1b67 <.L11>

00001b75 <___r_write>:
    1b75:	85 01       	mov	1,d1
    1b77:	fc dc b8 1b 	mov	7096,a0
    1b7b:	00 00 
    1b7d:	f1 d2       	mov	a0,d2
    1b7f:	4a 0c       	mov	d2,(12,sp)
    1b81:	5b 14       	mov	(20,sp),d3
    1b83:	4e 10       	mov	d3,(16,sp)
    1b85:	80 05       	mov	5,d0
    1b87:	f0 c0       	syscall	

00001b89 <___r_kwrite>:
    1b89:	85 01       	mov	1,d1
    1b8b:	fc dc c8 1b 	mov	7112,a0
    1b8f:	00 00 
    1b91:	f1 d2       	mov	a0,d2
    1b93:	4a 0c       	mov	d2,(12,sp)
    1b95:	5b 14       	mov	(20,sp),d3
    1b97:	4e 10       	mov	d3,(16,sp)
    1b99:	80 05       	mov	5,d0
    1b9b:	f0 c0       	syscall	

00001b9d <___r_exit>:
    1b9d:	85 00       	mov	0,d1
    1b9f:	80 01       	mov	1,d0
    1ba1:	f0 c0       	syscall	

00001ba3 <_fname>:
    1ba3:	70          	mov	(a0),d0
    1ba4:	61          	mov	d0,(a1)
    1ba5:	73          	mov	(a3),d0
    1ba6:	73          	mov	(a3),d0
    1ba7:	77          	mov	(a3),d1
    1ba8:	6f          	mov	d3,(a3)
    1ba9:	72          	mov	(a2),d0
    1baa:	64          	mov	d1,(a0)
    1bab:	2e 74 78    	mov	30836,d2
    1bae:	74          	mov	(a0),d1
	...

00001bb0 <_kname>:
    1bb0:	6b          	mov	d2,(a3)
    1bb1:	65          	mov	d1,(a1)
    1bb2:	79          	mov	(a1),d2
    1bb3:	2e 62 69    	mov	26978,d2
    1bb6:	6e          	mov	d3,(a2)
	...

00001bb8 <_buffer>:
	...

00001bc8 <_kbuffer>:
	...
