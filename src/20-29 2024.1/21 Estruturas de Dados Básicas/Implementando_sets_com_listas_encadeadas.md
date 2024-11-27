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

