/*
 * Use trap.
 * See gdb/sim/m32r/traps.c:m32r_trap()
 * (case TRAP_SYSCALL :)
 * See gdb/sim/testsuite/m32r-elf/hello.s
 * See gdb/sim/testsuite/sim/m32r/hello.ms
 */

/* See gdb/sim/common/nltvals.def (NL_TARGET_m32r) */
#define SYS_exit  1
#define SYS_open  2
#define SYS_close 3
#define SYS_read  4
#define SYS_write 5

#define TRAP_SYSCALL 0

	.org	0x1c10 - 4 - 256 - 4 - 16

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	.long	_code

_code:
	ld24	sp, _start

	/*
	 * SYSCALL NO: R0
	 * ARG1-3: R1-R3
	 * RETVAL: R0, R1
	 * ERRCODE: R2
	 */

__r_open:
	ld24	r1, _fname
	ldi	r2, #0
	ldi	r0, #SYS_open
	trap	#TRAP_SYSCALL

__r_read:
	mv	r1, r0
	ld24	r2, _buffer
	ldi	r3, #16
	ldi	r0, #SYS_read
	trap	#TRAP_SYSCALL

_save_size:
	mv	r4, r0

__r_kopen:
	ld24	r1, _kname
	ldi	r2, #0
	ldi	r0, #SYS_open
	trap	#TRAP_SYSCALL

__r_kread:
	mv	r1, r0
	ld24	r2, _kbuffer
	mv	r3, r4
	ldi	r0, #SYS_read
	trap	#TRAP_SYSCALL

_exchange:
	ld24	r0, _buffer
	ld24	r1, _kbuffer
	mv	r5, r0
	add	r5, r4
1:	ldub	r2, @(r0)
	ldub	r3, @(r1)
	xor	r2, r3
	stb	r2, @(r0)
	addi	r0, #1
	addi	r1, #1
	bne	r0, r5, 1b

__r_write:
	ldi	r1, #1
	ld24	r2, _buffer
	mv	r3, r4
	ldi	r0, #SYS_write
	trap	#TRAP_SYSCALL

__r_kwrite:
	ldi	r1, #1
	ld24	r2, _kbuffer
	mv	r3, r4
	ldi	r0, #SYS_write
	trap	#TRAP_SYSCALL

__r_exit:
	ldi	r1, #0
	ldi	r0, #SYS_exit
	trap	#TRAP_SYSCALL

_fname:	.string	"password.txt"
_kname:	.string	"key.bin"

	.align 2
_code_end:

_buffer:
	.space	16
_kbuffer:
	.space	16
