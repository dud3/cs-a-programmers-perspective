
cmdline:     file format elf64-x86-64


Disassembly of section .init:

0000000000400438 <_init>:
  400438:	48 83 ec 08          	sub    $0x8,%rsp
  40043c:	48 8b 05 b5 0b 20 00 	mov    0x200bb5(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  400443:	48 85 c0             	test   %rax,%rax
  400446:	74 05                	je     40044d <_init+0x15>
  400448:	e8 43 00 00 00       	callq  400490 <__gmon_start__@plt>
  40044d:	48 83 c4 08          	add    $0x8,%rsp
  400451:	c3                   	retq   

Disassembly of section .plt:

0000000000400460 <puts@plt-0x10>:
  400460:	ff 35 a2 0b 20 00    	pushq  0x200ba2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400466:	ff 25 a4 0b 20 00    	jmpq   *0x200ba4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40046c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400470 <puts@plt>:
  400470:	ff 25 a2 0b 20 00    	jmpq   *0x200ba2(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400476:	68 00 00 00 00       	pushq  $0x0
  40047b:	e9 e0 ff ff ff       	jmpq   400460 <_init+0x28>

0000000000400480 <__libc_start_main@plt>:
  400480:	ff 25 9a 0b 20 00    	jmpq   *0x200b9a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400486:	68 01 00 00 00       	pushq  $0x1
  40048b:	e9 d0 ff ff ff       	jmpq   400460 <_init+0x28>

0000000000400490 <__gmon_start__@plt>:
  400490:	ff 25 92 0b 20 00    	jmpq   *0x200b92(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400496:	68 02 00 00 00       	pushq  $0x2
  40049b:	e9 c0 ff ff ff       	jmpq   400460 <_init+0x28>

00000000004004a0 <__printf_chk@plt>:
  4004a0:	ff 25 8a 0b 20 00    	jmpq   *0x200b8a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004a6:	68 03 00 00 00       	pushq  $0x3
  4004ab:	e9 b0 ff ff ff       	jmpq   400460 <_init+0x28>

Disassembly of section .text:

00000000004004b0 <_start>:
  4004b0:	31 ed                	xor    %ebp,%ebp
  4004b2:	49 89 d1             	mov    %rdx,%r9
  4004b5:	5e                   	pop    %rsi
  4004b6:	48 89 e2             	mov    %rsp,%rdx
  4004b9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4004bd:	50                   	push   %rax
  4004be:	54                   	push   %rsp
  4004bf:	49 c7 c0 50 06 40 00 	mov    $0x400650,%r8
  4004c6:	48 c7 c1 e0 05 40 00 	mov    $0x4005e0,%rcx
  4004cd:	48 c7 c7 9d 05 40 00 	mov    $0x40059d,%rdi
  4004d4:	e8 a7 ff ff ff       	callq  400480 <__libc_start_main@plt>
  4004d9:	f4                   	hlt    
  4004da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004e0 <deregister_tm_clones>:
  4004e0:	b8 4f 10 60 00       	mov    $0x60104f,%eax
  4004e5:	55                   	push   %rbp
  4004e6:	48 2d 48 10 60 00    	sub    $0x601048,%rax
  4004ec:	48 83 f8 0e          	cmp    $0xe,%rax
  4004f0:	48 89 e5             	mov    %rsp,%rbp
  4004f3:	77 02                	ja     4004f7 <deregister_tm_clones+0x17>
  4004f5:	5d                   	pop    %rbp
  4004f6:	c3                   	retq   
  4004f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4004fc:	48 85 c0             	test   %rax,%rax
  4004ff:	74 f4                	je     4004f5 <deregister_tm_clones+0x15>
  400501:	5d                   	pop    %rbp
  400502:	bf 48 10 60 00       	mov    $0x601048,%edi
  400507:	ff e0                	jmpq   *%rax
  400509:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400510 <register_tm_clones>:
  400510:	b8 48 10 60 00       	mov    $0x601048,%eax
  400515:	55                   	push   %rbp
  400516:	48 2d 48 10 60 00    	sub    $0x601048,%rax
  40051c:	48 c1 f8 03          	sar    $0x3,%rax
  400520:	48 89 e5             	mov    %rsp,%rbp
  400523:	48 89 c2             	mov    %rax,%rdx
  400526:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40052a:	48 01 d0             	add    %rdx,%rax
  40052d:	48 d1 f8             	sar    %rax
  400530:	75 02                	jne    400534 <register_tm_clones+0x24>
  400532:	5d                   	pop    %rbp
  400533:	c3                   	retq   
  400534:	ba 00 00 00 00       	mov    $0x0,%edx
  400539:	48 85 d2             	test   %rdx,%rdx
  40053c:	74 f4                	je     400532 <register_tm_clones+0x22>
  40053e:	5d                   	pop    %rbp
  40053f:	48 89 c6             	mov    %rax,%rsi
  400542:	bf 48 10 60 00       	mov    $0x601048,%edi
  400547:	ff e2                	jmpq   *%rdx
  400549:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400550 <__do_global_dtors_aux>:
  400550:	80 3d f1 0a 20 00 00 	cmpb   $0x0,0x200af1(%rip)        # 601048 <__TMC_END__>
  400557:	75 11                	jne    40056a <__do_global_dtors_aux+0x1a>
  400559:	55                   	push   %rbp
  40055a:	48 89 e5             	mov    %rsp,%rbp
  40055d:	e8 7e ff ff ff       	callq  4004e0 <deregister_tm_clones>
  400562:	5d                   	pop    %rbp
  400563:	c6 05 de 0a 20 00 01 	movb   $0x1,0x200ade(%rip)        # 601048 <__TMC_END__>
  40056a:	f3 c3                	repz retq 
  40056c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400570 <frame_dummy>:
  400570:	48 83 3d a8 08 20 00 	cmpq   $0x0,0x2008a8(%rip)        # 600e20 <__JCR_END__>
  400577:	00 
  400578:	74 1e                	je     400598 <frame_dummy+0x28>
  40057a:	b8 00 00 00 00       	mov    $0x0,%eax
  40057f:	48 85 c0             	test   %rax,%rax
  400582:	74 14                	je     400598 <frame_dummy+0x28>
  400584:	55                   	push   %rbp
  400585:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  40058a:	48 89 e5             	mov    %rsp,%rbp
  40058d:	ff d0                	callq  *%rax
  40058f:	5d                   	pop    %rbp
  400590:	e9 7b ff ff ff       	jmpq   400510 <register_tm_clones>
  400595:	0f 1f 00             	nopl   (%rax)
  400598:	e9 73 ff ff ff       	jmpq   400510 <register_tm_clones>

000000000040059d <main>:
  40059d:	48 83 ec 08          	sub    $0x8,%rsp
  4005a1:	83 ff 01             	cmp    $0x1,%edi
  4005a4:	7f 1e                	jg     4005c4 <main+0x27>
  4005a6:	48 8b 16             	mov    (%rsi),%rdx
  4005a9:	be 64 06 40 00       	mov    $0x400664,%esi
  4005ae:	bf 01 00 00 00       	mov    $0x1,%edi
  4005b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4005b8:	e8 e3 fe ff ff       	callq  4004a0 <__printf_chk@plt>
  4005bd:	b8 01 00 00 00       	mov    $0x1,%eax
  4005c2:	eb 0e                	jmp    4005d2 <main+0x35>
  4005c4:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  4005c8:	e8 a3 fe ff ff       	callq  400470 <puts@plt>
  4005cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4005d2:	48 83 c4 08          	add    $0x8,%rsp
  4005d6:	c3                   	retq   
  4005d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4005de:	00 00 

00000000004005e0 <__libc_csu_init>:
  4005e0:	41 57                	push   %r15
  4005e2:	41 89 ff             	mov    %edi,%r15d
  4005e5:	41 56                	push   %r14
  4005e7:	49 89 f6             	mov    %rsi,%r14
  4005ea:	41 55                	push   %r13
  4005ec:	49 89 d5             	mov    %rdx,%r13
  4005ef:	41 54                	push   %r12
  4005f1:	4c 8d 25 18 08 20 00 	lea    0x200818(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4005f8:	55                   	push   %rbp
  4005f9:	48 8d 2d 18 08 20 00 	lea    0x200818(%rip),%rbp        # 600e18 <__init_array_end>
  400600:	53                   	push   %rbx
  400601:	4c 29 e5             	sub    %r12,%rbp
  400604:	31 db                	xor    %ebx,%ebx
  400606:	48 c1 fd 03          	sar    $0x3,%rbp
  40060a:	48 83 ec 08          	sub    $0x8,%rsp
  40060e:	e8 25 fe ff ff       	callq  400438 <_init>
  400613:	48 85 ed             	test   %rbp,%rbp
  400616:	74 1e                	je     400636 <__libc_csu_init+0x56>
  400618:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40061f:	00 
  400620:	4c 89 ea             	mov    %r13,%rdx
  400623:	4c 89 f6             	mov    %r14,%rsi
  400626:	44 89 ff             	mov    %r15d,%edi
  400629:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40062d:	48 83 c3 01          	add    $0x1,%rbx
  400631:	48 39 eb             	cmp    %rbp,%rbx
  400634:	75 ea                	jne    400620 <__libc_csu_init+0x40>
  400636:	48 83 c4 08          	add    $0x8,%rsp
  40063a:	5b                   	pop    %rbx
  40063b:	5d                   	pop    %rbp
  40063c:	41 5c                	pop    %r12
  40063e:	41 5d                	pop    %r13
  400640:	41 5e                	pop    %r14
  400642:	41 5f                	pop    %r15
  400644:	c3                   	retq   
  400645:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40064c:	00 00 00 00 

0000000000400650 <__libc_csu_fini>:
  400650:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400654 <_fini>:
  400654:	48 83 ec 08          	sub    $0x8,%rsp
  400658:	48 83 c4 08          	add    $0x8,%rsp
  40065c:	c3                   	retq   
