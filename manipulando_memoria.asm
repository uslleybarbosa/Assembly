section .text
global _start 

_start:

        ADD eax, 9
        SUB ebx ,2 
        IMUL edx,9

        MOV ecx,edx 
        CMP ecx, eax 

        JE  fim

fim:

	mov eax,1
	int 0x80
	syscall
