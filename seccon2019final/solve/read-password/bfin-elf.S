/*
 * Use system call.
 * See gdb/sim/bfin/interp.c:bfin_syscall(),dv-bfin_cec.c:cec_exception()
 * (case VEC_SYS:)
 * See gdb/sim/testsuite/sim/bfin/cec-system-call.S (EXCPT 0)
 */

/*
 * System call number is changed from target to host by mapping table.
 * See gdb/sim/common/callback.c:cb_target_to_host_syscall()
 * See gdb/sim/bfin/interp.c:bfin_syscall() (call cb_target_to_host_syscall())
 * See gdb/sim/bfin/linux-targ-map.h:cb_linux_syscall_map[]
 * See gdb/include/gdb/callback.h (difinition of CB_SYS_XXXX)
 */
#define TARGET_LINUX_SYS_exit  1
#define TARGET_LINUX_SYS_read  3
#define TARGET_LINUX_SYS_write 4
#define TARGET_LINUX_SYS_open  5
#define TARGET_LINUX_SYS_close 6

	.org	0x1c10 - 4 - 0x10c - 4 - 0x1c + 0xc

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
	SP.H	= _start
	SP.L	= _start

	/*
	 * SYSCALL NO: P0
	 * ARG1-3: R0-R2
	 * RETVAL: R0
	 * ERRCODE: R0
	 */

___open:
	R0.H	= _fname
	R0.L	= _fname
	R1	= 0
	P0	= TARGET_LINUX_SYS_open
	EXCPT	0

___read:
	R1.H	= _buffer
	R1.L	= _buffer
	R2	= 16
	P0	= TARGET_LINUX_SYS_read
	EXCPT	0

_save_size:
	R3	= R0

___kopen:
	R0.H	= _kname
	R0.L	= _kname
	R1	= 0
	P0	= TARGET_LINUX_SYS_open
	EXCPT	0

___kread:
	R1.H	= _kbuffer
	R1.L	= _kbuffer
	R2	= R3
	P0	= TARGET_LINUX_SYS_read
	EXCPT	0

_exchange:
	R0.H	= _buffer
	R0.L	= _buffer
	R1.H	= _kbuffer
	R1.L	= _kbuffer
	P0	= R0;
	P1	= R1;
	P2	= R3;
	LSETUP(1f, 2f)	LC1 = P2;
1:	R0	= B[P0++];
	R1	= B[P1++];
	R0	= R0 ^ R1;
2:	B[P0 + -0x1]	= R0;

___write:
	R0	= 1
	R1.H	= _buffer
	R1.L	= _buffer
	R2	= R3
	P0	= TARGET_LINUX_SYS_write
	EXCPT	0

___kwrite:
	R0	= 1
	R1.H	= _kbuffer
	R1.L	= _kbuffer
	R2	= R3
	P0	= TARGET_LINUX_SYS_write
	EXCPT	0

___exit:
	R0	= 0
	P0	= TARGET_LINUX_SYS_exit
	EXCPT	0

_fname:	.string	"password.txt"
_kname:	.string	"key.bin"

	.align 2
_code_end:

_buffer:
	.space	16
_kbuffer:
	.space	16
