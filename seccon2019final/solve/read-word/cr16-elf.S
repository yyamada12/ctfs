/*
 * Use system call trap.
 * See gdb/sim/cr16/simops.c:OP_C_C() (case 8:)
 * See gdb/sim/testsuite/sim/cr16/hello.ms
 */

/* See gdb/sim/common/nltvals.def (NL_TARGET_cr16) */
#if 1 /* New definition (changed from gdb-7.6) */
#define SYS_exit  0x410
#define SYS_open  0x401
#define SYS_close 0x402
#define SYS_read  0x403
#define SYS_write 0x404
#else /* Old definition (until gdb-7.5.1) */
#define SYS_exit  1
#define SYS_open  2
#define SYS_close 3
#define SYS_read  4
#define SYS_write 5
#endif

	.org	0x1c10 - 4 - 0x100 - 4 - 0x10

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	/* Address is shifted. (_code >> 1) */
	.long	((0x1c10 - 4 - 0x100 - 4 - 0x10) + 20) >> 1

_code:
	movw	$_start:l, sp

	/*
	 * SYSCALL NO: R0
	 * ARG1-: R2-
	 * RETVAL: R0
	 * ERRCODE: R4
	 */

___open:
	movw	$_fname:l, r2
	movw	$0:s, r3
	movw	$SYS_open:s, r0
	excp	8

___read:
	movw	r0, r2
	movw	$_buffer:l, r3
	movw	$0:s, r4
	movw	$32:s, r5
	movw	$SYS_read:s, r0
	excp	8

_save_size:
	movw	r0, r6

___write:
	movw	$1:s, r2
	movw	$_buffer:l, r3
	movw	$0:s, r4
	movw	r6, r5
	movw	$SYS_write:s, r0
	excp	8

___exit:
	movw	$0:s, r2
	movw	$SYS_exit:s, r0
	excp	8

_fname:	.string	"word.txt"

	.align 2
_code_end:

_buffer:
	.space	32
