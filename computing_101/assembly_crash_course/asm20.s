.intel_syntax noprefix

.section .text
	mov rax, [rsp + 24]
	mov rbx, [rsp + 16]
	mov rcx, [rsp + 8]
	mov rdx, [rsp]

	add rax, rbx
	add rax, rcx
	add rax, rdx
	
	xor rdx, rdx
	mov rcx, 4
	div rcx

	push rax
