## Explicação de cada parte desse código em Assembly 32 bit

<details>
  <summary>📦 section .data</summary>

```asm
msg_iguais db "Valores iguais", 0xA
len_iguais equ $ - msg_iguais
```
#### Explicação:

  * msg_iguais → define uma string "Valores iguais" seguida de 0xA (quebra de linha).
  * len_iguais → calcula automaticamente o tamanho da string usando $ - msg_iguais.

```asm
msg_diferentes db "Valores diferentes", 0xA
len_diferentes equ $ - msg_diferentes
```
### Explicação:

  * msg_diferentes → define a string "Valores diferentes" com quebra de linha.

  * len_diferentes → calcula o tamanho da string "Valores diferentes".

</details>

<details>
  <summary>📝 section .text</summary>

```asm
global _start
```
#### Explicação:

  * Define o ponto de entrada do programa (_start).

</details>

### _start

```asm 

mov eax, 5
push eax

```

* Coloca o valor 5 em eax.
* Empilha esse valor na pilha.

```asm 

mov ebx, 7
push ebx

```
* Coloca o valor 7 em ebx.
* Empilha esse valor na pilha.

```asm

pop ecx
pop edx


```

* Retira o valor do topo da pilha (7) e coloca em ecx.
* Retira o próximo valor (5) e coloca em edx.

```asm

cmp ecx, edx
jne diferentes


```

* Compara ecx e edx.
* Se forem diferentes, salta para o rótulo diferentes
* Se forem iguais, continua no bloco iguais

### Bloco iguais

```asm

mov edx, len_iguais
mov ecx, msg_iguais
mov ebx, 1
mov eax, 4
int 0x80
jmp fim

```

* Configura a syscall write (eax = 4) para imprimir no terminal (ebx = 1).

* ecx aponta para a mensagem "Valores iguais".

* edx contém o tamanho da mensagem.

* int 0x80 executa a syscall.

* Depois, salta para fim.

### Bloco diferentes

```asm  

mov edx, len_diferentes
mov ecx, msg_diferentes
mov ebx, 1
mov eax, 4
int 0x80
jmp fim

```

* Configura a syscall write para imprimir "Valores diferentes".

* Usa os mesmos registradores (eax=4, ebx=1, ecx=mensagem, edx=tamanho).

* Executa a syscall e depois salta para fim.

### fim 

```asm 

mov eax, 1
xor ebx, ebx
int 0x80

```

* Syscall exit (eax = 1).

* ebx = 0 define o código de saída.

* int 0x80 encerra o programa.

### 🔹 Resultado esperado

* Se os valores forem iguais, imprime: 

``` 

Valores iguais

```

* Se forem diferentes, imprime:

``` 

Valores diferentes


```


