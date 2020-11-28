
mips16-elf.x:     file format elf32-bigmips


Disassembly of section .text:

7fff8000 <_.d4+0x7fff7fe4>:
	...

7fff86e0 <_start>:
7fff86e0:	61626364 	0x61626364
	...
7fff86f4:	7fff86f9 	0x7fff86f9

7fff86f8 <_code>:
7fff86f8:	b214      	lw	v0,7fff8748 <_start_addr>
7fff86fa:	65ba      	move	sp,v0

7fff86fc <__open>:
7fff86fc:	b414      	lw	a0,7fff874c <_fname_addr>
7fff86fe:	1fff e1ca 	jalx	7fff8728 <_open_syscall>
7fff8702:	6d00      	li	a1,0
7fff8704:	6500      	nop

7fff8706 <__read>:
7fff8706:	6782      	move	a0,v0
7fff8708:	b512      	lw	a1,7fff8750 <_buffer_addr>
7fff870a:	1fff e1cb 	jalx	7fff872c <_read_syscall>
7fff870e:	6e20      	li	a2,32
7fff8710:	6500      	nop

7fff8712 <_save_size>:
7fff8712:	67e2      	move	a3,v0

7fff8714 <__write>:
7fff8714:	6c01      	li	a0,1
7fff8716:	b50f      	lw	a1,7fff8750 <_buffer_addr>
7fff8718:	1fff e1cc 	jalx	7fff8730 <_write_syscall>
7fff871c:	67c7      	move	a2,a3
7fff871e:	6500      	nop

7fff8720 <__exit>:
7fff8720:	1bff e1cd 	jal	7fff8734 <_exit_syscall>
7fff8724:	6c00      	li	a0,0
7fff8726:	6500      	nop

7fff8728 <_open_syscall>:
7fff8728:	00000339 	0x339

7fff872c <_read_syscall>:
7fff872c:	000003b9 	0x3b9

7fff8730 <_write_syscall>:
7fff8730:	00000439 	0x439

7fff8734 <_exit_syscall>:
7fff8734:	6780      	move	a0,zero
7fff8736:	6500      	nop
7fff8738:	03ff      	addiu	v1,sp,1020
7fff873a:	000d      	addiu	s0,sp,52

7fff873c <_fname>:
7fff873c:	776f7264 	jalx	7dbdc990 <_.tmp+0x7dbdc950>
7fff8740:	2e747874 	sltiu	s4,s3,30836
7fff8744:	00006500 	sll	t4,zero,0x14

7fff8748 <_start_addr>:
7fff8748:	7fff86e0 	0x7fff86e0

7fff874c <_fname_addr>:
7fff874c:	7fff873c 	0x7fff873c

7fff8750 <_buffer_addr>:
7fff8750:	7fff8754 	0x7fff8754

7fff8754 <_buffer>:
	...
