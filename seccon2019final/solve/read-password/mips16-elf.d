
mips16-elf.x:     file format elf32-bigmips


Disassembly of section .text:

7fff8000 <_.d4+0x7fff7fe4>:
	...

7fff86e0 <_start>:
7fff86e0:	61626364 	0x61626364
	...
7fff86f4:	7fff86f9 	0x7fff86f9

7fff86f8 <_code>:
7fff86f8:	b226      	lw	v0,7fff8790 <_start_addr>
7fff86fa:	65ba      	move	sp,v0

7fff86fc <__open>:
7fff86fc:	b426      	lw	a0,7fff8794 <_fname_addr>
7fff86fe:	1fff e1d9 	jalx	7fff8764 <_open_syscall>
7fff8702:	6d00      	li	a1,0
7fff8704:	6500      	nop

7fff8706 <__read>:
7fff8706:	6782      	move	a0,v0
7fff8708:	b525      	lw	a1,7fff879c <_buffer_addr>
7fff870a:	1fff e1da 	jalx	7fff8768 <_read_syscall>
7fff870e:	6e10      	li	a2,16
7fff8710:	6500      	nop

7fff8712 <_save_size>:
7fff8712:	67e2      	move	a3,v0

7fff8714 <__kopen>:
7fff8714:	b421      	lw	a0,7fff8798 <_kname_addr>
7fff8716:	1fff e1d9 	jalx	7fff8764 <_open_syscall>
7fff871a:	6d00      	li	a1,0
7fff871c:	6500      	nop

7fff871e <__kread>:
7fff871e:	6782      	move	a0,v0
7fff8720:	b520      	lw	a1,7fff87a0 <_kbuffer_addr>
7fff8722:	1fff e1da 	jalx	7fff8768 <_read_syscall>
7fff8726:	67c7      	move	a2,a3
7fff8728:	6500      	nop

7fff872a <_exchange>:
7fff872a:	b41d      	lw	a0,7fff879c <_buffer_addr>
7fff872c:	b51d      	lw	a1,7fff87a0 <_kbuffer_addr>
7fff872e:	67c4      	move	a2,a0
7fff8730:	e6f9      	addu	a2,a3
7fff8732:	a440      	lbu	v0,0(a0)
7fff8734:	a560      	lbu	v1,0(a1)
7fff8736:	ea6e      	xor	v0,v1
7fff8738:	c440      	sb	v0,0(a0)
7fff873a:	4c01      	addiu	a0,1
7fff873c:	4d01      	addiu	a1,1
7fff873e:	ecca      	cmp	a0,a2
7fff8740:	61f8      	btnez	7fff8732 <_exchange+0x8>
7fff8742:	6500      	nop

7fff8744 <__write>:
7fff8744:	6c01      	li	a0,1
7fff8746:	b516      	lw	a1,7fff879c <_buffer_addr>
7fff8748:	1fff e1db 	jalx	7fff876c <_write_syscall>
7fff874c:	67c7      	move	a2,a3
7fff874e:	6500      	nop

7fff8750 <__kwrite>:
7fff8750:	6c01      	li	a0,1
7fff8752:	b514      	lw	a1,7fff87a0 <_kbuffer_addr>
7fff8754:	1fff e1db 	jalx	7fff876c <_write_syscall>
7fff8758:	67c7      	move	a2,a3
7fff875a:	6500      	nop

7fff875c <__exit>:
7fff875c:	1bff e1dc 	jal	7fff8770 <_exit_syscall>
7fff8760:	6c00      	li	a0,0
7fff8762:	6500      	nop

7fff8764 <_open_syscall>:
7fff8764:	00000339 	0x339

7fff8768 <_read_syscall>:
7fff8768:	000003b9 	0x3b9

7fff876c <_write_syscall>:
7fff876c:	00000439 	0x439

7fff8770 <_exit_syscall>:
7fff8770:	6780      	move	a0,zero
7fff8772:	6500      	nop
7fff8774:	03ff      	addiu	v1,sp,1020
7fff8776:	000d      	addiu	s0,sp,52

7fff8778 <_fname>:
7fff8778:	70617373 	0x70617373
7fff877c:	776f7264 	jalx	7dbdc990 <_.tmp+0x7dbdc950>
7fff8780:	2e747874 	sltiu	s4,s3,30836
	...

7fff8785 <_kname>:
7fff8785:	6b65      	li	v1,101
7fff8787:	792e      	0x792e
7fff8789:	6269      	sw	ra,420(sp)
7fff878b:	6e00      	li	a2,0
7fff878d:	0065      	addiu	s0,sp,404
	...

7fff8790 <_start_addr>:
7fff8790:	7fff86e0 	0x7fff86e0

7fff8794 <_fname_addr>:
7fff8794:	7fff8778 	0x7fff8778

7fff8798 <_kname_addr>:
7fff8798:	7fff8785 	0x7fff8785

7fff879c <_buffer_addr>:
7fff879c:	7fff87a4 	0x7fff87a4

7fff87a0 <_kbuffer_addr>:
7fff87a0:	7fff87b4 	0x7fff87b4

7fff87a4 <_buffer>:
	...

7fff87b4 <_kbuffer>:
	...
