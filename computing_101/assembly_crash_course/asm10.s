.intel_syntax noprefix

.section .text
	and rax, 0x1 ; set rax to 0x1
	and rdi, 0x1 ; check LSB for rdi if even or not (0 for even, 1 for odd)
	xor rax, rdi ; toggle rax LSB for parity of rdi LSB
