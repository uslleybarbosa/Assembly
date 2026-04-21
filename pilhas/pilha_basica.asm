section .data

	msg_iguais db "Valores iguais", 0xA
	len_iguais equ $ - msg_iguais

	msg_diferentes db "Valores diferentes", 0xA
	len_diferentes equ $ - msg_diferentes

section .text
	global _start

_start:

	mov eax, 5
	push eax

	mov ebx, 7
	push ebx

	pop ecx
	pop edx

	cmp ecx, edx
	jne diferentes

iguais:

	mov edx, len_iguais
	mov ecx, msg_iguais
	mov ebx, 1
	mov eax, 4

	int 0x80
	jmp fim

diferentes:

	mov edx, len_diferentes
	mov ecx, msg_diferentes
	mov ebx, 1
	mov eax, 4

	int 0x80
	jmp fim

fim:

mov eax, 1
xor ebx, ebx
int 0x80
