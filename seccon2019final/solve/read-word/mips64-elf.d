
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
  1006f4:	2484074c 	addiu	a0,a0,1868
  1006f8:	24050000 	li	a1,0
  1006fc:	3c1f0010 	lui	ra,0x10
  100700:	27ff0708 	addiu	ra,ra,1800
  100704:	00000339 	0x339

00100708 <__read>:
  100708:	00402025 	move	a0,v0
  10070c:	3c050010 	lui	a1,0x10
  100710:	24a50758 	addiu	a1,a1,1880
  100714:	24060020 	li	a2,32
  100718:	3c1f0010 	lui	ra,0x10
  10071c:	27ff0724 	addiu	ra,ra,1828
  100720:	000003b9 	0x3b9

00100724 <_save_size>:
  100724:	00403825 	move	a3,v0

00100728 <__write>:
  100728:	24040001 	li	a0,1
  10072c:	3c050010 	lui	a1,0x10
  100730:	24a50758 	addiu	a1,a1,1880
  100734:	00e03025 	move	a2,a3
  100738:	3c1f0010 	lui	ra,0x10
  10073c:	27ff0744 	addiu	ra,ra,1860
  100740:	00000439 	0x439

00100744 <__exit>:
  100744:	00002025 	move	a0,zero
  100748:	03ff000d 	break	0x3ff

0010074c <_fname>:
  10074c:	776f7264 	jalx	dbdc990 <_end+0xdadbd90>
  100750:	2e747874 	sltiu	s4,s3,30836
  100754:	00000000 	nop

00100758 <_buffer>:
	...
