
test15:     file format elf64-x86-64


Disassembly of section .init:

0000000000400440 <_init>:
  400440:	48 83 ec 08          	sub    $0x8,%rsp
  400444:	48 8b 05 ad 0b 20 00 	mov    0x200bad(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  40044b:	48 85 c0             	test   %rax,%rax
  40044e:	74 05                	je     400455 <_init+0x15>
  400450:	e8 3b 00 00 00       	callq  400490 <__gmon_start__@plt>
  400455:	48 83 c4 08          	add    $0x8,%rsp
  400459:	c3                   	retq   

Disassembly of section .plt:

0000000000400460 <putchar@plt-0x10>:
  400460:	ff 35 a2 0b 20 00    	pushq  0x200ba2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400466:	ff 25 a4 0b 20 00    	jmpq   *0x200ba4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40046c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400470 <putchar@plt>:
  400470:	ff 25 a2 0b 20 00    	jmpq   *0x200ba2(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400476:	68 00 00 00 00       	pushq  $0x0
  40047b:	e9 e0 ff ff ff       	jmpq   400460 <_init+0x20>

0000000000400480 <__libc_start_main@plt>:
  400480:	ff 25 9a 0b 20 00    	jmpq   *0x200b9a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400486:	68 01 00 00 00       	pushq  $0x1
  40048b:	e9 d0 ff ff ff       	jmpq   400460 <_init+0x20>

0000000000400490 <__gmon_start__@plt>:
  400490:	ff 25 92 0b 20 00    	jmpq   *0x200b92(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400496:	68 02 00 00 00       	pushq  $0x2
  40049b:	e9 c0 ff ff ff       	jmpq   400460 <_init+0x20>

00000000004004a0 <__printf_chk@plt>:
  4004a0:	ff 25 8a 0b 20 00    	jmpq   *0x200b8a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004a6:	68 03 00 00 00       	pushq  $0x3
  4004ab:	e9 b0 ff ff ff       	jmpq   400460 <_init+0x20>

Disassembly of section .text:

00000000004004b0 <_start>:
  4004b0:	31 ed                	xor    %ebp,%ebp
  4004b2:	49 89 d1             	mov    %rdx,%r9
  4004b5:	5e                   	pop    %rsi
  4004b6:	48 89 e2             	mov    %rsp,%rdx
  4004b9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4004bd:	50                   	push   %rax
  4004be:	54                   	push   %rsp
  4004bf:	49 c7 c0 a0 06 40 00 	mov    $0x4006a0,%r8
  4004c6:	48 c7 c1 30 06 40 00 	mov    $0x400630,%rcx
  4004cd:	48 c7 c7 f9 05 40 00 	mov    $0x4005f9,%rdi
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

000000000040059d <func>:
  40059d:	b8 00 00 00 00       	mov    $0x0,%eax
  4005a2:	eb 0a                	jmp    4005ae <func+0x11>
  4005a4:	48 63 d0             	movslq %eax,%rdx
  4005a7:	83 04 97 01          	addl   $0x1,(%rdi,%rdx,4)
  4005ab:	83 c0 01             	add    $0x1,%eax
  4005ae:	83 f8 02             	cmp    $0x2,%eax
  4005b1:	7e f1                	jle    4005a4 <func+0x7>
  4005b3:	f3 c3                	repz retq 

00000000004005b5 <printArr>:
  4005b5:	55                   	push   %rbp
  4005b6:	53                   	push   %rbx
  4005b7:	48 83 ec 08          	sub    $0x8,%rsp
  4005bb:	48 89 fd             	mov    %rdi,%rbp
  4005be:	bb 00 00 00 00       	mov    $0x0,%ebx
  4005c3:	eb 1e                	jmp    4005e3 <printArr+0x2e>
  4005c5:	48 63 c3             	movslq %ebx,%rax
  4005c8:	8b 54 85 00          	mov    0x0(%rbp,%rax,4),%edx
  4005cc:	be b4 06 40 00       	mov    $0x4006b4,%esi
  4005d1:	bf 01 00 00 00       	mov    $0x1,%edi
  4005d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4005db:	e8 c0 fe ff ff       	callq  4004a0 <__printf_chk@plt>
  4005e0:	83 c3 01             	add    $0x1,%ebx
  4005e3:	83 fb 02             	cmp    $0x2,%ebx
  4005e6:	7e dd                	jle    4005c5 <printArr+0x10>
  4005e8:	bf 0a 00 00 00       	mov    $0xa,%edi
  4005ed:	e8 7e fe ff ff       	callq  400470 <putchar@plt>
  4005f2:	48 83 c4 08          	add    $0x8,%rsp
  4005f6:	5b                   	pop    %rbx
  4005f7:	5d                   	pop    %rbp
  4005f8:	c3                   	retq   

00000000004005f9 <main>:
  4005f9:	48 83 ec 18          	sub    $0x18,%rsp
  4005fd:	c7 04 24 01 00 00 00 	movl   $0x1,(%rsp)
  400604:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%rsp)
  40060b:	00 
  40060c:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%rsp)
  400613:	00 
  400614:	48 89 e7             	mov    %rsp,%rdi
  400617:	e8 81 ff ff ff       	callq  40059d <func>
  40061c:	48 89 e7             	mov    %rsp,%rdi
  40061f:	e8 91 ff ff ff       	callq  4005b5 <printArr>
  400624:	b8 00 00 00 00       	mov    $0x0,%eax
  400629:	48 83 c4 18          	add    $0x18,%rsp
  40062d:	c3                   	retq   
  40062e:	66 90                	xchg   %ax,%ax

0000000000400630 <__libc_csu_init>:
  400630:	41 57                	push   %r15
  400632:	41 89 ff             	mov    %edi,%r15d
  400635:	41 56                	push   %r14
  400637:	49 89 f6             	mov    %rsi,%r14
  40063a:	41 55                	push   %r13
  40063c:	49 89 d5             	mov    %rdx,%r13
  40063f:	41 54                	push   %r12
  400641:	4c 8d 25 c8 07 20 00 	lea    0x2007c8(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400648:	55                   	push   %rbp
  400649:	48 8d 2d c8 07 20 00 	lea    0x2007c8(%rip),%rbp        # 600e18 <__init_array_end>
  400650:	53                   	push   %rbx
  400651:	4c 29 e5             	sub    %r12,%rbp
  400654:	31 db                	xor    %ebx,%ebx
  400656:	48 c1 fd 03          	sar    $0x3,%rbp
  40065a:	48 83 ec 08          	sub    $0x8,%rsp
  40065e:	e8 dd fd ff ff       	callq  400440 <_init>
  400663:	48 85 ed             	test   %rbp,%rbp
  400666:	74 1e                	je     400686 <__libc_csu_init+0x56>
  400668:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40066f:	00 
  400670:	4c 89 ea             	mov    %r13,%rdx
  400673:	4c 89 f6             	mov    %r14,%rsi
  400676:	44 89 ff             	mov    %r15d,%edi
  400679:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40067d:	48 83 c3 01          	add    $0x1,%rbx
  400681:	48 39 eb             	cmp    %rbp,%rbx
  400684:	75 ea                	jne    400670 <__libc_csu_init+0x40>
  400686:	48 83 c4 08          	add    $0x8,%rsp
  40068a:	5b                   	pop    %rbx
  40068b:	5d                   	pop    %rbp
  40068c:	41 5c                	pop    %r12
  40068e:	41 5d                	pop    %r13
  400690:	41 5e                	pop    %r14
  400692:	41 5f                	pop    %r15
  400694:	c3                   	retq   
  400695:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40069c:	00 00 00 00 

00000000004006a0 <__libc_csu_fini>:
  4006a0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004006a4 <_fini>:
  4006a4:	48 83 ec 08          	sub    $0x8,%rsp
  4006a8:	48 83 c4 08          	add    $0x8,%rsp
  4006ac:	c3                   	retq   
