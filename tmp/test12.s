
test12:     file format elf64-x86-64


Disassembly of section .init:

00000000004003a8 <_init>:
  4003a8:	48 83 ec 08          	sub    $0x8,%rsp
  4003ac:	48 8b 05 45 0c 20 00 	mov    0x200c45(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  4003b3:	48 85 c0             	test   %rax,%rax
  4003b6:	74 05                	je     4003bd <_init+0x15>
  4003b8:	e8 33 00 00 00       	callq  4003f0 <__gmon_start__@plt>
  4003bd:	48 83 c4 08          	add    $0x8,%rsp
  4003c1:	c3                   	retq   

Disassembly of section .plt:

00000000004003d0 <__libc_start_main@plt-0x10>:
  4003d0:	ff 35 32 0c 20 00    	pushq  0x200c32(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4003d6:	ff 25 34 0c 20 00    	jmpq   *0x200c34(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4003dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004003e0 <__libc_start_main@plt>:
  4003e0:	ff 25 32 0c 20 00    	jmpq   *0x200c32(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4003e6:	68 00 00 00 00       	pushq  $0x0
  4003eb:	e9 e0 ff ff ff       	jmpq   4003d0 <_init+0x28>

00000000004003f0 <__gmon_start__@plt>:
  4003f0:	ff 25 2a 0c 20 00    	jmpq   *0x200c2a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4003f6:	68 01 00 00 00       	pushq  $0x1
  4003fb:	e9 d0 ff ff ff       	jmpq   4003d0 <_init+0x28>

Disassembly of section .text:

0000000000400400 <_start>:
  400400:	31 ed                	xor    %ebp,%ebp
  400402:	49 89 d1             	mov    %rdx,%r9
  400405:	5e                   	pop    %rsi
  400406:	48 89 e2             	mov    %rsp,%rdx
  400409:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40040d:	50                   	push   %rax
  40040e:	54                   	push   %rsp
  40040f:	49 c7 c0 80 05 40 00 	mov    $0x400580,%r8
  400416:	48 c7 c1 10 05 40 00 	mov    $0x400510,%rcx
  40041d:	48 c7 c7 f1 04 40 00 	mov    $0x4004f1,%rdi
  400424:	e8 b7 ff ff ff       	callq  4003e0 <__libc_start_main@plt>
  400429:	f4                   	hlt    
  40042a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400430 <deregister_tm_clones>:
  400430:	b8 3f 10 60 00       	mov    $0x60103f,%eax
  400435:	55                   	push   %rbp
  400436:	48 2d 38 10 60 00    	sub    $0x601038,%rax
  40043c:	48 83 f8 0e          	cmp    $0xe,%rax
  400440:	48 89 e5             	mov    %rsp,%rbp
  400443:	77 02                	ja     400447 <deregister_tm_clones+0x17>
  400445:	5d                   	pop    %rbp
  400446:	c3                   	retq   
  400447:	b8 00 00 00 00       	mov    $0x0,%eax
  40044c:	48 85 c0             	test   %rax,%rax
  40044f:	74 f4                	je     400445 <deregister_tm_clones+0x15>
  400451:	5d                   	pop    %rbp
  400452:	bf 38 10 60 00       	mov    $0x601038,%edi
  400457:	ff e0                	jmpq   *%rax
  400459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400460 <register_tm_clones>:
  400460:	b8 38 10 60 00       	mov    $0x601038,%eax
  400465:	55                   	push   %rbp
  400466:	48 2d 38 10 60 00    	sub    $0x601038,%rax
  40046c:	48 c1 f8 03          	sar    $0x3,%rax
  400470:	48 89 e5             	mov    %rsp,%rbp
  400473:	48 89 c2             	mov    %rax,%rdx
  400476:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40047a:	48 01 d0             	add    %rdx,%rax
  40047d:	48 d1 f8             	sar    %rax
  400480:	75 02                	jne    400484 <register_tm_clones+0x24>
  400482:	5d                   	pop    %rbp
  400483:	c3                   	retq   
  400484:	ba 00 00 00 00       	mov    $0x0,%edx
  400489:	48 85 d2             	test   %rdx,%rdx
  40048c:	74 f4                	je     400482 <register_tm_clones+0x22>
  40048e:	5d                   	pop    %rbp
  40048f:	48 89 c6             	mov    %rax,%rsi
  400492:	bf 38 10 60 00       	mov    $0x601038,%edi
  400497:	ff e2                	jmpq   *%rdx
  400499:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004004a0 <__do_global_dtors_aux>:
  4004a0:	80 3d 91 0b 20 00 00 	cmpb   $0x0,0x200b91(%rip)        # 601038 <__TMC_END__>
  4004a7:	75 11                	jne    4004ba <__do_global_dtors_aux+0x1a>
  4004a9:	55                   	push   %rbp
  4004aa:	48 89 e5             	mov    %rsp,%rbp
  4004ad:	e8 7e ff ff ff       	callq  400430 <deregister_tm_clones>
  4004b2:	5d                   	pop    %rbp
  4004b3:	c6 05 7e 0b 20 00 01 	movb   $0x1,0x200b7e(%rip)        # 601038 <__TMC_END__>
  4004ba:	f3 c3                	repz retq 
  4004bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004c0 <frame_dummy>:
  4004c0:	48 83 3d 58 09 20 00 	cmpq   $0x0,0x200958(%rip)        # 600e20 <__JCR_END__>
  4004c7:	00 
  4004c8:	74 1e                	je     4004e8 <frame_dummy+0x28>
  4004ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4004cf:	48 85 c0             	test   %rax,%rax
  4004d2:	74 14                	je     4004e8 <frame_dummy+0x28>
  4004d4:	55                   	push   %rbp
  4004d5:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  4004da:	48 89 e5             	mov    %rsp,%rbp
  4004dd:	ff d0                	callq  *%rax
  4004df:	5d                   	pop    %rbp
  4004e0:	e9 7b ff ff ff       	jmpq   400460 <register_tm_clones>
  4004e5:	0f 1f 00             	nopl   (%rax)
  4004e8:	e9 73 ff ff ff       	jmpq   400460 <register_tm_clones>

00000000004004ed <fun>:
  4004ed:	8d 47 0a             	lea    0xa(%rdi),%eax
  4004f0:	c3                   	retq   

00000000004004f1 <main>:
  4004f1:	53                   	push   %rbx
  4004f2:	bf 01 00 00 00       	mov    $0x1,%edi
  4004f7:	e8 f1 ff ff ff       	callq  4004ed <fun>
  4004fc:	89 c3                	mov    %eax,%ebx
  4004fe:	bf 0a 00 00 00       	mov    $0xa,%edi
  400503:	e8 e5 ff ff ff       	callq  4004ed <fun>
  400508:	8d 44 03 01          	lea    0x1(%rbx,%rax,1),%eax
  40050c:	5b                   	pop    %rbx
  40050d:	c3                   	retq   
  40050e:	66 90                	xchg   %ax,%ax

0000000000400510 <__libc_csu_init>:
  400510:	41 57                	push   %r15
  400512:	41 89 ff             	mov    %edi,%r15d
  400515:	41 56                	push   %r14
  400517:	49 89 f6             	mov    %rsi,%r14
  40051a:	41 55                	push   %r13
  40051c:	49 89 d5             	mov    %rdx,%r13
  40051f:	41 54                	push   %r12
  400521:	4c 8d 25 e8 08 20 00 	lea    0x2008e8(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400528:	55                   	push   %rbp
  400529:	48 8d 2d e8 08 20 00 	lea    0x2008e8(%rip),%rbp        # 600e18 <__init_array_end>
  400530:	53                   	push   %rbx
  400531:	4c 29 e5             	sub    %r12,%rbp
  400534:	31 db                	xor    %ebx,%ebx
  400536:	48 c1 fd 03          	sar    $0x3,%rbp
  40053a:	48 83 ec 08          	sub    $0x8,%rsp
  40053e:	e8 65 fe ff ff       	callq  4003a8 <_init>
  400543:	48 85 ed             	test   %rbp,%rbp
  400546:	74 1e                	je     400566 <__libc_csu_init+0x56>
  400548:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40054f:	00 
  400550:	4c 89 ea             	mov    %r13,%rdx
  400553:	4c 89 f6             	mov    %r14,%rsi
  400556:	44 89 ff             	mov    %r15d,%edi
  400559:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40055d:	48 83 c3 01          	add    $0x1,%rbx
  400561:	48 39 eb             	cmp    %rbp,%rbx
  400564:	75 ea                	jne    400550 <__libc_csu_init+0x40>
  400566:	48 83 c4 08          	add    $0x8,%rsp
  40056a:	5b                   	pop    %rbx
  40056b:	5d                   	pop    %rbp
  40056c:	41 5c                	pop    %r12
  40056e:	41 5d                	pop    %r13
  400570:	41 5e                	pop    %r14
  400572:	41 5f                	pop    %r15
  400574:	c3                   	retq   
  400575:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40057c:	00 00 00 00 

0000000000400580 <__libc_csu_fini>:
  400580:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400584 <_fini>:
  400584:	48 83 ec 08          	sub    $0x8,%rsp
  400588:	48 83 c4 08          	add    $0x8,%rsp
  40058c:	c3                   	retq   
