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


