
test8:     file format elf64-x86-64


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

0000000000400400 <main>:
  400400:	b8 03 00 00 00       	mov    $0x3,%eax
  400405:	c3                   	retq   

0000000000400406 <_start>:
  400406:	31 ed                	xor    %ebp,%ebp
  400408:	49 89 d1             	mov    %rdx,%r9
  40040b:	5e                   	pop    %rsi
  40040c:	48 89 e2             	mov    %rsp,%rdx
  40040f:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400413:	50                   	push   %rax
  400414:	54                   	push   %rsp
  400415:	49 c7 c0 60 05 40 00 	mov    $0x400560,%r8
  40041c:	48 c7 c1 f0 04 40 00 	mov    $0x4004f0,%rcx
  400423:	48 c7 c7 00 04 40 00 	mov    $0x400400,%rdi
  40042a:	e8 b1 ff ff ff       	callq  4003e0 <__libc_start_main@plt>
  40042f:	f4                   	hlt    

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
  4004ed:	0f 1f 00             	nopl   (%rax)

00000000004004f0 <__libc_csu_init>:
  4004f0:	41 57                	push   %r15
  4004f2:	41 89 ff             	mov    %edi,%r15d
  4004f5:	41 56                	push   %r14
  4004f7:	49 89 f6             	mov    %rsi,%r14
  4004fa:	41 55                	push   %r13
  4004fc:	49 89 d5             	mov    %rdx,%r13
  4004ff:	41 54                	push   %r12
  400501:	4c 8d 25 08 09 20 00 	lea    0x200908(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400508:	55                   	push   %rbp
  400509:	48 8d 2d 08 09 20 00 	lea    0x200908(%rip),%rbp        # 600e18 <__init_array_end>
  400510:	53                   	push   %rbx
  400511:	4c 29 e5             	sub    %r12,%rbp
  400514:	31 db                	xor    %ebx,%ebx
  400516:	48 c1 fd 03          	sar    $0x3,%rbp
  40051a:	48 83 ec 08          	sub    $0x8,%rsp
  40051e:	e8 85 fe ff ff       	callq  4003a8 <_init>
  400523:	48 85 ed             	test   %rbp,%rbp
  400526:	74 1e                	je     400546 <__libc_csu_init+0x56>
  400528:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40052f:	00 
  400530:	4c 89 ea             	mov    %r13,%rdx
  400533:	4c 89 f6             	mov    %r14,%rsi
  400536:	44 89 ff             	mov    %r15d,%edi
  400539:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40053d:	48 83 c3 01          	add    $0x1,%rbx
  400541:	48 39 eb             	cmp    %rbp,%rbx
  400544:	75 ea                	jne    400530 <__libc_csu_init+0x40>
  400546:	48 83 c4 08          	add    $0x8,%rsp
  40054a:	5b                   	pop    %rbx
  40054b:	5d                   	pop    %rbp
  40054c:	41 5c                	pop    %r12
  40054e:	41 5d                	pop    %r13
  400550:	41 5e                	pop    %r14
  400552:	41 5f                	pop    %r15
  400554:	c3                   	retq   
  400555:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40055c:	00 00 00 00 

0000000000400560 <__libc_csu_fini>:
  400560:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400564 <_fini>:
  400564:	48 83 ec 08          	sub    $0x8,%rsp
  400568:	48 83 c4 08          	add    $0x8,%rsp
  40056c:	c3                   	retq   
