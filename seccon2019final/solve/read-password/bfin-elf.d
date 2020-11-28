
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
    1b0c:	00 e1 8c 1b 	R0.L = 0x1b8c;		/* (7052)	R0=0x1b8c <_fname>(7052) */
    1b10:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    1b12:	28 68       	P0 = 0x5 (X);		/*		P0=0x5(  5) */
    1b14:	a0 00       	EXCPT 0x0;

00001b16 <___read>:
    1b16:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x0(  0) */
    1b1a:	01 e1 a2 1b 	R1.L = 0x1ba2;		/* (7074)	R1=0x1ba2 <_buffer>(7074) */
    1b1e:	82 60       	R2 = 0x10 (X);		/*		R2=0x10( 16) */
    1b20:	18 68       	P0 = 0x3 (X);		/*		P0=0x3(  3) */
    1b22:	a0 00       	EXCPT 0x0;

00001b24 <_save_size>:
    1b24:	18 30       	R3 = R0;

00001b26 <___kopen>:
    1b26:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x1b8c <_fname>(7052) */
    1b2a:	00 e1 99 1b 	R0.L = 0x1b99;		/* (7065)	R0=0x1b99 <_kname>(7065) */
    1b2e:	01 60       	R1 = 0x0 (X);		/*		R1=0x0(  0) */
    1b30:	28 68       	P0 = 0x5 (X);		/*		P0=0x5(  5) */
    1b32:	a0 00       	EXCPT 0x0;

00001b34 <___kread>:
    1b34:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x0(  0) */
    1b38:	01 e1 b2 1b 	R1.L = 0x1bb2;		/* (7090)	R1=0x1bb2 <_kbuffer>(7090) */
    1b3c:	13 30       	R2 = R3;
    1b3e:	18 68       	P0 = 0x3 (X);		/*		P0=0x3(  3) */
    1b40:	a0 00       	EXCPT 0x0;

00001b42 <_exchange>:
    1b42:	40 e1 00 00 	R0.H = 0x0;		/* (  0)	R0=0x1b99 <_kname>(7065) */
    1b46:	00 e1 a2 1b 	R0.L = 0x1ba2;		/* (7074)	R0=0x1ba2 <_buffer>(7074) */
    1b4a:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x1bb2 <_kbuffer>(7090) */
    1b4e:	01 e1 b2 1b 	R1.L = 0x1bb2;		/* (7090)	R1=0x1bb2 <_kbuffer>(7090) */
    1b52:	00 32       	P0 = R0;
    1b54:	09 32       	P1 = R1;
    1b56:	13 32       	P2 = R3;
    1b58:	b2 e0 05 20 	LSETUP(0x1b5c <_exchange+0x1a>, 0x1b62 <_exchange+0x20>) LC1 = P2;
    1b5c:	00 98       	R0 = B[P0++] (Z);
    1b5e:	09 98       	R1 = B[P1++] (Z);
    1b60:	08 58       	R0 = R0 ^ R1;
    1b62:	80 e6 ff ff 	B[P0 + -0x1] = R0;

00001b66 <___write>:
    1b66:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    1b68:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x1bb2 <_kbuffer>(7090) */
    1b6c:	01 e1 a2 1b 	R1.L = 0x1ba2;		/* (7074)	R1=0x1ba2 <_buffer>(7074) */
    1b70:	13 30       	R2 = R3;
    1b72:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
    1b74:	a0 00       	EXCPT 0x0;

00001b76 <___kwrite>:
    1b76:	08 60       	R0 = 0x1 (X);		/*		R0=0x1(  1) */
    1b78:	41 e1 00 00 	R1.H = 0x0;		/* (  0)	R1=0x1ba2 <_buffer>(7074) */
    1b7c:	01 e1 b2 1b 	R1.L = 0x1bb2;		/* (7090)	R1=0x1bb2 <_kbuffer>(7090) */
    1b80:	13 30       	R2 = R3;
    1b82:	20 68       	P0 = 0x4 (X);		/*		P0=0x4(  4) */
    1b84:	a0 00       	EXCPT 0x0;

00001b86 <___exit>:
    1b86:	00 60       	R0 = 0x0 (X);		/*		R0=0x0(  0) */
    1b88:	08 68       	P0 = 0x1 (X);		/*		P0=0x1(  1) */
    1b8a:	a0 00       	EXCPT 0x0;

00001b8c <_fname>:
    1b8c:	70 61       	R0 = 0x2e (X);		/*		R0=0x2e( 46) */
    1b8e:	73 73       	ILLEGAL;
    1b90:	77 6f       	FP += -0x12;		/* (-18) */
    1b92:	72 64       	R2 += 0xe;		/* ( 14) */
    1b94:	2e 74       	ILLEGAL;
    1b96:	78 74       	ILLEGAL;
	...

00001b99 <_kname>:
    1b99:	6b          	ILLEGAL (UNALIGNED);
    1b9a:	65 79       	ILLEGAL;
    1b9c:	2e 62       	R6 = -0x3b (X);		/*		R6=0xffffffc5(-59) */
    1b9e:	69 6e       	P1 += -0x33;		/* (-51) */
	...

00001ba2 <_buffer>:
	...

00001bb2 <_kbuffer>:
	...
