.section .data
	pre_input: .asciz "Serial number: "
	input_format: .asciz "%d"

	good_output: .asciz "Flag: GOOD_JOB \n"
	bad_output: .asciz "Bad! \n"

	input: .long 0

	good_serial: .long 1337

.section .text
	.extern printf
	.extern scanf

	.global main

main:
	# Print Serial number:

	movq $0, %rax
	movq $pre_input, %rdi

	call printf

	# Scan for n

	movq $0, %rax
	movq $input_format, %rdi
	movq $input, %rsi

	call scanf

	movl input, %eax

	cmpl %eax, good_serial
	jne bad

good:
	movq $0, %rax
	movq $good_output, %rdi

	call printf

	jmp end

bad:
	movq $0, %rax
	movq $bad_output, %rdi

	call printf

end:
	# Exit with 0
	movl $1, %eax
	movl $0, %ebx
	int $0x80

