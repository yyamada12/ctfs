
bfin-elf.x:     file format elf32-bfin


Disassembly of section .text:

00000000 <_.xy-0x4>:
       0:	00 00       	NOP;
	...

00000004 <_.xy>:
       4:	00 00       	NOP;
	...

00000008 <_.z>:
       8:	00 00       	NOP;
	...

0000000c <_.frame>:
       c:	00 00       	NOP;
	...

00000010 <_.d1>:
      10:	00 00       	NOP;
	...

00000014 <_.d2>:
      14:	00 00       	NOP;
	...

00000018 <_.d3>:
      18:	00 00       	NOP;
	...

0000001c <_.d4>:
	...

00001aec <_start>:
    1aec:	64 63       	R4 = -0x14 (X);		/*		R4=0xffffffec(-20) */
    1aee:	62 61       	R2 = 0x2c (X);		/*		R2=0x2c( 44) */
	...
    1afc:	00 1b       	IF CC JUMP 0x18fc <_.tmp+0x18bc>;
	...

00001b00 <_code>:
    1b00:	4e e1 00 00 	SP.H = 0x0;		/* (  0)	SP=0x0 */
    1b04:	0e e1 ec 1a 	SP.L = 0x1aec;		/* (6892)	SP=0x1aec <_start> */

00001b08 <___open>:
    1b08:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x0(  0) */
    1b0c:	00 e1 3c 1b 	R0.L = 0x1b3c;		/* (6972)	R0=0x1b3c <_fname>(6972) */
    1b10:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    1b12:	28 68       	P0 = 0x5 (X);		/*		P0=0x5(  5) */
    1b14:	a0 00       	EXCPT 0x0;

00001b16 <___read>:
    1b16:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x0(  0) */
    1b1a:	01 e1 46 1b 	R1.L = 0x1b46;		/* (6982)	R1=0x1b46 <_buffer>(6982) */
    1b1e:	02 61       	R2 = 0x20 (X);		/*		R2=0x20( 32) */
    1b20:	18 68       	P0 = 0x3 (X);		/*		P0=0x3(  3) */
    1b22:	a0 00       	EXCPT 0x0;

00001b24 <_save_size>:
    1b24:	18 30       	R3 = R0;

00001b26 <___write>:
    1b26:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    1b28:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x1b46 <_buffer>(6982) */
    1b2c:	01 e1 46 1b 	R1.L = 0x1b46;		/* (6982)	R1=0x1b46 <_buffer>(6982) */
    1b30:	13 30       	R2 = R3;
    1b32:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
    1b34:	a0 00       	EXCPT 0x0;

00001b36 <___exit>:
    1b36:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    1b38:	08 68       	P0 = 0x1 (X);		/*		P0=0x1(  1) */
    1b3a:	a0 00       	EXCPT 0x0;

00001b3c <_fname>:
    1b3c:	77 6f       	FP += -0x12;		/* (-18) */
    1b3e:	72 64       	R2 += 0xe;		/* ( 14) */
    1b40:	2e 74       	ILLEGAL;
    1b42:	78 74       	ILLEGAL;
	...

00001b46 <_buffer>:
	...