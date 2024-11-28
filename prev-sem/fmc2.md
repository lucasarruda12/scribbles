# ./cfr2/2024-06-05.md
# CFR2

## Relembrando conceitos de cardinalidade

A =c B ⇐≝⇒ (∃f: A → B) [f bij]  

A ≤c B ⇐≝⇒ (∃B' ⊆ B) [B' =c A]  (Θ. ⇔ (∃f: A → B) [f inj]) (demontrado em sala, o conjunto de testemunha eh a imagem da f e a funcao e definida em termos da f no codominio restrito da imagem da f) (volta - pede a testemunha do fato de terem cardinalidade igual e expande o dominio)

A \<c B ⇐≝⇒ (∃B' ⊊ B) [B' =c A] <- defnicao incorreta

## {=c como relacao de equivalencia e ≤c como ordem}

(=c) Rel Eq\\
refl {ida, (∘), ⁻¹} <- esbocos de demonstracao

(≤c) Ordem\\
- refl {ida, (∘), ⁻¹}
- antissimetria ⇐≝⇒ A ≤c B & B ≤c A ⇒ A = B
> minha ideia:
> Seja A' ⊆ A t.q. A =c B
> Logo, seja f: A → B t.q. f bij

Nao e valido!! tome como contra exemplo os {1} e o {2}, os dois tem mesma cardinalidade mas nao sao iguais

- sera que da pra demonstrar o segundo melhor? A ≤c B & B ≤c A ⇒ A =c B
> minha tentativa:
> Suponha A ≤c B & B ≤c A
> Seja f: A → B t.q. f inj
> Seja g: B → a t.q. g inj
> basta demonstrar que a f serve

- Θhw. gastar um tempo procurando isso

> dicas:
> separar em casos f sobre e f não sobre
> pluplupplup
> pega o f A
> pega o g f A
> pega o f g f A
> procura o limite desse negocio
> tem foto disso <- tem não. esqueci de tirar. sorry

## {Smullyen e o planeta do héteros}

- Smullyen <-- ele recomendou ler as coisas desse cara <- especificamente o "To mock a mockingbird"

> suponha um planeta com uma infinidade de habitantes
> dois gêneros
> todos querem casar em duplas heterossexuais
> cada H ama exatamente uma M
> Cada M ama exatamente uma H
> nenhum H e amado por dois M
> nenhum M e amado por dois H
> encontrar uma forma de montar casamentos com amor de pelo menos um dos lados

## {contáveis e enumerações}

> A contável (ou denumeravel) ⇐≝⇒ poderíamos escrever A =c nat ou A ≤c nat
> π Enumeração do A ⇐≝⇒ π: nat → A t.q. π sobrejetiva

## {Divagações sobre Stratums e jogos imortais}

> minha ideia para os racionais:
> no 1 dia pega 0
> no 2 dia pega o 1
> no 3 dia pega o -1
> pega 1/1 e -1/1 e 1/-1
> pega o 2
> pega o 1/2 e o -1/2
> pega o 3
> pega o 1/3 o -1/3 o 2/3 e o -2/3
> e pipipi e popopo
> meu stratum: Sn+1 = {n+1} ∪ {(i, n+1) | i ∈ Sn}

# ./cfr2/2024-06-07.md
# CFR2

## Os resultados dos jogos imortais

tendo C, D contaveis, eu vou ter:

C × D contavel
C ∪ D contavel
C ∩ D contavel
C + D contavel

## A diagonal de Cantor e os jogos injogaveis

### como demonstrar que um jogo e inganhavel:
a unica forma e mostrar que para qualquer estrategia que o cara tiver, existe algum cara que ele nao vai contar

####= a estrategia de Cantor para encontrar esse cara
Pense numa estrategia para ganhar um jogo no conjunto 2 → Nat
Ou seja, seu inimigo deu uma sequencia de sequencias de 0, 1

π0 | 0 0 0 0 1 0 ...
π1 | 0 1 0 0 1 0 ...
π2 | 1 0 1 0 1 1 ...
.
.
.

e disse que ai estao todas as sequencias de 0, 1

Eu consigo montar uma sequencia t (onde cada membro i de t e o flipamento do membro i da sequencia i) e ter certeza de que t e diferente de todo π 

Nesse exemplo, t seria 1 0 0 ...

### A demonstracao disso

(FAZER)

### As consequencias dessa demonstracao de Cantor

#### Para os reais

Eu sei que o 2 → Nat sao incontaveis
Eu sei que os reais sao incontaveis

E, sabendo que os reais sao incontaveis, eu consigo afirmar que os irracionais tambem devem ser.
Sabendo que os racionais sao e os reais nao, os irracionais obrigatoriamente tem que ser incontaveis, pq os reais sao uniao dos racioinais e irracionais

#### Cantor e os trancedentais

[REVER E ANOTAR]

#### Θ.(cantor) A set ⊢ A <c ℘A

duas coisas para demonstrar A <c ℘A & A ≠c ℘A

A primeira parte e tranquila
Eu sei que A =c A ⊆ ℘A

A segunda nem tanto (A ≠c ℘A)
# ./cfr2/2024-06-10.md
# CFR2

## recapitulando cardinalidades

A =c B ⇐≝⇒ (∃f:A → B)[f bij]
A ≤c B ⇐≝⇒ (∃C ⊆ B)(A =c C)
A <c B ⇐≝⇒ A ≤c B & A ≠c B

Demonstramos:

(≤c) e refl. trans. (não e) antissimétrica
(=c) e RelEq.

## Sobre o jogo do planeta dos heteros

Pergunte para cada pessoa nesse mundo: "quem te ama?"
Vai para esse cara que ama e pergunta a ele
Monta uma sequencia

Se termina em um homem -> da pra casar todo mundo aqui entre si

Se termina em uma mulher -> da pra casar todo mundo aqui entre si

Se nunca termina -> da pra casar todo mundo aqui entre si

Terminar de demonstrar isso e relacionar o mundo dos heteros com o das funcoes

## A ≤c e total? 

(∀A, B)[A ≤c B ou B ≤c A]

### Cardinalidades de conjuntos de reais

(0, 1] =c (0, +inf) e também (-inf, +inf)

- strech de tamanho π e shift de tamanho -π/2
- pega a função tangente pra ir de (-π/2, π/2) para (-inf, +inf)

[0, 1) =c (0, 1)

## Codificações

### codificando os racionais positivos com naturais

2/3 |→ 10010001
1   |→ 10101
4/3 |→ 1000010001

x/y |→ 1(x zeros)1(y zeros)1

### codificando parzinhos de naturais com os naturais

(n, m) |→ 2\^n 3\^m

## Θ (cantor) A <c ℘A

Números cardinais -> usamos para contar infinitos
ℵ₀ (aleph) representa a cardinalidade dos Nat
ℵ₁ e a próxima cardinalidade

ℶ₀ (beth)
ℶ₁ e a cardinalidade de 2 elevado a do anterior

os ℵ e ℶ concordam?


### Θ. (HW)
R =c ℘N

A =c A' & B =c B' 
⇒ ℘A =c ℘A'
⇒ A×B =c A'×B'
⇒ (A → B) =c (A' → B')

A ≤c A'
⇒ ℘A ≤c ℘A'
⇒ (os mesmos dos de cima)

### Uniaozona de powerset de naturais

G = ⋃ ℘ⁱN
(∀n : Nat)[℘ⁿN <c G]

E pegando a Uniaozona dos powersets desse G?

## Limitações de linguagem

Assumindo que demonstramos os homeworks, temos que o conjunto de funções de Nat pra Nat (N → N) e incontável

O conjunto de Programas de Nat → Nat que podemos definir em qualquer linguagem de programação e contavel. Eh uma sequencia de caracteres (ascii, unicode, etc).

Da pra concluir que existem, então, funções de Nat → Nat aqui que não estão no conjunto dos programas.

E isso se estende pra qualquer linguagem, a forma que temos de definir funções, com lambda, também eh uma sequencia de símbolos e caracteres
# ./cfr2/2024-06-12.md
# CFR2

## ℝ =c ℝ²

### Demontracao de Cantor

Busco uma bijecao de [0,1]² → [0,1]
Primeira ideia:

a =: 0,a₀a₁a₃...
b =: 0,b₀b₁b₂...

f (a, b) = 0,a₀b₀a₁b₁a₂b₂...

### um problema

Certos numeros tem duas expansoes reais diferentes
Tome como exemplo o (0, 1/2)

0   =: 0,000000...
1/2 =: 0,500000...
1/2 =: 0,499999...

entao, f (0,1/2) = 0,050000... ou 0,0409090...?

Caso a ou b tem duas expansoes, escole essa que nao termna em 0's

Resolvido o problema do 1/2:

1/2 =: 0,4999999...

### Um outro problema

Essa funcao de cantor tem algum errinho besta

HW. Procurar, achar e corrigir esse errinho (provavelmente relacionado com inj e sobre)

## Russel e problemas do set builder

R = {X | X ∉ X}

R ∈ R ⇔ R ∉ R

⇒:
R ∈ R
logo R ∉ R
logo 💥

⇐:
R ∉ R
Logo R ∈ R
logo 💥

### O problema

eu posso demonstrar qualquer coisa se eu tenho o set builder, pq essa demonstracao nao depende de dado nenhum.

### A solucao

Teoria dos tipos!!

Tem type error no R = {X | X ∉ X}
X ∉ X <- aqui!

Qual o tipo do x? [α]
Qual o tipo do _∉_? [α × set α → prop]
Type error!

## Hypergame e o teorema de cantor

(FAZER!!!)
# ./cfr2/2024-06-17.md
# CFR2

## Voltando a Russel

Hw. ⊢ (P ⇔ (P ⇒ ⊥)) ⇒ ⊥

r(A) ≝ {x ∈ A | x ∉ X}

(∀A)[r(A) ∉ A] -- demonstrado em sala

Para o conjuntista, A ∪ r(A) é uma forma de adicionar um cara de fora para qualquer conjunto. A gente (o tipista) usaria A + 1.

## Zermelo

ℕ ≝ ⋂(N ∈ ℘I | N legal) -- legal: axioma da infinidade de Zermelo
↓
ℤ ≝ ℕ×ℕ/~, onde (n, m)~(n', m') ⇐≝⇒ n + m' = n' + m. Aqui é bom se ligar que eu preciso que (0, 2) = (2, 4), pq eles representam o mesmo inteiro. Se eu pegasse a igualdade que eu já tenho no ℕ×ℕ, isso não seria válido.
↓
ℚ ≝ ℤ×ℤ≠0/~, onde (x, y)~(x', y') ⇐≝⇒ xy' = x'y
↓
ℝ ≝ ficou faltando :/
↓
ℂ ≝ ℝ×ℝ e não tenho minhocas! cada parzinho de reais determina um número complexo mesmo

## Um pouco (muito) sobre números complexos

Ficou complexo e eu não sei se vamos usar de novo. Optei por não anotar. Qualquer coisa joga no Google, ele falou sobre representações de números complexos.

(i) Conj. de complexos é um homomorfismo em ℂ
# ./cfr2/2024-06-21.md
# CFR2

## Finalmente resolvendo os casamentos

Ga = Pega uma pessoa p e vai botando numa sequencia (p, quem ama p, quem ama quem ama p...) Se essa sequencia terminar em um a, p ∈ Ga

Gb = Se termina em b, p ∈ Gb

G∞ = Se não termina, p ∈ G∞

A ideia é casar todo mundo dentro desses Ga, Gb, G∞ entre si. 

Nos Ga favorece o a
Nos Gb favorece o b
Nos G∞ tanto faz
# ./cfr2/2024-06-24.md
# CFR2

## Axioma da escolha

𝓐 partição da ⋃𝓐 ⇒ (∃E ⊆ ⋃𝓐)(∀A ∈ 𝓐)[E ∩ A = {⋆}]

Todo conjunto é bem ordenado (é possivel definir uma boa-ordem (qualquer subconjunto habitado possui um minimo a partir dessa ordem))

A ≤c B ou B ≤c A
# ./cfr2/2024-06-28.md
# CFR2

## downsets e upsets

A downset ⇐≝⇒ fechado para baixo  ⇐≝⇒ (∀a ∈ A)(∀x ≤ a)[x ∈ A]
A upset   ⇐≝⇒ fechado para cima   ⇐≝⇒ (∀a ∈ A)(∀x ≥ a)[x ∈ A]
O(P)      ⇐≝⇒ {D ⊆ P| D downset}

A downset é principal ⇐≝⇒ (∃a ∈ A)[A = ↓a]
    upset                              ↑a

↓a = (≤a) = {x ∈ P | x ≤ a}
↑     ≥                ≥

O (O(P); ⊆) é um poset

P + Q : Coloca todo mundo de P do lado de todo mundo de Q (sem se relacionar mesmo)
P (+) Q   : Coloca todo mundo de P embaixo de todo mundo de Q

## Homework

um dos dois merece o nome de coproduto. Qual?

## Poset de naturais

Uma forma (n caligráfico): n carinhas, um em cima do outro.

Uma outra forma (n barrado): n carinhas, um do lado do outro.

## P x Q

P x Q : 
componentwise - (p,q) ≤ (p', q') ⇐≝⇒ p ≤ p' & q ≤ q
lexicográfica - (p,q) ≤ (p', q') ⇐≝⇒ p < p' ou p = p' & q ≤ q'
antilexicográfica - (p,q) ≤ (p', q') ⇐≝⇒ q < q' ou q = q' & p ≤ q'

## S → P

(S → P; ≤)
f ≤ g ⇐≝⇒ (∀s∈S)[fs ≤ gs]

# ./cfr2/2024-07-03.md
# CFR2

## Fechos

Adicionar um propriedade desejada a uma relacao que eu tenho:

- Uma abordagem bottom-up:

Comeco com minha relacao no dia 0.
No dia 1, coloco todos os testemunhas do problema no dia 0
No dia 2, ... no dia 1
No dia n, todos os testemunhas do problema no dia n-1

Quando chego em um fix-point, pronto!

E se nao chego:

cenas para o proximo capitulo: ordinais

ou entao: pega a uniãozona!

- Uma abordagem top-down:

Rᵗ = ⋂{T | T ⊇ R & T trans}

## HW

- Verificar que a ideia do bottom-up dá certo
- Verificar que o bottom-up = top-down
- (Rᵗ)ˢ = (Rˢ)ᵗ

## Ordinais

- Ficou complicado. Boa sorte

## Recursao transfinita

- Nos naturais

    - f0  = ...
    - fn⁺ = ... fn ...


## Recursao transfinita

- f0 = ... (entrada é 0)
- fα⁺ = .. fα ... (entrada é um succ)
- fλ = ... (entrada é um lim) (tenho acesso em fκ (κ < α))
# ./cfr2/2024-07-05.md
# CRF2

## Semilattice

(S; ∨)

(∨) - assoc
(∨) - com
(∨) idempot - x ∨ x = x

Poderiamos adicionar um uma identidade u na estrutura do semilattice
E ficariamos com (S; ∨, u)

## Lattice

𝓛 = (L; ∨, ∧)

(L; ∧) é um semilattice
(L, ∨) é um semilattice
(absorção) a ∨ (a ∧ b) = a
(absorção) a ∧ (a ∨ b) = a

Poderiamos, de novo, adicionar identidades.
E teriamos um lattice bounded (cotado)
(L; ∨, ∧, ⊤, ⊥)

## Reticulado

𝓛 = (L, ≤)

````
(∀x,y) x∨y (≝ sup(x,y))
       x∧y (≝ inf(x,y))
````

## Reticulado completo

𝓛 reticulado &
````
(∀A ⊆ L)[⋁A (≝ supA)]
        [⋀A (≝ infA)]
````

## Lattices e reticulados

"Mesma coisa"

x ≤ y ⇐≝⇒ x ∧ y = x

## Posets e funções recursivas

### f leqquadrado g

-- procurar o ≤ quadrado depois

````
f ≤ g ⇐≝⇒ (∀x)[fx↓ ⇒ gx↓ & gx = fx]
                 ↓ ⇐≝⇒ x ∈ Dom(f)
ou

f ≤ g ⇐≝⇒ graph(f) ⊆ graph(g)
````

### funcoes compativeis

````
, g compativeis ⇐≝⇒ não há pontos em que f,g discordam
                      
````

### supremmum de funcoes

````
Aquela que carrega menos informações e é compativel com f e g
````

## Teorema de recurção

Enunciado:
````
z ∈ E 
h: E → E

(∃!f: ℕ → E)[
                f0 = z
                f(Sn) = ... fn
                        h  (fn)
]
````

Demonstração:
````
𝓐 = {p | p aproxima a função desejada}

p ∈ 𝓐 ⇐≝⇒ function(p) 
          & Dom(p) ⊆ ℕ 
          & Range(p) ⊆ E
          & 0 ∈ Dom(p) & p0 = z
          & (∀n ∈ ℕ)[Sn ∈ Dom(p) ⇒ n ∈ Dom(p) & p(sn) = h(pn)]


Meu testemunha aqui é ⋃𝓐
````
# ./cfr2/2024-07-08.md
# λ-calc

````
--- var
 x
--- λ-Abstração
λx.x
````

````
s t
--- App
 st
````

````
--- var
x
--- λabs  --- var
λx.x       y
-------------
   (λx.x) y
   -------- app
       y
````

## Definindo naturais

````
0 ≝ λx λy. y       | λf λx. x       | λf λx f⁰ x
1 ≝ λx λy. x y     | λf λx. fx      | λf λx f¹ x
2 ≝ λx λy  x (x y) | λf λx. f (f x) | λf λx f² x

succ  ≝ λn λx λy. x (n x y)
plus  ≝ Hw 
times ≝ Hw
````
# ./iea/2024-06-07.md
# IEA

## De P(r)osets para Cats

P : P(r)oset → 𝐶(P) : Cat

Pegue sua pre-ordem ≤P e agrupe todos os membros que sao menores ou iguais entre si em conjuntos e pegue a ordem que sobrar entre esses conjuntos herdando a ≤P

## Relembrando Monoides

𝑀 = (M, ⋆, u)
⋆ : 𝑀 × 𝑀 → 𝑀
u : 𝑀

(⋆) - assoc
u - id

## De Monoids para Cats

𝑀 : monoide → 𝐶(𝑀) : Cat

. os objetos dessa categoria serao o { 0 }, e somente o 0.
. Todas as setas desse monoide tem target e source no 0. 
. Para cada membro do monoide eu tenho exatamente uma seta.

A identidade e a identidade do monoide

A composicao de setas e a composicao do monoide

1 = u
𝐶(0,0) = |𝑀|
f∘g = f⋆g

Demostrar as leis de categoria e ver que isso serve e muito simples. Eu tenho de graça já das leis dos monoides.


## Explicando grupos para um categorista

um grupo seria uma categoria com um unico membro onde todas as setas sao invertiveis, ou seja, todas as setas sao iso.
# ./iea/2024-06-14.md
# CFR

## Teoria de conjuntos de Zermelo

-> axiomas de Zermelo aqui


# ./iea/2024-06-19.md
# IEA

## A cara das álgebras

(S; estrutura)
(operações algébricas)
(leis - equações)

Já vimos essa forma nos grupos, nos monoides, nos semigrupos, nos magmas e etc

## end(𝓐) é um grupo com a point-wise + 

𝓐 grupo abeliano ⊢ (end(𝓐); +, -, 0) [endomorfismos]

(φ + ψ) a = φa + ψa
e = λs.0
(-φ) s = -(φs)

falta uma coisa! Mostrar que todas essas operações retornam homomorfismos mesmo, se não eu tenho type error.

Demonstramos isso em sala e chegamos à conclusão de que esse é um grupo e é abeliano

E usando a ∘?

## Rings (Anéis)

R = (R; +, 0, -, ., 1)
[+, 0, -] -> parte aditiva
[., 1] -> parte multiplicativa

A ideia de anel no coração:
A parte aditiva é um grupo abeliano e a parte multiplicativa é um monoide

-> Vindo de grupos:
(x + y) + z = x + (y + z) 
0 + x = x = x + 0
-x + x = 0 = x + -x
x + y = y + x

-> vindo de monoides:
(xy)z = x(yz)
1x = x = x1

-> E leis que relacionam os dois mundos:
d(x + y) = dx + dy
(x + y)d = xd + yd

Demonstramos em sala: (End(𝓐); +, λx.0, -, ∘, id𝓐) é um anel!

## Homomorfismo em anéis

def. (homo)

Sejam R, S anéis
seja φ: |R| → |S|

φ homo 
⇐≝⇒ φ respeita a estrutura de anéis 
⇐≝⇒ {
1. φ(r + r') = φ(r) + φ(r') &
2. φ(0) = 0 &
3. φ(-r) = -φ(r) &
4. φ(rr') = φ(r)φ(r') &
5. φ(1) = 1
}

## Subanéis

A ideia é a mesma
# ./iea/2024-06-21.md
# IEA

## Nossa sequencia de estruturas algébricas

Magma
↓
Semigrupo 
↓
Monoid → Monoid comutativo 
↓ -------- ↓
Grupo 
↓
Abel

## Criterion de Homomorfismos de monoides

N, M monoides ⊢ f: |N| → |M| sobre & f respeita op ⇒ f homo

(∀n, m ∈ N)[f(1n) = 1m]
Seja x t.q. f(x) = 1m
Logo fx f(1n) = 1m f(1n) [f(1n) dos dois lados]
Logo f(x 1n) = 1m f(1n)  [f respeita a op]
Logo f(x) = f(1n) [idn & idm]

## Dominio de integridade

Chamamos um anel de dominio de inegridade sse a seguinte propriedade é válida: ab = 0 ⇒ a = 0 ou b = 0

### Dominio de cancelamento

Chamamos ... sse ... (c ≠ 0) ⇒ (ac = bc ⇒ a = b) & (ca = cb ⇒ a = b)

### Homework

Demonstrar que são equivalentes os dominios de cancelamento e de integridade

## Corpos

São anéis comutativos onde 0 ≠ 1 e (∀w ≠ 0)(∃w')[w'.w = 1 = w.w']

### Existem corpos finitos?

Hw.

### Discussão sobre homomorfismos de corpos

A estrutura de corpos é a mesma dos anéis. Então, um homomorfismo de corpos deve respeitar apenas as (+, 0, -, 1, .). E a /? ela não tem obrigação de respeitar?

Pela nossa definicação de homomorfismo, não. Mas acaba que dá no mesmo.

Demonstração: -- f homo ⊢ (∀w≠0)[fw⁻¹ = (fw)⁻¹]

Basta demonstrar f(w⁻¹) . fw = 1
Calc: f(w⁻¹) . fw
= f(w⁻¹ w) [f respeita a op]
= f(1) [inv]
= 1 [f respeita a 1]

## D dominio de integridade e 0 ≠ 1 implica D corpo

Seja D anel
Suponha ab = 0 ⇒ a = 0 ou b = 0
Suponha 1 ≠ 0
Sejam n ∈ ℕ & D := {d1, d2, ..., dn}

Seja w ≠ 0
Seja m ∈ {1, ..., n} t.q. dm = w 

- Organizar essa viagem:

temos pelo [LEMMA1 (hw)]: (w.) é injetiva.
Logo, como D é finito, (w.) é sobrejetiva
Logo {wd1, wd2, wd3, ... wdn} = {d, d1, d2, d3, ..., dn} = D
Logo 1 ∈ {wd1, wd2, wd3, ..., wdn}
Solicito m t.q. wdm = 1, pela (w.) Sobre

## Corpos ordenados

Adicionamos uma ordem aos corpos

E perdemos os complexos (onde não podemos definir ordem)
E perdemos os ℤ/pℤ

## Corpos ordenados completos

Θ. Unicidade dos corpos ordenados completos

Completos: Não existem buracos: Toda sequencia autoconvergente converge em um l: IDMb

## Finalmente: Construindo os reais

ℝ ≝ {(aₙ)ₙ ∈ seq ℚ | (aₙ)ₙ é autoconvergente}/~ 
onde aᵢ ~ bᵢ ⇐≝⇒ (aᵢ - bᵢ) tende a 0
# ./iea/2024-06-24.md
# IEA

## Ações

## CONJUNTOS

S set → End(A)

Uma ação de conjuntos para conjuntos é apenas um conjunto de funções de S → (A → A)

Pela uncurry, temos a (.) S × A → A (Que é uma (quase) operação)

## SEMIGRUPO

S set → (End(A); ∘)

Agora preciso que a ρ respeite a estrutura do semigrupo:
(ou seja, preciso que ρ respeite a ∘)

ρ(s∘s') = ρs ∘ ρs' (pela uncurry:) (s∘s')a = s(s'a)

## MONOIDE

S monoide → (End(A); ∘, ida)

Preciso que a ρ respeite a estrutura do monoide:

ρ(s∘s') = ρs ∘ ρs' (pela uncurry:) (s∘s')a = s(s'a)
ρ 1 = ida (Pela uncurry:) 1 a = a

## GRUPO
S grupo → (Auto(A); ∘, ida, ⁻¹)

ρ(s∘s') = ρs ∘ ρs' (pela uncurry:) (s∘s')a = s(s'a)
ρ 1 = ida (Pela uncurry:) 1 a = a
ρ (s⁻¹) = (ρs)⁻¹ (Pela uncurry:) s⁻¹a = b ⇔ sb = a

## RING

S ring → (End(𝓐); +pw, -pw, 0pw, ∘, ida)


| currificado,               | descurrificado |
| ````---------------------- | ---------------------- |
| ρ(s∘s') = ρs ∘ ρs',        | (s∘s')a = s(s'a) |
| ρ 1 = ida,                 | 1 a = a |
| ρ (s⁻¹) = (ρs)⁻¹,          | s⁻¹a = b ⇔ sb = a |
| ρ(s(+pw)s') = ρs (+pw) ρs' | (s+s')a = s∘a (+𝓐) s'∘a |
| ρ 0 = 0pw,                 | 0a = (λx.0)a = 0 |
| ρ(-s) = -(ρs),             |  (-s)a = -𝓐(sa) |

- for each s ∈ S 
| (ρs) (a+b) = (ρs)a + (ρs)b | s(a+b) = sa + sb |
| (ps) 0 = 0,                | s0 = 0 |
| (ps) (-a) = -((ρs) a),     | s(-a) = -(sa) |

## R-module

𝓡 ring, M abel, ρ: R → End(M)
𝓡-module ⇐≝⇒ 𝓜 = (M, ρ), onde ρ é um homomorfismo de anéis

## Espaço vetorial

É um 𝓡-modulo onde 𝓡 é corpo

Chamamos os membros de R de escalas e os membros de M de vetores

## A categoria dos R-Modulos

Fixando o R como anel, os OBJs dessa categoria seriam todos os R-modulos.

E as setas seriam os φ t.q. φ é um homomorfismo de grupos e φ respeita a ρ

Chamamos as setas de transformações lineares

````
φ: (M, ρ) → (M', ρ')
φ homomorfismo de espaços vetoriais ⇐≝⇒ φ homo de grupos & φ respeita a ρ

φ respeita a ρ ⇐≝⇒ φ((ρs)a) = (ρ's)(φa)
````
