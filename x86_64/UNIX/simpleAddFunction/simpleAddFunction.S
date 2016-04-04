.section .data
	int_input: .asciz "%d"
	int_output: .asciz "%d\n"

.section .text
	.extern printf
	.extern scanf

	.global main
	.global add

main:
	push %rbp
	mov %rsp, %rbp

	sub $4, %rsp

	mov $0, %rax
	mov $int_input, %rdi
	mov %rsp, %rsi

	call scanf

	sub $4, %rsp

	mov $0, %rax
	mov $int_input, %rdi
	mov %rsp, %rsi

	call scanf
	
	mov $0, %rax
	mov -0x4(%rbp), %rdi
	mov -0x8(%rbp), %rsi

	call add

	sub $4, %rsp
	mov %rax, (%rsp)

	mov $0, %rax
	mov $int_output, %rdi
	mov (%rsp), %rsi

	call printf

	add $12, %rsp

	mov $0, %rax

	leave

	ret

add:
	push %rbp
	movq %rsp, %rbp

	add %rdi, %rsi

	mov %rsi, %rax

	leave

	ret

