## Vamos explicar cada etapa desse código em ASSEMBLY 32 BIT

<details>
  
  <summary>🔎 Seção .text</summary>

* Define a seção de código executável.  
* O rótulo global `_start` informa o ponto de entrada do programa é o símbolo `_start`.

</details>

<details>
  <summary>🚀 # _start</summary>

* Marca o início da execução do programa.

</details>

### Operações matemáticas

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

### Movimentação e comparação

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

* JE  → se ecx == eax, salta para o rótulo fim.
* Caso contrário, continua a execução normalmente.

### Fim do programa

```

fim:

mov eax,1
xor ebx, ebx
int 0x80

```
* mov eax, 1 → define a syscall exit. No Linux 32‑bit, cada syscall tem um número; 1 corresponde a exit.

* xor ebx, ebx → zera o registrador ebx, que é usado para passar o código de saída (nesse caso, 0).

* int 0x80 → instrução que chama o kernel no modo 32‑bit para executar a syscall.
