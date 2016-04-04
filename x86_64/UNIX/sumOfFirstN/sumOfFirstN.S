.section .data
	sum: .long 0
	n: .long 0

	pre_input: .asciz "N: "
	input_format: .asciz "%d"
	output_format: .asciz "Sum: %d \n"

.section .text
	.extern printf
	.extern scanf

	.global main

main:
	# Print N:

	movq $0, %rax
	movq $pre_input, %rdi

	call printf

	# Scan for n

	movq $0, %rax
	movq $input_format, %rdi
	movq $n, %rsi

	call scanf

	# Init registers

	movl $0, %eax # Sum
	movl $1, %ebx # Counter
	movl n, %ecx # n

loop:
	# Compare n and counter and jump to print if counter > n
	cmpl %ecx, %ebx
	jg print

	# Add counter to sum
	addl %ebx, %eax

	# Increment counter
	addl $1, %ebx

	# Jump to loop
	jmp loop

print: 
	# Move sum from register to global memory
	movl %eax, sum

	# Print sum
	movq $output_format, %rdi
	movq sum, %rsi
	movq $0, %rax

	call printf

	# Exit with 0
	movl $1, %eax
	movl $0, %ebx
	int $0x80

