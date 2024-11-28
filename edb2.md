# Apresentação da disciplina

3 avaliações e 1(?) trabalho

## Análise de algoritmos

Podem existir vários algoritmos que solucionem um problema

- Analisar um algoritmo significa predizer os recursos que o algoritmo irá requerer quando executado.
- Medidas mais comuns: Tempo de processamento e quantidade de memória (em função do tamanho das entradas).

## Algoritmo

Processo de cálculo, ou resolução de um grupo de problemas semelhantes, em que se estipulam, com generalidade e sem restrição, as regras formais para a obtenção do resultadoou da solução do problema.

- Os passos não podem ser ambíguos.
- A saída deve corresponder a uma resposta válida para o problema.
- O tempo de execução deve ser finito.

## Problema

O enunciado de um problema especifica em termos gerais o relacionamento entre a entrada e a saída.

- Ao fixar os parâmetros de um problema elabora-se um caso concreto (ou *instância*)

# Análise de Algoritmos

A análise de complexidade de algoritmos nos auxilia a comparar algoritmos no nível das ideias, ignorando detalhes de baixo nível tais como linguagem de programação, hardware, conjunto de intruções do processador...

- Dado um modelo abstrato de computador, quantificar os recursos computacionais necessáriosparaa soluçãode umproblema (todos os casos) como função do tamanho das entradas das suas  instâncias

- Como recursos entendemos a memória, o tempo de processamento, a natureza das operações, etc..

## Modelos

Existem diversos modelos de computação: máquinas de Turing, Random Access Machine (RAM), Pointer Based Machine (PBM).

### Máquina RAM

- Operações: E/S, Operações Aritméticas, Operações Lógicas e Relacionais, movimentação de dados entre os componentes.

- A abstração é válida quando o tamanho do problemafor suficientemente equeno para ser armazenado na memória principal do computador. 

### Complexidade de tempo em Máquina RAM

O Modelo considera que cada instrução I possuirá um tempo associado t(i) para ser operacionalizada em RAM.

- São processadas r1 instruções do tipo I1, R2 instruções do tipo I2, ... Rn instruções do tipo In. Então, o tempo total de execução T(n) será: o somatório de todos os `(instruções daquele tipo . tempo de execução de instrução daquele tipo)`

## Complexidade em tempo

Uma função f: {0,1}* → ℕ é dita como complexidade de um algoritmo A, se para todo x: {0,1}\*, A termina em exatamente f x passos.

# Complexidade de algoritmos

## Notação O

Sende duas funções f e g não negativas, f, g : ℕ → ℝ. Diz-se que f é de ordem g (ou f é de O(g)) se o crescimento de f é, no máximo, tão rápido quanto o crescimento de g. Ou seja, f é limitada superiormente por um múltiplo real positivo de g n para valores suficientemente grandes de n.

- Em símbolos: lim(n → ∞) (f(n)/g(n)) = 0

# Operações com funções assntóticas

## Regra da soma

## Regra do produto

Nada.

# NADA

LITERALMETNE NADA. COLOCOU UM EXERCÍCIO NO QUADRO. E SÓ. LITERALEMTENE NTADA

# Árvores

- Altura de um no: é o numero de nós no caminho entre um no v e seu descendente mais distante (inclusivo)

# Árvores binárias

Sendo T uma árvore binária e V um nó de T:

- Árvore binária: Todo nó possui de 0 a 2 filhos.

- Árvore binária completa: Se V é um nó com uma subárvore vazia, então V está no último ou n penúltimo nível de T.

- Árvore binária cheia: Se V é um nó com uma subárvore vazia, então V está no último nível de T

- Árvores ternárias:

## Percurso em árvores binárias

um percurso é uma visita sistemática a cada nó da árvore. Corresponde a conhecer a informação contida no nó, percorrer a subárvore esquerda e percorrer a subárvore direita.

- Pré-ordem: primeiro visitar o nó atual e depois percorrer subárvore esquerda em pré-ordem e percorrer subárvore direita em pré-ordem

- Órdem simétrica: percorre a subárvore esquerda da raíz em ordem simétrica, visita a raiz, percorre a subávore direita da raíz em ordem simétrica.

- Pós-ordem: percorre a subárvore esquerda, percorre a subárvore direita e depois visita a raiz.

## Árvores binárias de busca

