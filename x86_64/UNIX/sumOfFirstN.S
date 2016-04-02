.section .data
	suma: .long 0
	n: .long 0

	pre_input: .asciz "N: "
	input_format: .ascii "%d"
	output_format: .asciz "Suma: %d \n"

.section .text
	.extern printf
	.extern scanf

	.global main

main:
	movl $0, %eax
	movl $0, %ebx

	movq $pre_input, %rdi
	call printf

	movq $0, %rax
	movq $0, %rax
	movq $input_format, %rdi
	movq $n, %rsi

	call scanf

	movl n, %ecx

loop:
	cmpl %ecx, %ebx
	je print

	addl %ebx, %eax
	addl $1, %ebx

	jmp loop

print: 
	movl %eax, suma

	movq $output_format, %rdi
	movq suma, %rsi
	movq $0, %rax

	call printf

	movl $1, %eax
	movl $0, %ebx
	int $0x80

