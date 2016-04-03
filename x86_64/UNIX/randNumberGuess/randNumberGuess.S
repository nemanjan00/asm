	.file	"randNumberGuess.c"
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"ok"
.LC2:
	.string	"not ok"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	time
	movl	%eax, %edi
	call	srand
	call	rand
	movl	%eax, -4(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-8(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jne	.L2
	movl	$.LC1, %edi
	call	puts
	jmp	.L3
.L2:
	movl	$.LC2, %edi
	call	puts
.L3:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (GNU) 5.3.0"
	.section	.note.GNU-stack,"",@progbits
