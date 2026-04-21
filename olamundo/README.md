
## section .data

```

msg  db "Olá mundo",  0xA
len  equ $ - msg

```
* msg → variável que guarda a string "Olá mundo" seguida de 0xA (quebra de linha).
* len → constante que calcula o tamanho da string. O $ representa a posição atual do assembler, então $ - msg dá o número de bytes ocupados pela string.

# section .text

```

global _start

```

* Define o ponto de entrada do programa (_start).

# _start

```

mov edx, len
mov ecx, msg
mov ebx, 1
mov eax, 4

```

* mov edx, len → coloca em edx o tamanho da string.

* mov ecx, msg → coloca em ecx o endereço da string.

* mov ebx, 1 → define o descritor de arquivo 1 (stdout, ou seja, saída padrão).

* mov eax, 4 → define a syscall write (escrever dados).

```

int 0x80

```

* Executa a syscall write.

* Resultado: imprime "Olá mundo" no terminal.

# Encerramento do programa

```

;exit(0)
mov eax, 1
xor ebx, ebx
int 0x80

```

* mov eax, 1 → define a syscall exit.
* xor ebx, ebx → zera ebx, ou seja, código de saída = 0
* int 0x80 → executa a syscall exit, encerrando o programa


