.intel_syntax noprefix

.section .text
	mov rax, 0xdeadbeef00001337	
	mov [rdi], rax
	mov rax, 0xc0ffee0000
	mov [rsi], rax
