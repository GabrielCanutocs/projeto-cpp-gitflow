# projeto-cpp-gitflow

Projeto em C++ que fiz pra praticar Git, GitFlow e TDD (escrever o teste
antes do codigo). O programa em si e simples, o foco e o fluxo de trabalho.

## Estrutura

- `src/` codigo (main.cpp, bib.cpp, bib.hpp)
- `include/` headers
- `bin/` arquivos gerados na compilacao (.o e .exe)
- `test/` testes
- `doc/` documentacao

## Como usar

Precisa do g++ e do make.

```
make          # compila e gera bin/main.exe
make teste    # compila e roda os testes
make clean    # apaga o que foi gerado
```

## Funcionalidades

- calcularFatorial(n)
- ehPrimo(n)

## Branches

- master: versao estavel
- staging: o que ja foi aceito
- develop: onde o desenvolvimento acontece
- feat/nome: uma branch para cada funcionalidade nova

## Autor

Gabriel Canuto Camara Souza - Ciencia da Computacao, UFOP
