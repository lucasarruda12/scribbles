# Apresentação da Disciplina

## Logica e racioncionio logico

- Todo raciocinio logico depende:
    - Lógica.
    - Raciocínio correto e coerente.
    - Possibilidade de identificar falhas no racioncínio.

- Princípios de racionalidade
    - Pessoas discordam em vários pontos, mas parecem ser capazes de concordar com o que pode ser concluído a partir de uma dada informação.

## Logica e convenção

- Leis da lógica são mais do que só convenção. São menos sujeitas a alteração.

## Leis da lógica

- Se existe algo arbitrário na lógica, isso também será arbitrário em qaulquer raciocínio lógico.


## Estrutura do curso

- (Unidades I e II)
    - Logica proposicional
    - Logica de primeira ordem
    - Indução matemática
    - Tarski´s world, Fitch, Boole

- (Unidade III)
    - Design-by-contract

# Sentenças atômicas

- A FOL é formada por uma família de linguagens, que tem grmáticas similares,memos conectivos e quantificadores, diferem novocbulário parausar as sentenças maiis básicas (sentenças atômicas).
.
- Sentenças atômicas são as sentenças mais simples.

## Nomes e predicados

- Versões diferentes têm nomes e predicados diferentes.

### Taskis World

- Nomes: b, e, n...
- Predicados: Cube, Larger, Between
- sentenças atômicas:
    - Cube(b)
    - Larger(c, f)
    - Between(b, c, c)

### Outras versões

- Teoria dos conjuntos
- Aritimética

## Contantes individuais

- Simbolos usados para se referir a um objeto fixo individualmente
    - max representa o Indivíduo Max
    - 1 representa o número "um"

## Taskis World

- a até f e n1, n2...

### Diferenças para o mundo real

- Nomes se referem a exatamente Um objeto
- Nomes devvem se referir a algum objeto
- Um objeto pode ter nomes diferentes
- Um objeto pode não ter nome

## Nomes em FOL

- Toda constante deve dar nome a um objeto
- Nenhuma constante pode dar nome a mais de um objeto

## Simbolos de predicado

- Usado para expressaralgumaprorpiedade dos objetosou relação entre eles.
- Combinamos nomes e predicados para formar sentenças atômicas.
- Não são exatamente os predicados da gramática.

````
[A]     gosta de    [B]
----    --------    ----
Nome    Predicado   Nome
````

- Em FOL, o número de argumentos é fixo (aridade).

## Predicados no mundo de Tarski

- Não anotei não. Crie vergonha na cara e vá pesquisar no Google.

## Propriedades determinadas

- Em português, algumas proppriedades não são claras..
    - "Clara é jovem" (Até quantos anos uma pessoa é jovem?).

- Em FOL, ppropriedades determinadas possuem um fato definitivo que determinam se um objeto possui aquela propriedade ou não.

- Todo predicado tem um significado bem determinado e uma aridade fixa.

## Sentenças Atômicas

- Sentença formada por um predicado seguido pelo numero correto de nomes
- Notação infixa vs prefixa
- Ordem dos nomes em uma sentença atômica é importante
    -  "pipipi > popopo" /= "popopo > pipipi"

## Reinvidicações

- Sentenças são reinvindicações (algo que é verdadeiro o falso)
- Toda sentença atômica é verdadeira ou falsa

## Linguagem de primeira ordem

- Diferenciam-se pelosnomes e predicados usado spara formar as sentenças atômicas
- Compartlham s mesmos conectivos e quantificadores
- Tradução

## Projetando linguagens

- Que nomes e predicados você precisa
    - Projetado sob demanda

- Diversas maneiras de traduzir
- Clara deu ma camisa a max
- Deu(camisa, clara, max)

## Objetos

- Nomes podem ser introduzidos em ma FOL para identificar qalquer oisa que possa ser considerada um objeto

- Objeto é qualquer coisa sobre o qual possamos fazer asserções

## Regra geral

- Defina uma linguagem que defina o que você precisa com o mínimo de predicados possível

## Termo

- Sentenças que intuitivamente referenciam aum indivíduo são termos
    - omportam-se como constantes individuais
    - Constantes individuais sãos os termos mais simlpes- Termos mais complexos são construídos usando constantes individuais e símbolos de funções

## Termos complexos

- Em FOL "O pai de Max" se torna pai(max)

## Simbolos de função vs predicados

- Ambos recebem termos como parâmetros
- Função + termo retorna um termo
- Predicado + termo retorna um valor verdade
- Predicados são indicados por letras maiúsculas
- Funções seráo iniciados por letras minúsculas

## Simbolos de função

- Devem referenciar exatamente um objeto
- Suposição artificial, pois na linguagem natural isso nem sempre é verdade
- Termos complexos são fomrados por um símbolo de funçao de aridade n com n termos aplicados

## Funções no Mundo de Tarski

- Não existem

## Notação alternativa

- Existem diferentes notações para uma mesma FOL

# Consequência lógica

um Argumento é logicamente válido se, e somente se, a conclusão deve ser válida na suposição de que as premissas são válidas.

## Premissas e conclusões

- Então, logo, consequentemente -> indicam conclusões
- Por causa de, desde que, afinal de contas, se... -> indicam premissas

## Argumentos válidos e corretos

- Um argumento válido é aquele que a conclusão é verdade se as premissas foram verdade.
- Se um argumento é válido e as premissao são válidas, o argumento é dito correto.
- A lógica se preocupa com a validade, e não com a corretude.

## Métodos de prova

## Prova

Método passo-a-passo que demonstra que a conclusão S é consequência lógica das premissas P,Q e R

## Provas informais

- A diferença não está no rigor, mas no estilo
- informais:
    - Usam linguagem natural
    - Algumas vezes omitem passos intermediários

- Formais:
    - Usa um conjunto fixo de regras.
    - Apresentação em um estilo determinado.
    - Vários passos, onde cada um dele é justificado por uma regra.

- Provas formais não são necessariamente melhores que as infomais.

## Provas e identidade

- Substituição: Dado que b=c, qualquer arfimação válida para b também será válida para c
- Reflexividade: b = b
- Transitividade: a=b e b=c, então a=c
- Simetria: a=b então b=a

## Provas formais

- Usando fitch

## Consequência analítica

Expressões relacionadas à implementação escolhida pela ferramenta.

- Se cube(a) e cube(b), então sameShape(a,b). 

## Demonstrando não-consequência

- contradição

# Conectivos funcionais

Constroem o valor verdade das sentenças complexas a partir do valor verdade das sentenças que as compõem

## Jogo de henkin-kintikka

- Dois jogadores tentam demonstar o valor verdade de  uma sentença complexa (um joga pela verdade e o outro pelo falso).
- Eles se desafiam em provar partes da sentença complexa até que a prova se reduz a prova de uma sentença simples.
- Os movimentos legais do jogo dependem do formato da sentença.

| Operadores de | Obs |
| ------------- | --- |
| Negação       | Unário    |
| Conjunção     | Binário, comutativo |
| Disjunção     | Binário, comutativo |

# A lógica dos conectivos booleanos

Os conectivos lógicos são vistos como funções verdade

- O valor das sentenças complexas édeterminados pelos valores verdade das sentenças quea formar e os conectivos

## Conectivos booleanos

extensão das tabelas verdade

## Tautologia e verdade lógica

- Existem algumas sentenças que são consequência lógica de quaisquer premissas: Chamamos essas de Tautologias.
- O LEM é uma tautologia
- S é uma tautologia se, e somente se, o resultado para S em todas as linhas da tabela é verdade

## Necessidade e possibilidade lógica

### Logicamente possível

Uma sentença é *logicamente possível* se ela puder ser verdade em alguma situação

- Presumimos que uma sentença é logicamente possível se existe pelo menos um mundo em que ela seja verdade
- Dizemos que ela é TW-possível se ela é possível em algum mundo de Tarski

### Logicamente necessária

Uma sentença é *logicamente necessária* se ela for verdade em toda situação lógica possível

## Tautologias e necessidades lógicas

Toda tautologia é uma necessidade lógica, mas o contrário não vale.

## Equivalência lógica

Sentenças logicamente equivalentes têm o mesmo valor lógico em qualquer circunstância.

## Equivalência tautológica

Têm o mesmo valor verdade em cada linha da tabela verdade

## Equivalência lógica e equivalência tautológica

Se duas sentenças são tautologicamente equivalentes, elas são logicamente equivalentes.

## Consequência lógica

Sentenças logicamente equialentes são sentenças que são consequências lógicas uma das outras

## Consequência lógica e consequência tautológica

IDEM sobre tautológica implica lógica, mas não o contrário

## Princípio de substituição dos equivalentes lógicos

Sentenças logicamente equivalentes podem ser substituídas entre si

## Formas normais

### Forma normal Negativa (NNF)

Usando as duas leis de DeMorgan e dupla negação podemos transformar sentenças com ¬, ∧, ∨ em sentenças onde ¬ se aplica apenas a sentenças atômicas

- Mova a negação para dentro usando DeMorgan e remova dupla negações

```
¬((A∨B) ∧ ¬C) ⇔ ¬(A∨B) ∨ ¬¬C
              ⇔ ¬(A∨B) ∨ c
              ⇔ (¬A∧¬B) ∨ C
```

### Forma Normal Disjuntiva

Usando leis de distributividade podemos transformar qulquer sentença em forma negativa em uma sentença que é uma disjunção de conjunções literais

```
(A ∧ B) ∨ C
```

### Forma Normal Conjuntiva

De forma similar, usando as leis de distributividade, podemos transformar qualquesentençaem form normal negativa em uma sentença que é uma conjunção de disjunções literais.

```
(A ∨ B) ∧ C
```

## Considerações finais

Dá pra pensar em toda essa aula como implicações e bi-implicações. As consequências lógicas são implicações e as equivalências lógicas são bi-implicações.

- Tautologia é puramente relacionado a tabelas verdade. Se eu consigo demonstrar uma coisa por tabela verdade então ela é uma {consequência, equivalência} tautológica.

- {consequência, equivalência} tautológica implica {consequência, equivalência} lógica.



# Métodos de prova para lógica booleana

## Tabelas Verdade

- Oferecem técnicas para investigar a lógica dos operadores booleanos
- úteis para demonstrar a validadae de argumentos simples
- Duas limitações significantes:
    - Crescimento exponencial do tamanho de linhas. Para 10 argumentos, eu tenho 2¹⁰ linhas.
    - Métodos para tabela verdade não podem ser extendidos facilmente para argumentações cuja validade depende em mais do que os conectivos verdade-funcionais.

## Passos de inferência

- Eliminação de conjunção (simplificação): Se P ∧ Q é verdade, então P é verdade e Q é verdade.
    - Podemos inferir quaisquer uma das partes de uma conjunção comprovadamente verdade

- Introdução da conjunção: Se P e Q são verdade individualmente, logo a conjunção P ∧ Q é verdade.
    - Se quisermos provar uma conjunção de várias partes, podemos fazer isso provando cada uma das partes separadamento

- Eliminação da Disjunção (Prova por casos): Se P → S e Q  → S, então (P ∨ Q) → S
    - Se eu quero provar que S é consequência de P∨Q, tenho que provar que S é consequência de P & que S é consequência de Q.

- Introdução de Disjunção: Suponha que P é verdade. Logo P ∨ Q é verdade
    - Se provammos P verdade, podemos inferir qualquer disjunção na qual uma das partes seja P.

- Prova por contradição: Se quero provar ¬S a partir de premissas Pn, Posso assumir que S é verdade e buscar uma contradição.
    - Redução ao Absurdo.

# Métodos Formais de prova

Vamos chamar de *F*.

## Sistema de dedução natural

Em *F* teremos um conjunto restrito de regras que devem ser usados para construir uma prova. Cada conectivo tem duas regras básicas: introdução e eliminação.

| Conector  | Eliminação                | Introdução |
| --------  | ------------------------- | ---------- |
| ∧         | P ∧ Q ⊢ P                 | P, Q ⊢ P ∧ Q | 
| ∨         | P ⇒ S, Q ⇒ S ⊢ P ∨ Q ⇒ S  | P ⊢ P ∨ Q  |
| ⊥         | ⊥ ⊢ P                     | P, ¬P ⊢ ⊥  | 

## Subprovas

Dentro de uma (sub)prova eu posso abrir subprovas.

## Estratégias e Táticas para Provas Formais

- A primeira parte da prova é se convencer de que a conclusão é consequência lógica das premissas. Vale a pena tentar montar primeiro uma prova informal.

# Condicionais

P ⇒ Q

- P é o antecedente
- Q é o consequente

## Completude Verdade-Funcional

- ∧, ∨, ¬ é suficiente: Posso representar toda função booleanda usando ∧, ∨, ¬ (usando o sistema de mintermos)
- ∧ é suficiente: Posso representar o P∨Q usando ¬(¬P ∧ ¬Q)
- ↓ é suficiente: Posso representar o ¬P usando P↓P e o P∧Q usando (P↓P)↓(Q↓Q)

# Métodos formais de prova

## Implicação e Bimplicação

| Regra | Efeito |
| ----- | ------ |
| ⇒.elim | P, P ⇒ Q ⊢ Q
| ⇒.intro | (P ⊢ Q) ⊢ P ⇒ Q |
| ⇔.intro | P ⊢ Q, Q ⊢ P ⊢ P ⇔ Q
| ⇔.elim | P, P ⇔ Q ⊢ Q ⊢ P |

## Corretude e completude em Fitch

- Corretude: QUalquer argumento provado como válido em Fitch deve ser genuinamente válido.
- Completude: O sistema deve ser capaz de provar tudo que deveria ser possível provar.
