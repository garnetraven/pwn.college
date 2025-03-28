.intel_syntax noprefix

.section .text
	mov ebx, [rdi+4]
	mov ecx, [rdi+8]
	mov edx, [rdi+12]
	
	mov esi, [rdi]
	cmp esi, 0x7f454x46
	jne else_if

	mov eax, 0
	add eax, ebx
	add eax, ecx
	add eax, edx

else_if:
	cmp esi, 0x00005A4D
	jne else

	mov eax, 0
	mov eax, ebx
	sub eax, ecx
	sub eax, edx

	jmp done

else:
	mov eax, 1
	imul eax, ebx
	imul eax, ecx
	imul eax, edx

	jmp done

done:
