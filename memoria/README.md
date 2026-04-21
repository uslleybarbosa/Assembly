
##section .text

```

section .text
global _start 

```

*     Define a seção de código executável.
*    global _start informa ao linker que o ponto de entrada do programa é o rótulo _start.

# _start

```

_start:

```

* Marca o início da execução do programa.

# Operações matemáticas

```

ADD eax, 9

```

* Soma 9 ao valor contido em EAX.
* Exemplo: se eax = 0, depois dessa instrução eax = 9

``` 

SUB ebx, 2 

```

* Subtrai 2 do valor em EBX.
* Exemplo: se ebx = 0, depois dessa instrução ebx = -2.

```

IMUL edx, 9

```

* Multiplica o valor em EDX por 9.
* Exemplo: se edx = 3, depois dessa instrução edx = 27

# Movimentação e comparação

```

MOV ecx, edx 

```

* Copia o valor de EDX para ECX.

```
CMP ecx, eax 
```

* Compara os valores de ECX e EAX.

```

JE fim

```

* JE (Jump if Equal) → se ecx == eax, salta para o rótulo fim.
* Caso contrário, continua a execução normalmente.

# Fim do programa

```

fim:

mov eax,1
xor ebx, ebx
int 0x80

```


