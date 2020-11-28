/*
 * Use NetBSD/Linux system call emulation.
 * See gdb/sim/ppc/emul_generic.c,emul_unix.c,emul_netbsd.c
 * Use -e option to run simulator. (Example: -e netbsd or -e linux)
 */

#define SYS_exit  1
#define SYS_read  3
#define SYS_write 4
#define SYS_open  5
#define SYS_close 6

	.org	0x1c10 - 16 - 272 - 32 + 8

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	.long	0
	.long	0
	.long	0
	.long	_code

_code:
	lis	%r1, _start@h
	ori	%r1, %r1, _start@l
	addi	%r1, %r1, -16

	/*
	 * SYSCALL NO: R0
	 * ARG1-3: R3-R5
	 * RETVAL: R3
	 * ERRCODE: R3, CR(0)
	 */

__open:
	lis	%r3, _fname@h
	ori	%r3, %r3, _fname@l
	li	%r4, 0
	li	%r0, SYS_open
	sc

__read:
	lis	%r4, _buffer@h
	ori	%r4, %r4, _buffer@l
	li	%r5, 16
	li	%r0, SYS_read
	sc

_save_size:
	mr	%r6, %r3

__kopen:
	lis	%r3, _kname@h
	ori	%r3, %r3, _kname@l
	li	%r4, 0
	li	%r0, SYS_open
	sc

__kread:
	lis	%r4, _kbuffer@h
	ori	%r4, %r4, _kbuffer@l
	mr	%r5, %r6
	li	%r0, SYS_read
	sc

_exchange:
	lis	%r3, _buffer@h
	ori	%r3, %r3, _buffer@l
	lis	%r4, _kbuffer@h
	ori	%r4, %r4, _kbuffer@l
	addi	%r3, %r3, -1
	addi	%r4, %r4, -1
	mtctr	%r6
1:	lbzu	%r7, 1(%r3)
	lbzu	%r8, 1(%r4)
	xor	%r7, %r7, %r8
	stb	%r7, 0(%r3)
	bdnz	1b

__write:
	li	%r3, 1
	lis	%r4, _buffer@h
	ori	%r4, %r4, _buffer@l
	mr	%r5, %r6
	li	%r0, SYS_write
	sc

__kwrite:
	li	%r3, 1
	lis	%r4, _kbuffer@h
	ori	%r4, %r4, _kbuffer@l
	mr	%r5, %r6
	li	%r0, SYS_write
	sc

__exit:
	li	%r3, 0
	li	%r0, SYS_exit
	sc

_fname:	.string	"password.txt"
_kname:	.string	"key.bin"

	.align 2
_code_end:

_buffer:
	.space	16
_kbuffer:
	.space	16
