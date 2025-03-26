# ./Estruturas_de_dados.md
# o que e

- estrutura: modo como as diferentes partes de um todo estao dispostas
- O oposto do tipo abstrato de dados, se conversa sobre a implementacao daquela estrutura

# Tipo abstrato de dados x estrutura de dados

- Um tad poe ser implementado por diferentes estruturas de dados

# selecao de estruturas da dados

- quais sao as operacoes requeridas
- quais sao as operacoes mais usadas
- qual a eficiencia dessas operacoes

# ./Implementando_sets_com_listas_encadeadas.md
# Criar

- Crio uma lista vazia

# Inserir

- Iterando pela lista
    - Se aux->valor é igual ao elemento que eu quero inserir, eu não faço nada e retorno false

- terminei a iteração e o valor não estava na lista
    - crio um novo nó com o valor que eu quero inserir
    - o próximo desse nó aponta para o lista.inicio
    - o lista.inicio aponta para esse nó
    - incremento o lista.qtd e retorno true

# Buscar

- Itera pela lista
    - Se o valor é igual a aux.valor, retorna true

- Terminei a iteração e não achei, retorna false

# Remover

- Iterando pela lista
    - declaro junto da iteração um outro ponteiro chamado ant[erior]
    - se aux->valor é igual ao que eu quero adicionar
        - Se aux é o primeiro valor, eu seto lista.inicio para aux->proximo
        - senão:
            - ant->proximo = aux->proximo
            - delete(aux)
            - decremento o lista.qtd e retorno true
    - senão
        - ant = aux
        - continuo minha iteração

# Analizando complexidade de cada operação

| Operação | complexidade |
| -------- | ------------ |
| inserir  | Θ(n)         |
| remover  | Θ(n)         |
| buscar   | Θ(n)         |

# ./Implementando_sets_como_arrays.md
# Criar

- aloca um array de inteiros de tamanho `capacidade`

````
set::capacidade

set::criar(capacidade){
    this->capacidade = capacidade;
    this->elementos = new int[capacidade];
    this->quantidade = 0;
}
````

# inserir 

- se a quantidade é igual à capacidade, retorne false. Nem precisa fazer nada, o array tá cheio.
- percorre o array buscando aquele valor
    - Se achar, pronto.
    - Se não achar, insere no array e incrementa a quantidade

# Remover

- Busca o elemento no array
    - se achar, termina de percorrer o array trocando cada valor pelo próximo (com cuidado pra não fazer isso pro último elemento). Decrementa o valor de quantidade e retorna True
    - Se não achar, não faz nada

# Buscar

- Percorre o array um a um, procurando pelo elemento especificado


# Analizando complexidade de cada operação

| Operação | complexidade |
| -------- | ------------ |
| inserir  | Θ(n)         |
| remover  | Θ(n)         |
| buscar   | Θ(n)         |

# E mantendo esse array ordenado?

- Posso implementar busca binária para toda operação de busca (todas as 3 interfaces do meu set usam buscas na implementação)
- O pior caso do remover ainda é linear, pelo custo de mover todos os elementos uma casa pra trás.
- A mesma coisa pro inserir, porque agora eu preciso manter o array ordenado, e isso significa mover todos os elementos maiores que o que eu quero inserir uma casa pra frente.

# ./lista_encadeada.md
# Especificação

````
Lista {
    início: ponteiro para um nó
    quantidade: inteiro que representa o número de elementos da lista
}
````

- Nó: uma estrutura que representa um conteúdo e um ponteiro para o próximo elemento da minha lista

````
no {
    conteudo,
    proximo
}
````

# Itearndo por uma lista encadeada

````
aux = lista.inicio;

while(aux -> prox != Null)
    aux = aux->proximo;
````

# Inserir no início

- o nó->proximo é igual ao lista.inicio
- muda lista.inicio para um ponteiro para o novo nó

# Inserir no final

- Percorre a lista até encontrar o último elemento
- ultimo->proximo muda de Null para um ponteiro para o novo nó

# Remover do início

- aux = lista.inicio
- lista.inicio = lista.inicio->proximo
- delete(\*aux)

# Remover do final

- percorre a lista guardando o ponteiro anterior
- anterior.proximo = Null
- delete(\*aux)

# Complexidade de operações

| Operação          | Complexidade |
| ----------------- | ------------ |
| Inserir no início | O(1) |
| Inserir no final  | O(n) |
| Remover do início | O(1) |
| Remover do final  | O(n) |

# Lista duplamente encadeada 

- Uma lista encadeada que guarda um ponteiro para o início e outro pro fim
    - O que permite que a operação de inserir no fim seja realizada em O(1)

- Cada nó guarda a informação de quem é o seu anterior e o seu próximo.
    - O que permite que a operação de remover no fim seja realizada em O(n).

# Sentinelas

- Cria-se dois nós especiais, cabeça e cauda, para representar o início e o fim (no caso de listas duplamente encadeadas).

| Lista                        | Cabeça          | Cauda             |
| ---------------------------- | --------------- | ----------------- |
| Cabeca = ponteiro para cabeça| anterior = Null | anterior = Cabeça |
| Cauda = ponteiro para cauda  | proximo = cauda | proximo = Null    |

- Para inserir no início, crio um nó entre a cabeça e o seu próximo (que com certeza existe, pois será o cauda em listas vazias)
- Para inserir no final, crio um nó entre a cauda e o seu anterior (que com certeza existe, pois será o cabeça em listas vazias)

# ./tipos_abstratos_de_dados.md
# Tipos abstratos de dados

## Introdução

- Tipo: conceito que expimea essencia comum a um conjunto de coisas

- Tipo de dados: COnceito que exprime a essencia de um conjunto de dados
    - Valores que os dados podem assumir
    - operacoes que podem ser realizadas sobre esses dados

## Tipos primitivos

- sao definidos pela inguagem de rogramacao
- valores assumidos pels dados saomapeados diretamente para representações de maquina
- operacoes sobre os dados sao mapeadas diretamente para operacoes de maquina

## Tipos de dados definidos pelo programador

- sao definidiso peo programados com base nos tipos primitivos,ou em outros tipos definidos pelo programador

````
Fracao {
    int v[2];
}

Fracao soma(Fracao f1, Fracao f2);
````

## Definindo novos tipos em C++

### Struct

usado para definir um novo tipo de dados como uma estrutura que contem varios campos com diferentes tipos

````
struct Pessoa {
    char nome[50];
    int idade;
    float  altura;
};
````

### Typedef

- usado para renomear um tpo de dados ja  existente

- Pode ser usado para criar um nome mais curto ou mais descritivo para um tipo de dados, o que pode tornar o codigo mais legivele facil de entender

### Enum

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

### Union

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

### Class

- Consegue encapsular atributos e funcionalidades

## Perspectivas para tipos de dados

### para o computador

- tipo de dado pode ser visto como uma forma para interpretar o conteudo da memoria do computador
- saber quanto de memoria reservar
- saber como representar aquele dado

### para o programador

- tipo de dado pode ser visto como um metodo para definir o que o programador quer representar

## Tipos abstratos de dados

- abstrato: o que se considera existente no dminio das ideias e sem base material

- Pensamos a respeto dos dados em termos das operacoes realizadas, sem necessidad e saber detalhes da implementacao

- estao no centro de varios conceitso chave da engenhara de software
    - abstracao
    - modularidade
    - encapsulamento

- não estou preocupado com detalhes de implementação

## Alguns tipos abstratos

### set

- coleção que não permite duplicatas

### map

- coleção onde cada elemento é um par chave, valor
- as chaves são únicas


