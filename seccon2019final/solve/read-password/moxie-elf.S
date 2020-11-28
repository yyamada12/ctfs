/*
 * Use swi instruction.
 * See gdb/sim/moxie/interp.c:sim_engine_run()
 * (case 0x30:)
 */

#define SYS_exit  1
#define SYS_open  2
#define SYS_close 3 /* original is not defined */
#define SYS_read  4
#define SYS_write 5

	.org	0x1c10 - 12 - 4 - 0xff - 0x19 - 12 - 0x14

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	.long	0	/* R6 */
	.long	0	/* FP */
	.long	_code
	.long	0	/* a slot for the static chain */

_code:
	ldi.l	$sp, _start

	/*
	 * SYSCALL NO: immediate value
	 * ARG1-3: R0-R2
	 * RETVAL: R0
	 * ERRCODE: -
	 */

__open:
	ldi.l	$r0, _fname
	ldi.l	$r1, 0
	ldi.l	$r2, 0
	swi	SYS_open

__read:
	ldi.l	$r1, _buffer
	ldi.l	$r2, 16
	swi	SYS_read

_save_size:
	mov	$r3, $r0

__kopen:
	ldi.l	$r0, _kname
	ldi.l	$r1, 0
	ldi.l	$r2, 0
	swi	SYS_open

__kread:
	ldi.l	$r1, _kbuffer
	mov	$r2, $r3
	swi	SYS_read

_exchange:
	ldi.l	$r0, _buffer
	ldi.l	$r1, _kbuffer
	mov	$r2, $r0
	add	$r2, $r3
1:	ld.b	$r4, ($r0)
	ld.b	$r5, ($r1)
	xor	$r4, $r5
	st.b	($r0), $r4
	inc	$r0, 1
	inc	$r1, 1
	cmp	$r0, $r2
	bne	1b

__write:
	ldi.l	$r0, 1
	ldi.l	$r1, _buffer
	mov	$r2, $r3
	swi	SYS_write

__kwrite:
	ldi.l	$r0, 1
	ldi.l	$r1, _kbuffer
	mov	$r2, $r3
	swi	SYS_write

__exit:
	ldi.l	$r0, 0
	swi	SYS_exit

_fname:	.string	"password.txt"
_kname:	.string	"key.bin"

	.align 2
_code_end:

_buffer:
	.space	16
_kbuffer:
	.space	16
