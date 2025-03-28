.intel_syntax noprefix

.section .text
	jmp 1f

	.rept 81
	nop
	.endr

	1:
	  mov rax, 0x1
