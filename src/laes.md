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

# Introdução a quantificação

## Determinantes

"Todo cubo", "Algum homem...", "Três ratos..." São todas sentenças quantificadas, onde "Todo", "Algum" e "Três" são determinantes.

## Quantificadores

- Várias sentenças não-verdade-funcionais são formas escondidas de quantificação
- "Max está em casas semrpe que clara está na biblioteca"
- A verdade não depende (em algunsmomentos da verdade de seus componentes

### Implicação lógica

P implica Q não depende apenas dos valores lógicos de P e q

## Quantificadores em FOL

| Quantificador | Ideia |
| ------------- | ----- |
| ∀             | Todo  |
| ∃             | Algum |

### Variáveis

Um novo tipo de termo, representando símbolos auxiliares que funcionam como símbolos de constantes e podem ser usados como argumentos de funções e predicados.

- Nomes referenciam um objeto, variáveis não.

### Fórmulas bem formadas

Qualquer predicádo n-ário seguido por n termos (nomes e variáveis) é uma fbf atômica. Variáveis estão livres ou são ligadas.

- FBFs sem variáveis livres são sentenças.

## As 4 formas de Aristóteles

- Todo P Qeia: ∀x (P x ⇒ Q x)
- Algum P Qeia: ∃x (P x ∧ Q x)
- Nenhum P Qeia: ∀x (P x ⇒ ¬(Q x)) 
- Algum P não Qeia: ∃x (P x ∧ ¬(Q x))

# A lógica dos quantificadores

## Tautologias e Quantificação

Tautologia, consequência tautológica e equivlência tautológica se aplicam às novas sentenças, mas devem ser aplicadas com cuidado.

- Cuidado mais simples: Tratar qalquer parte quantificada como uma sentença atômica. Chamamos isso de forma verdade funcional.

## Algoritmo de Forma Verdade Funcional

substituir qualquer sentença quantificada por uma meta-variável A, B, C e tentar mostrar uma tautologia com essas meta-variáveis.

- Uma sentença quantificada em FOL é uma tautologia se, e somente se, sua forma verdade funcional é uma tautologia.

## Validade e Consequência dePrimeira Ordem

Verdades lógicas e argumentos logicamente válidos precisam de métodos mais refinados quando temos quantificadores.

- Poedmos determinar que uma sentença é logicamente verdade sem saber o significado dos nomes e predicados. Dizemos que temos uma validade de primeira ordem.

## Contra-exemplos de Primeira Ordem

- Ficou completamente confuso. Acho que foi de propósito.

## Reconhecendo validade de Primeira Ordem

Não existe procedimento padrão. Também ficou muito corrido. Acho também que de propósito.

- Duas fórmulas bem formadas são logicamente equivalentes se, em quaiquer circustâncias, elas forem satisfeitas pelos mesmos objetos.

- Posso substituir fórmulas bem formadas equivalentes entre si.

## Lemas

Uma vez provados, teoremas tornam-se novos fatos que podem ser usados em novas provas. Basta repetir os passos da primeira prova.

- Lemas são uma forma de pegar um resultado que já foi provado e usar ele no contexto de uma outra prova, sem repetir os passos da primeira prova.

# Múltiplos quantificadores

Apesar de já conseguir expressar todas as 4 formas de Aistóteles, algumas sentenças podem ser expressadas melhor se usarmos mais de um quantificador.

- "Algum cubo está da esquerda de algum tetraedro": ∃x ∃y (Cube(x) ∧ Tet(y) ∧ LeftOf(x, y))
    - Essa mesma sentença pode ser expressa como ∃x (Cube(x) ∧ (∃y (Tet(y) ∧ LeftOf(x, y))))
    - A primeira é mais legível, mas as duas são equivalentes.

## Misturando quantificadores

A ordem dos quantificadores faz diferença!

- Para todo x, existe y t.q. y é mãe de x -> Todo mundo tem mãe
- Existe y t.q. para todo x, y é mãe de x -> Existe alguém que é mãe de todo mundo

## Forma PRENEX

- Geralmente, depois da tradução de sentenças compleças, temos quantificadores e conectivos misturados. Algumas evzes é importante agrupar os quantificadoresno início da sentença.

# Provas formais e quantificadores

> Não anote muito aqui. Segue as mesmas regras de joguinho de intro-lang-proof.

## Introdução do Universal

É sejar mesmo. A ideia é pedir pro mundo um objeto qualquer daquele domínio e concluir a prova usando aquele cara qualquer.


# Mais sobre quantificação

## {pelo menos, no máximo, exatamente} n

- Posso usar n existenciais juntos a ideia de que cada um desses objetos referenciados pelos existenciais são diferentes dois a dois para expressar a ideia de que existem pelo menos n

- Da mesma forma, posso usar n "para todo"s para quantificar objetos com essa propriedade e afirmar que se existe mais algum, então ele é igual a algum daqueles quantificados.

- exatamente n: pelo menos n ⋀ no máximo n

## Indução matemática

ELe falou dedominós, de definições recursivas e pipipi e popopo. Não anotei.

# Mais sobre quantificação

## {pelo menos, no máximo, exatamente} n

- Posso usar n existenciais juntos a ideia de que cada um desses objetos referenciados pelos existenciais são diferentes dois a dois para expressar a ideia de que existem pelo menos n

- Da mesma forma, posso usar n "para todo"s para quantificar objetos com essa propriedade e afirmar que se existe mais algum, então ele é igual a algum daqueles quantificados.

- exatamente n: pelo menos n ⋀ no máximo n

## Indução matemática

ELe falou dedominós, de definições recursivas e pipipi e popopo. Não anotei.

# Modularidade e Design by Contract

- Abstração: Uma abstração denota as características essenciais de um elemento que destinguem este de todos os outros elementos e, assim, provê limites conceituais bem definidos.

- Módulo: Uma unidade lógica de um programa com interfacebem definida que pode ser compilada de forma independente.

## Qualidade de software

Um dos principais objetivos da engenharia de software é produzir software com qualidade. Essa propriedade pode ser vista de diversas maneiras.

- Visões de qualidade de software: interna, externa (outra que eu n anotei)

- Independente da visão, existem duas propriedades importantes que todo software deve ter: robustez e (outra cousa que não anotei)

- Robustez: a habilidade de sistemas de software de reagit apropriadamente a condições anormais. o software robusto atua aceitamvelmente em casos em que o software não consegue processar crretamente o que preccisa ser feito.

- Corretude: habilidade do sistema de software de realziar suas tarefas de maneira correta de acordo com as suas especificações.

- Tendo robustez e corretude, eu posso assumir confiabilidade do software.

## Como garantir corretude

O que o software deve fazer? Como engenheirs de software expressam as funcionalidades do software?

- Um rascunho no papel, escrever uma lista de funcionalidades em uma linguagem natural como português, u escolhem outra linguagem natural, descrevem o software em um sistema formal baseado em matemática discreta, ou descrevem com todas juntas.

## Como garantir formalmente

### Tripla de Hoare

{PRE} A {POST}

- Qualquer execução de A, começando em um estado que satisfaz a condição PRE, terminará em um estado que satisfaz a condição POST.

## Asserções

- Qualidade das asserções: Essa qualidade é no sentido de expressar mais ou menos precisamente o que você quer. Quanto mais forte a asserção, mais próximo estamos do conjunto real de valores.

# Java Modeling Language

linguagem de especificacao de interface comportamental para modelos Java, que tem mais de duas décadas de historia e segue o paradigma de Design by Contract.

- As especificações são escritas na forma de comentários (anotações) em arquivos Java ou arquivos próprios voltados para especificação.

## OpenJML

- Faz a verificacao dedutiva do probrama Java para verificar se ele satisfaz sua especificacao JML
- Fornce suporte robusto para muitos dos recursos do JML
- Facil para profissionais e alunos usarem para especificar e verificar programas Java
- Permite verificacao estatica e verificacao dinamica

## Verificacao estatica vs verificacao dinamica

- Verificacao dinamica: feita atraves da execucao de casos de teste do programa. Geralmente é mais fácil de escrever especificacoes.

- Verificacao estatica: Feita sem a execucao do prorgama. Tambem chamada de Extended Static Checking (ESC) ou Deductive Verification (DV).
    - Verificacao estatica fornece garantias mais fortes sobre o comportamento do programa.

## Verificacao dedutiva

Semelhante a execucao logica e simbolica ed um metodo para cada conjunto legal possivel de entradas. Assim, verificacoes bem-sucedidas garantem a corretude (diferente dos testes)

- Cada metodo é verificado por conta própria usando as especificacoes (não as implementações) dos outros métodos.

- Abordagem válida se todos os metodos forem verificados com sucesso.

## Especificação de classes

- Métodos:
    - Pré-condicoes: requires
    - Pos-condicoes: ensures
    - Condicoes de quadro (frame conditions): assignable e pure

- Classes e interfaces
    - Atributos com especificacao publica: `spec_public`
    - Atributos que podem ter valor null: `nullable`
    - invariante de classe: `invariant`

### Pos condicoes

Declara o que o método faz, e nào como é feitooa declarar as condicoes que devem ser satisfeitas no final do metodo.

- Deve ser garantido pelo implementador
- Pode ser assumido por quem invoca o metodo
- Clausula: `ensures`

- Clausula `ensures_redundantly`
    - Alerta ao leitor
    - Declara algo a ser provado
    - Deve ser uma implicacao dos `ensures`, `assignable` e `invariant`

### Pre condicoes

Declara as condicoes sobre o estado do programa e argumentos reais sobre as quais o metodo pode ser invocado

- Deve ser garantido por quem invoca o metodo
- Pode ser ssumido pelo implementador
- Clausula: `requires`
- Tamebm tem a clausula `requires_redundantly`

### Ordem das clausulas

não há ordem predefinida para as clausulas dentro de um caso de especificacao, porem recomenda-se seguir: Pre-condicoes primeiro e pos-condicoes depois.

- Dentro do grupo de pre-condição dentro do grupo de pos-condicão as clausulas anteriores podem definir coisas sobre as seguintes e torná-las bem definidas.

### Clausula OLD

Calcula o valor de uma expressao no estado inicial (pre-estado) de um metodo. Geralmente usado em pos-condicoes.

### Modificadores e especificacao de visibilidade

- Especiicacoes tambem tem visibilidade: tipicamente, a especificacao de um metodo tem as mesma visibilidade do metodo que ele especifica.

## Assert

`assert` declara uma condicao que deve ser satisfeita em um determinado ponto do corpo de um metodo

- Nao faz parte da especificacao da interface do metodo
- Podem ajudar a depurar a execucao ed um metodo
- Fornece um lema que auxilia na verificacao do corpo do metodo

## Assume

Pode ser usado no corpo de um metodo para instruir o mecanismo de verificacao a assumir, sem prova, que o predicado fornecido e verdadeiro.

## Invariante de classe

Descreve uma propriedade que sempre se a bplica a um objeto. Funcionam como precondicoese poscondicoes comuns a todos os metodos e construtores

- Todo metodo pode assumir que os invariantes sao validos em seu inicio
- Todo metodo deve preservar as invariantes
- Construtores criam objetos que satisfazem invariantes

- Invariantes podem ser estaticos. Nesse caso, essas condicoes se aplicam, tambem, aos metodos estaticos.

## Metodos auxiliares

Nao assumem invariantes, nao estabelecem invariantes e podem ser usados em especificacoes.

## Nullable e Non-Nullable

Especifica se um valor pode ou não assumir o valor de `null`.

## Condicoes de quadro

Indica que posicoes de memoria podem ser alteraas pelo metodo.  que nao ofr mencionado deve permanecer inalterado.

- Um metodo nao tem permissao para atribuir a uma posicao de memoria (ate mesmo com o mesmo valor) que nao esteja listado na condicao do quadro.

### Pure

Metodos `pure`devam satisfazer duas propriedades adicionais:
- Terminar
- Nao lancar exceções

## Especificando construtores

- Todo construtor é puro.

## Initially

Clausula de nível de classe que equivale a uma ensures no final de cada construtor, incluindo um construtor padrão não escrito.

## COnstraint

Nivel de calsse. Pos condicao que se aplicada a todos os metodos, mas nao se aplica a construtores.

- Constraint nao estatica se aplica apenas a metodos nao estaticos.

- Geralmente utilizado para estabelecer uma relacao entre o preestado e o pos-estado do metodo.

## Loops

aspectos a serem especificados: invariante do loop, condicao de quadro, variante

- Invariante do loop: uma condicao que dve ser satisfeita antes e ao final de cada execucao do seu corpo.

- Condicao de quadro: diz quais locais de memoria sao modificados po qualquer iteracao do corpo do loop

- Variante: uma expressao do tipo natural (sempre nao negativa) que sempre diminui a cada execucao do corpo do loop. Permite provar que o loop terminará.

## Expressoesm bem definidas

expressoes que, se fosse uma expressao java, nao lancaria uma excecao e teria um significado valido.

## Modos aritmeticos

- Java mode: a aritmetica s eocmporta exatamente como me java, com o esncapsulamento silencioso de operacoes com overflow/underflow

- Sae mode (padrao para expressoes de codigo jaa): is restuldaos das operacoes aritmeticas sao os mesmos do modo Java, mas erros de verificacao sao emitidos se a operacao puder estourar

- Math mode (padrao para expressoes de especificacao): Não existem underflow, overflow.

## Verificação modular

A verificação em JML (e outras linguagens e ferramentas de verificação dedutiva semelhantes) é modular por método. Ou seja, cada método é verificado por conta própria.

- Somente quando todos os métodos são verificados que o programa pode ser considerado verificado.

- Desde que mantenhamos as mesmas especificações do chamador, podemos verificar o chamador e o chamado independentemente.

- Esse processo é correto quando há chamadas recursivas, desde que seja comprovado que o programa termina.

- A verificação modular diz respeito a "como" os métodos são verificados, e não a "quais" métodos/classes são verificados.

### Chamada de métodos em especificações

Podemos chamar métodos nas especificações, mas existem restrições:

- Expressões nas especificações não devem ter nenhum efeito no programa Java.

- Métodos chamados nas especificações na devem ter nenhum efeito colateral.

- Construtores não podem ser usados nas especificações.

- Quando um método é usado em uma especificação, seu comportamento é determinado por sua especificação, não por sua implementação.

## Múltiplos casos de especificação

JML permite separar a especificação do método em vários casos de especificação, que podem ser considerados comportamentos diferentes

- Cada comportamento é uma sequencia simples de clausulas

- Todo comportamento se aplica por conta própria e deve ser valido por si só

- Se as pré-condições de um comportamento são válidas, então suas pós condições devem ser válidas, independentemente dos outros comportamentos.

## Especificando exceções

- `Signals (E e) P`: se o método terminar com uma exceção `de` tipo `E`, então `P` deve ser satisfeito.

- `signals_only T1, ..., Tn`:
    - Método lança apenas exceções subtipos de `T1, ..., Tn`.
    - No máximo uma clausula por especificação.
    - Padrão `signals_only \nothing` se a clausula for omitida.

### Behaviors

- `public normal_behavior`: Comportamento normal que não lança exceções
- `public exceptional_behavior`: Comportamento do método quando lança uma exceção.

## Variaveis fantasma

É possível e útil, incluir variáveis e cálculos que são apanas para especificação. Isso serve para:

- Controle de informações sobre uma classe que a implementação Java não faz.
- Registrar algum valor ou realizar algum calculo a nível de especificação com a finalidade de verificar a implementação Java.

- Declaramos variáveis com a keyword `ghost`.

- Podem ser declaradas a nível de classe ou método e estão no escopo de especificação.
- `set` é usado para mudar o valor dessas variáveis e pode ser usado com o retorno de métodos puros.

## Abstração de especificação (especificando interfaces)

Precisamos expressar as propriedades em termos de algumas quantidades abstratas. Atributos modelo podem ser usados para descrever as propriedades de uma classe abstrata

### Model fields

Usados somente em especificações para encapsular alguma propriedade de uma classe. Recebem uma implementação escrevendo uma clausula `represents` na classe derivada, conectando-o à implementação concreta.

- Também podem ser usado em uma classe concreta para representar alguma característica que não esta explicitamente presente na classe concreta.

### Datagroup

Um model field também é um datagroup; um datagroups autônomo (não associado a um valor abatato) pode ser declarado usando o tipo JMLDataGroup.

## Especificando herança

Qundo escrevemos especificacoes para a superclasse, definimos seu comportamento. Espera-se que qualquer subclasse sga esse comportamente.

- Essa propriedade é chamada de subtipo comportamental.

- JML impõe subtipo comportamental, garantindo que as subclasses herdem as especificações das superclasses.
