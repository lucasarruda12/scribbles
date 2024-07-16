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
