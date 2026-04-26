<<<<<<< HEAD
# Assembly

Este repositório é dedicado ao estudo e prática da linguagem **Assembly**.

Aqui você encontrará exemplos, exercícios e códigos que exploram desde conceitos básicos até manipulações mais avançadas em baixo nível.

## O que você vai encontrar

- **Exemplos clássicos** 
- **Manipulação de memória**
- **Operações binárias** 
- **Chamadas de sistema (syscalls)**

## Objetivo

O propósito deste repositório é servir como um guia prático e um acervo de códigos para quem deseja:

- Aprender Assembly do zero.
- Entender como funcionam as chamadas de sistema.
- Explorar a lógica de programação em baixo nível.
- Ter exemplos prontos para compilar e executar em distribuições Linux.
=======
Assembly 16‑bit — Preparação

Este arquivo é muito importante para mim, pois serve como preparo para um projeto maior: o bootloader que estou desenvolvendo.

Aqui vou criar um bootloader em Assembly 16‑bit, projetado para rodar diretamente no sistema operacional. Para testar, utilizarei o VirtualBox, evitando riscos de executar na máquina física.

Recursos utilizados

    Interrupções da BIOS — chamadas de funções de máquina.

    Neste exemplo, usaremos a famosa INT 10h, responsável por funções de vídeo.

Se você não conhece interrupções, elas são rotinas que permitem interagir com o hardware. Como estamos manipulando um bootloader, precisamos seguir essas regras e usar corretamente as funções.

👉 Lista completa: RBIL Interrupt List

Como testar em casa:

    Ter o VirtualBox instalado

    Compilar o código em .bin usando o FASM

    Converter para .img, pois a memória inicial não aceita arquivos .bin diretamente
    
O que é um bootloader?

Um bootloader é um programa simples que roda nos primeiros instantes da inicialização do computador. Ele prepara o ambiente e chama o sistema operacional.

No nosso caso, vamos criar um bootloader básico que apenas exibe uma mensagem na tela durante o boot.

Estrutura do código

Para imprimir caracteres na tela com a INT 10h, precisamos configurar:

    AH = 0x0E → função de teletipo (imprime caractere)

    BH = 0x00 → número da página

    BL = 0x07 → cor do texto (branco sobre preto)

Além disso, todo bootloader precisa ter 512 bytes e terminar com a assinatura 0xAA55.

No código, usamos:

times 510-($-$$) db 0
dw 0xAA55

Isso garante o tamanho correto e a assinatura obrigatória.

Esse código imprime “Weslley” na tela durante o boot.

Conclusão

Esse bootloader é apenas um aquecimento para projetos mais complexos que virão. Ele mostra como usar interrupções da BIOS em Assembly 16‑bit e como estruturar um bootloader válido.
>>>>>>> d11ab2b (Adiciona bootloader 16-bit teste.fasm)


