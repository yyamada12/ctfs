
mips64-elf.x:     file format elf32-bigmips


Disassembly of section .text:

00100000 <_.d4+0xfffe4>:
	...

001006d0 <_start>:
  1006d0:	61626364 	daddi	v0,t3,25444
	...
  1006e4:	001006e8 	0x1006e8

001006e8 <_code>:
  1006e8:	3c1d0010 	lui	sp,0x10
  1006ec:	27bd06d0 	addiu	sp,sp,1744

001006f0 <__open>:
  1006f0:	3c040010 	lui	a0,0x10
  1006f4:	248407d0 	addiu	a0,a0,2000
  1006f8:	24050000 	li	a1,0
  1006fc:	3c1f0010 	lui	ra,0x10
  100700:	27ff0708 	addiu	ra,ra,1800
  100704:	00000339 	0x339

00100708 <__read>:
  100708:	00402025 	move	a0,v0
  10070c:	3c050010 	lui	a1,0x10
  100710:	24a507e8 	addiu	a1,a1,2024
  100714:	24060010 	li	a2,16
  100718:	3c1f0010 	lui	ra,0x10
  10071c:	27ff0724 	addiu	ra,ra,1828
  100720:	000003b9 	0x3b9

00100724 <_save_size>:
  100724:	00403825 	move	a3,v0

00100728 <__kopen>:
  100728:	3c040010 	lui	a0,0x10
  10072c:	248407dd 	addiu	a0,a0,2013
  100730:	24050000 	li	a1,0
  100734:	3c1f0010 	lui	ra,0x10
  100738:	27ff0740 	addiu	ra,ra,1856
  10073c:	00000339 	0x339

00100740 <__kread>:
  100740:	00402025 	move	a0,v0
  100744:	3c050010 	lui	a1,0x10
  100748:	24a507f8 	addiu	a1,a1,2040
  10074c:	00e03025 	move	a2,a3
  100750:	3c1f0010 	lui	ra,0x10
  100754:	27ff075c 	addiu	ra,ra,1884
  100758:	000003b9 	0x3b9

0010075c <_exchange>:
  10075c:	3c040010 	lui	a0,0x10
  100760:	248407e8 	addiu	a0,a0,2024
  100764:	3c050010 	lui	a1,0x10
  100768:	24a507f8 	addiu	a1,a1,2040
  10076c:	00873021 	addu	a2,a0,a3
  100770:	90820000 	lbu	v0,0(a0)
  100774:	90a30000 	lbu	v1,0(a1)
  100778:	00431026 	xor	v0,v0,v1
  10077c:	a0820000 	sb	v0,0(a0)
  100780:	24840001 	addiu	a0,a0,1
  100784:	1486fffa 	bne	a0,a2,100770 <_exchange+0x14>
  100788:	24a50001 	addiu	a1,a1,1
  10078c:	00000000 	nop

00100790 <__write>:
  100790:	24040001 	li	a0,1
  100794:	3c050010 	lui	a1,0x10
  100798:	24a507e8 	addiu	a1,a1,2024
  10079c:	00e03025 	move	a2,a3
  1007a0:	3c1f0010 	lui	ra,0x10
  1007a4:	27ff07ac 	addiu	ra,ra,1964
  1007a8:	00000439 	0x439

001007ac <__kwrite>:
  1007ac:	24040001 	li	a0,1
  1007b0:	3c050010 	lui	a1,0x10
  1007b4:	24a507f8 	addiu	a1,a1,2040
  1007b8:	00e03025 	move	a2,a3
  1007bc:	3c1f0010 	lui	ra,0x10
  1007c0:	27ff07c8 	addiu	ra,ra,1992
  1007c4:	00000439 	0x439

001007c8 <__exit>:
  1007c8:	00002025 	move	a0,zero
  1007cc:	03ff000d 	break	0x3ff

001007d0 <_fname>:
  1007d0:	70617373 	0x70617373
  1007d4:	776f7264 	jalx	dbdc990 <_end+0xdadb990>
  1007d8:	2e747874 	sltiu	s4,s3,30836
	...

001007dd <_kname>:
  1007dd:	6b65      	li	v1,101
  1007df:	792e      	sd	s1,112(s1)
  1007e1:	6269      	sw	ra,420(sp)
  1007e3:	6e00      	li	a2,0
  1007e5:	0000      	addiu	s0,sp,0
	...

001007e8 <_buffer>:
	...

001007f8 <_kbuffer>:
	...
