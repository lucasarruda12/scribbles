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

