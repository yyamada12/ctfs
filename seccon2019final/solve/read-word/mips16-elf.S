/*
 * Use reserved instruction.
 * See gdb/sim/mips/interp.c:signal_exception(),sim_monitor()
 * (ReservedInstruction)
 * Memory address is defined by K0BASE. (See gdb/sim/mips/interp.c)
 */

#define SYS_exit  17
#define SYS_open   6
#define SYS_read   7
#define SYS_write  8
#define SYS_close 10

#if 1 /* New definition (changed from gdb-7.11) */
#define RSVD_INSTRUCTION 0x00000039
#else /* Old definition (until gdb-7.10.1) */
#define RSVD_INSTRUCTION 0x00000005
#endif
#define RSVD(arg) ((((arg) << 1) << 6) | RSVD_INSTRUCTION)

/* #define EXIT_BY_SYSCALL */
/* #define EXIT_BY_BREAK */

#if 0
	.org	0x7fff8810 - 280 - 40 + 16
#else
	.org	0x00000810 - 280 - 40 + 16
#endif

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	.long	0
	.long	_code

_code:
	lw	$2, _start_addr
	move	$sp, $2

	/*
	 * SYSCALL NO: immediate value
	 * ARG1-3: A0-A2
	 * RETVAL: V0
	 * ERRCODE: -
	 */

__open:
	lw	$a0, _fname_addr
	li	$a1, 0
	jal	_open_syscall
	nop

__read:
	move	$a0, $v0
	lw	$a1, _buffer_addr
	li	$a2, 32
	jal	_read_syscall
	nop

_save_size:
	move	$a3, $v0

__write:
	li	$a0, 1
	lw	$a1, _buffer_addr
	move	$a2, $a3
	jal	_write_syscall
	nop

__exit:
	li	$a0, 0
	jal	_exit_syscall
	nop

_open_syscall:
	.long	RSVD(SYS_open)
#if 0 /* auto return to RA (See gdb/sim/mips/interp.c:signal_exception()) */
	jr	$ra
	nop
#endif

_read_syscall:
	.long	RSVD(SYS_read)
#if 0 /* auto return to RA (See gdb/sim/mips/interp.c:signal_exception()) */
	jr	$ra
	nop
#endif

_write_syscall:
	.long	RSVD(SYS_write)
#if 0 /* auto return to RA (See gdb/sim/mips/interp.c:signal_exception()) */
	jr	$ra
	nop
#endif

	.align 2
_exit_syscall:
	move	$a0, $zero
#if 1
#ifdef EXIT_BY_SYSCALL
	.long	RSVD(SYS_exit)
#elif defined(EXIT_BY_BREAK)
	/*
	 * To avoid exit message.
	 * (See gdb/sim/mips/mips.igen:break,HALT_INSTRUCTION)
	 */
	break	1023
#else /* 0x03ff000d is same as break 1023. */
	.long	0x03ff000d
#endif
#else
	break	0
#endif
#if 0 /* auto return to RA (See gdb/sim/mips/interp.c:signal_exception()) */
	jr	$ra
	nop
#endif

_fname:	.string	"word.txt"

	.align 2
_start_addr:
	.long	_start
_fname_addr:
	.long	_fname
_buffer_addr:
	.long	_buffer
_code_end:

_buffer:
	.space	32
