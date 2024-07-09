---
tags:
  - EDB1
---

# Introdução

- Tipo: conceito que expimea essencia comum a um conjunto de coisas

- Tipo de dados: COnceito que exprime a essencia de um conjunto de dados
    - Valores que os dados podem assumir
    - operacoes que podem ser realizadas sobre esses dados

# Tipos primitivos

- sao definidos pela inguagem de rogramacao
- valores assumidos pels dados saomapeados diretamente para representações de maquina
- operacoes sobre os dados sao mapeadas diretamente para operacoes de maquina

# Tipos de dados definidos pelo programador

- sao definidiso peo programados com base nos tipos primitivos,ou em outros tipos definidos pelo programador

````
Fracao {
    int v[2];
}

Fracao soma(Fracao f1, Fracao f2);
````

# Definindo novos tipos em C++

## Struct

usado para definir um novo tipo de dados como uma estrutura que contem varios campos com diferentes tipos

````
struct Pessoa {
    char nome[50];
    int idade;
    float  altura;
};
````

## Typedef

- usado para renomear um tpo de dados ja  existente

- Pode ser usado para criar um nome mais curto ou mais descritivo para um tipo de dados, o que pode tornar o codigo mais legivele facil de entender

## Enum

- usado para criar um novo tipo de dados que representa um conjunto de constantes nomeadas com valores inteiros sequenciais

````
enum DiaDaSemana{
    SEGUNDA,
    TERCA,
    QUARTA,
    QUINTA,
    SEXTA
};
````

## Union

- Nao deu tempo de anotar
- nao acho que vai ser importante tbm :/

````
union exemplo {
    int i;
    float i;
}
````

- O compilador reserva espaço para armazenar apenas o maior dos valores
- nao gostei da explicacao dele

## Class

- Consegue encapsular atributos e funcionalidades

# Perspectivas para tipos de dados

## para o computador

- tipo de dado pode ser visto como uma forma para interpretar o conteudo da memoria do computador
- saber quanto de memoria reservar
- saber como representar aquele dado

## para o programador

- tipo de dado pode ser visto como um metodo para definir o que o programador quer representar

# Tipos abstratos de dados

- abstrato: o que se considera existente no dminio das ideias e sem base material

- Pensamos a respeto dos dados em termos das operacoes realizadas, sem necessidad e saber detalhes da implementacao

- estao no centro de varios conceitso chave da engenhara de software
    - abstracao
    - modularidade
    - encapsulamento

- não estou preocupado com detalhes de implementação

# Alguns tipos abstratos

## set

- coleção que não permite duplicatas

## map

- coleção onde cada elemento é um par chave, valor
- as chaves são únicas


