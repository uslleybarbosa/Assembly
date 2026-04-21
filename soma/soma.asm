
section .data

msg db "5 + 7 = 12"
len equ $ -msg

	num1 dd 5
	num2 dd 7

section .text
	global _start

_start:

	; Apenas para estudo de manipulação de registradores

	mov edx, len
	mov ecx, msg
	mov eax,  [num1]
	mov  ebx , [num2]

	mov ecx , eax
	add ecx, ebx

	; Saida pronta

	mov edx, len
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 0x80

mov eax, 1
xor ebx,ebx
int 0x80
