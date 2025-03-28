.intel_syntax noprefix

.section .text
	jmp 1f

	.rept 81
	nop
	.endr

	1:
	  pop rdi
	  mov rax, 0x403000
	  jmp rax 
