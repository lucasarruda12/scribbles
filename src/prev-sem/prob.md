# ./Estimação_pontual_e_intervalar.md
# Estimativa

- Dado: um número solto
    - 2 é um dado

- Informação: dado + contexto
    - minha nota nessa prova foi 2 é uma informação

- Estimativa: Informação que é calculada
    - minha média nesse semestre foi 2 é uma estimativa

# Estimativa pontual e intervalar

- Pontual: um valor só.
    - A estimativa pontual é fruto de uma fórmula, que a gente vai chamar de estimador.

- Intervalar: um intervalo de valores possível

# Exemplo

- construa duas estimativas para o conjunto de notas abaixo (pontual e intervalar):

| n1  | n2  | n3  | n4  | n5  | n6  | n7  | n8  | n9  | n10 | n11 | n12 | n13 | n14 | n15  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---- |
| 2,0 | 2,5 | 4,0 | 5,0 | 5,5 | 5,5 | 6,0 | 6,0 | 6,0 | 6,5 | 7,0 | 8,0 | 8,5 | 9,0 | 10,0 |

- Pontual: Considere μ = (∑ᵢ₌₁ xᵢ)/n
    - μ é o estimador da média das notas.
    - ^μ = (2,0 + 2,5 + 4,0 + ... + 10,0)/16
    - ^μ = 6,152626
        - Esse chapeuzinho era pra ser em cima do μ, mas eu não consigo deixar em cima. Isso quer dizer que é a resolução dessa estimativa, a gente achou um valor pro μ.

- Intervalar: 
    1. Calcular a variância da média
        - Var(X) = ∑ᵢ₌₁(xᵢ - ^μ)²
    2. Calcular o desvio-padrão
        - Desvio padrão = raiz quadrada da variância
# ./aula_06.md
== Questões de revisão
# ./inferencia_estatistica_e_amostragem.md
# Inferencia

- Processo de generalizar uma conclusão geral tomada a partir de dados de um subset do todo.
- A amostra *tem* que ser representativa do todo

# Amostragem

## bases

- Base de treinamento
    - 70 a 80% dos dados 

- Base de teste
    - 20 a 30% somando com a base de validacao

- Base de validacao
    - 20 a 30% somado com a base de teste

## Tipos de amostra

- Probabilística: 
    - Amostra aleatória simples: tirando no papelzinho mesmo
    - Amostra aleatória estratificada: divide-se em grupos (estratos) que não se misturam. Se fulano faz parte do bairro A, ele faz parte do bairro A e não faz parte de qualquer outro bairro B. Escolho certos fulanos nos estratos para representar todo o estrato.
    - Amostra aleatória por conglomerados: divide-se novamente em grupos, mas avalia-se um grupo por completo, que será representativo de todos os grupos.
    - Amostra aleatória Sistemática: 

- Não-probabilística: Não consigo calcular a probabilidade de uma pessoa fazer parte da amostra
    - Exemplos: pesquisa por conveniência, por quotas, por “bolhas“, intencional, grupos focais

## Exercício

Pense num um esquema de amostragem para responder às seguintes perguntas:

- Quem será o vereador mais votado de Natal?
- Qual o melhor professor do IMD?
- Quantos peixes existem na lagoa de Arituba?
- Qual o livro mais disputado para empréstimo da BCZM?
