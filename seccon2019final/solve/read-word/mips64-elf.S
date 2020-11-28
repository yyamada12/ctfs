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
#define EXIT_BY_BREAK

#define ADDRESS_OFFSET 0x00100000

#if 0
	.org	(ADDRESS_OFFSET + 0x0810) - 296 - 56 + 32
#else
	.org	0x00000810 - 296 - 56 + 32
#endif

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	.quad	_code

_code:
	lui	$sp, %hi(_start)
	addiu	$sp, $sp, %lo(_start)

	/*
	 * SYSCALL NO: immediate value
	 * ARG1-3: A0-A2
	 * RETVAL: V0
	 * ERRCODE: -
	 */

__open:
	lui	$a0, (ADDRESS_OFFSET >> 16)
	addiu	$a0, $a0, %lo(_fname)
	li	$a1, 0
	lui	$ra, (ADDRESS_OFFSET >> 16)
	addiu	$ra, $ra, %lo(1f)
	.long	RSVD(SYS_open)
#if 0 /* auto return to RA (See gdb/sim/mips/interp.c:signal_exception()) */
	jr	$ra
	nop
#endif
1:

__read:
	move	$a0, $v0
	lui	$a1, (ADDRESS_OFFSET >> 16)
	addiu	$a1, $a1, %lo(_buffer)
	li	$a2, 32
	lui	$ra, (ADDRESS_OFFSET >> 16)
	addiu	$ra, $ra, %lo(1f)
	.long	RSVD(SYS_read)
#if 0 /* auto return to RA (See gdb/sim/mips/interp.c:signal_exception()) */
	jr	$ra
	nop
#endif
1:

_save_size:
	move	$a3, $v0

__write:
	li	$a0, 1
	lui	$a1, (ADDRESS_OFFSET >> 16)
	addiu	$a1, $a1, %lo(_buffer)
	move	$a2, $a3
	lui	$ra, (ADDRESS_OFFSET >> 16)
	addiu	$ra, $ra, %lo(1f)
	.long	RSVD(SYS_write)
#if 0 /* auto return to RA (See gdb/sim/mips/interp.c:signal_exception()) */
	jr	$ra
	nop
#endif
1:

__exit:
	move	$a0, $zero
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

_fname:	.string	"word.txt"

	.align 3
_code_end:

_buffer:
	.space	32
