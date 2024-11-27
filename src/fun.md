# ./32.01 Linguagem imperativas.md
O programa é uma série de ordens que a máquina segue fielmente.

# Linguagens multiparadigma

Linguagens que misturam mais de uma forma de programar

- Muitas linguagens multiparadigma sofrem de: buscar o melhor dos dois mundos (a união do que as duas podem fazer) e acabar com a interseção.
- Algumas funcionalidades legais de um paradigma vêm da *impossibilidade* de fazer certas coisas.

# Linguagens declarativas

# Programação Funcional x Programação Lógica

- Funcional: Funções *puras* como protagonistas
- Lógica: Relações como protagonistas

# Tipagem

### Static x Dynamic

- Vá ver as anotações de FMC1

# REPL

- Read
- Evaluate
- Print
- Loop
# ./32.02 Tipos e árvores de inferência.md
````
f : alpha -> beta    a : alpha
------------------------------
          f a : beta
````

# Aplicação de função como operador

f a <- existe um operador escondido aqui. poderíamos (e vamos (quando necessário) destacá-lo escrevendo f$a.

# Parsing

O processo de pegar uma coisa linear e reorganizar sua estrutura.

- Pegar o f a e voltar praquela árvore lá do início do arquivo

# Notações \_fix

- Prefix: f a
- Infix: a + b
- Postfix: 3!
- Mixfix: if \_ then \_ else \_
# ./32.03 2024 out 2.md
# Subexpressões

Subexpressões são subárvores da árvore de inferência que representa a expressão inicial

````
--- int --- int
 3       4
 --------- (.)
     3.4
````

Nessa expressão, 3, 4 e 3.4 são subexpressões

# Buracos x Lambda

Vá ver as anotações de IRI

# Curry e Uncurry

Vá ver as anotações de IRI

# Os Nats

Vá ver o tópico acima
# ./32.04 2024 out 04.md
# Definindo soma e multiplicação pros meus Nats

Volte duas casas para IRI.

# 2 + 3

IRI.

# 0 + n = 0

IRI.
# ./32.05 Muito sobre Haskell.md
undefined, Nats, pattern matching...
# ./32.06 2024 nov 11.md
# Nats de novo

```haskell
data Nat
    O :: Nat
    S :: Nat -> Nat
```

# Algumas funções

min, max, fib, div, quot, rem...

# Abuso de tipos

Aqui teve uma conversa legal sobre Unix entendendo 0 como ok e qualquer outro inteiro como problema. Mesma conversa de FMC1, se pá tá até no FMCbook.

# Booleanos

```haskell
data Bool
    False :: Bool
    True  :: Bool

`land` :: Bool -> Bool -> Bool
`lnot` :: Bool -> Bool
```

# Mais funções

even, odd. Com 3 equações, pulando de even pra odd e usando o `not :: Bool -> Bool`.

# Weekday

```haskell
data weekday
    pipipi popopo
```

# ListNat

Quase tipos polimórficos!!
# ./32.07 16 de out de 2024.md
# Recaptulando tipos novos

Nat, Bool, ListNat

# Head e Tail

> [Sobre desconstrutores] Em geral, se eu penso em chamar head xs, tail xs, pred n: Eu já tô fazendo uma coisa errada. já deveria ter um nome muito bom pro `head xs` (x, inclusive). Precisar chamar isNotNil numa lista sempre que eu quiser chamar as head, tail pra ter certeza que ela não vai explodir o mundo vai me deixar de novo no problema do booleanismo.

```
head :: ListNat -> Nat
head (x : \_) = x
head _        = error "..."
```

```
tail :: ListNat -> ListNat
tail (\_ : xs) = xs
tail _         = error "..."
```

- Faz sentido pensar que os construtores (e não os tipos) tem desconstrutures.
- Faz (mais ainda) sentido esperar que um constutor tenha número de desconstrutores igual à aridade dele.

# OMG polimorfismo hi!!

No lugar de fazer 

```
ìd :: Nat -> Nat
id x = x
```

```
id :: Bool -> Bool
id x = x
```

Posso definir uma infinidade dessas funções com

```
(to each a :: Type)
id :: a -> a
id x = x
```

Expandindo essa ideia, posso definir um infinidade de tipos com

```
data List a
    nil     :: List a
    Cons   :: a -> List a -> List a
```

# List

- Tipos e Kastas 
- GHCI e *

# Typeclasses

Quero definir uma sum pras listas. Não posso definir pra todo tipo a, pode ser que eu não saiba somar em um certo a. Adiciono constraints na minha função.

- O 3 tem tipo `Num a => a`. Ou seja: O 3 tem qualquer tipo a, desde que a cumpra com as restrições de `Num`.
- Posso ter vários constraints em uma função: `Num a, Eq a, Show a => a -> Bool`

### Implementando TypeClasses

```
Show Nat
    show O      = "O"
    show S n    = "S" ++ show n
```
# ./32.08 18 de out de 2024.md
# Match expression

```
match _ with
    pattern1 ~> exp1
    pattern2 ~> exp2
    ...
    patternN ~> expN

-- onde todos os expN tem o mesmo tipo α. E toda a expressão `match _ with` tem esse mesmo tipo α.
```

# Let

```haskell
let pattern = exp in ...
```

```haskell
let (q, r) = div(a, b) in ...
```

# Guards

O `Guard` é um guarda mesmo, que não te deixa ver a expressão se a condição não for verdadeira.

```haskell
foo x y 
    | cond1 = val1
    | cond2 = val2
    | otherwise = val

otherwise :: Bool
otherwise = True
```
# ./32.09 2024 out 23.md
# Relembrando:

- Tipos Polimórficos
- Map
- Filter

# List comprehension como aplicações de MAP e FILTER

```
[ t x | x ← xs ] ⇐≝⇒ map t xs
[ x   | x ← xs, p x ] ⇐≝⇒ filter p xs
[ t x | x ← xs, p x ] ⇐≝⇒ map t (filter p xs)
```

# Conjer

Eu tenho n predicados P e quero definir um único predicado pn t.q. x satisfaz pn só se (∀p ∈ P)[x satisfaz p]

```
ands :: [bool] → bool
ands [] = True
ands (x : xs) = x `and` ands xs
```

```
conjer ps x = ands ([p x | p ← ps])
-- ou então:
            = ands (map (λf. f x) ps)
-- ou então:
                   (map ($ x)     ps)
-- ou então!!:
              ands $ map ($ x) ps
```

> O `ors` fica como exercício para o leitor.

# omg fold hi!!!

- ff (First fold)

```
fold :: α → (α → α → α) → List α → α
fold z f []         = z
fold z f (x : xs)   = f x (fold z f xs)
```
# ./32.10 2024 out 25.md
# Composição

```
    P₁     P₂
α ----> κ ----> ω
|               ↑ 
-----------------
        P
```

```
P : α → ω
P x = P₂(P₁ x)

- melhor ainda!
P = P₂ ∘ P₁

- Em haskell:
P = P2 . P1
```

> omg programação tácita hi!!

# Igualdade entre funções

As anotações de FMC2 ainda existem. Pode ir lá buscar.

# Desafio

Definir a `f n = 2 (n² + 1)` sem pontos.

```
Minha ideia:

f = double . (+1) . (^2)
```

- Feedback aqui: Usar os nomes bons! Tenho nomes muito bons pra (+1) e pra (^2), que faz (muito) sentido usar aqui (e até definir a square, que eu ainda não tenho).

# Δ

```
Δ :: α → α × α
Δ a = (a, a)
```
# ./32.11 01 nov 2024.md
# at-patterns

```haskell
pairs ∷ (a da prova)
pairs (x ∷ x´ ∷ xs) = (x, x´) : pairs (x´ ∷ xs)
pairs _             = []
```

- Acabo quebrando o x´ ∷ xs Só pra construí-lo de novo. Nesses casos, posso usar um @ (at) aqui para matchear o xs ainda mais, ter certeza que ele é o ∷ de alguem e já dar um nome bom a esse alguém.

```haskell
pairs (x ∷ xs@(x´ ∷ _) = (x, x´) : pairs xs
```

# Demonstrações, indução...

- (Ver anotações fmc1)
# ./32.12 Mais demonstrações.md
Listas, maps, lens...
# ./32.13 Units, Empties, Maybes.md
# Unit

Se eu quero um tipo cujos habitantes eu não posso extrair nenhuma informação, como seria o `void` em C -> Unit type!

```
data Unit
    ⋆ ∷ Unit
```

> Haskell usa o mesmo nome pro tipo e pros habitantes desse tipo: `()`. 

- Saindo (`f : Unit → β `) Tenho tantas funções de Unit para β quantos habitantes de β (β ≅ 1 → β)
- Entrando (`f : β → Unit `) Tenho tantas funções de Unit para β quantos habitantes de Unit*
    - (*) ver o próximo tópico.

# Empty

E um tipo que não tem habitantes!

```
data Empty
    
```

- Saindo: Tenho que responder n perguntas, onde n é o número de habitantes de Empty. Seja f ∷ Empty → Nat definida pelas:
    - Ainda mais: Essa função é única! (fica de exercício para o leitor: (∀f, g ∷ Empty → α, x ∷ Empty)[f x = g x]

- Entrando: Aí é mais complicado! Tenho que responder tantas perguntas quantos habitantes de α, mas não tenho nenhuma resposta possível.

# Maybe

```
data Maybe α 
    nothing :: Maybe α
    Just    :: α → Maybe α  
```

```
safeHead :: List α → Maybe α
sh []       = Nothing
sh (x:xs)   = Just x
```
# ./32.14 Functors.md
```haskell
typeclass Functor (f : Type → Type)

fmap :: (α → β) → f α → f β

-- e as leis de functor!
-- 
-- fmap id = id
-- fmap (f ∘ g) = fmap f ∘ fmap g
```

- As nossas listas (e os maybe) são functors (com suas respectivas maps).

# Either

```haskell
data Either where
    Left :: α → Either α β
    Right :: β → Either α β
```

- Functor? Sim!\*
    - Eu tenho um type error aqui se eu tento instanciar o Either como functor. O (Either α) seria o meu functor aqui.

# Mais sobre functors

Composições de functors são functors!

```
instance Functor (Maybe ∘ List)
    fmap = Mmap ∘ Lmap
```
# ./32.15 Produto e Coproduto.md
# Produto

```haskell
α : Type    β : Type
--------------------
    α × β : Type


a : α       b : β
-----------------
   (a,b) α × β
```

- Haskell usa o mesmo construtor (,) para tipos e para habitantes de tipos (eca!). Usamos (,) para os habitantes e × para tipos.

### Tipos de dados, destrutores, extratores e notação

```haskell
data Customer
    Customer : Str -> Str -> Nat -> Date -> Customer
```

- Isomorfo com (Str × Str × Nat × Date). O que diferencia e deixa o tipo customer legal são os nomes legais que eu dou aos destrutores.

- Haskell me deixa definir Customer e destrutores de uma vez:

```haskell
data Customer = Customer {
        name : Str
    ,   email : Str
    ,   id  : Nat
    ,   date : Date
    }

-- Posso acessar esses destrutores em um c : Customer usando c.name (.name c).
```

# Diagramas

- Estou limitado pela tecnologia do meu tempo. Imagine aqui aquele diagrama de FMC2.

### Comutattivos

- Afirmar que o diagrama `d` comuta _é_ afirmar que os caminhos que vão da mesma `source` para o mesmo `target` (onde pelo menos um dele é legal) são iguais.

# Coproduto

- Não anotei.
# ./32.16.md
# 2024-Nov-27

## Indução em listas

```lean
theorem sum_soma_comm : sum (xs ++ ys) = sum xs + sum ys := by
    sorry
```

## Descrevendo teoremas com diagramas comutitivos

Podemos traduzir o teorema anterior como: O somatório da concatenação de duas listas é igual a soma dos somatórios de cada uma.

```haskell
Num α =>

          sum × sum 
L α × L α -----------→ α × α
    |                    |
(++)|                    | (+)
    ↓                    ↓
   L α ----------------→ α
             sum
```

## Cross

```haskell

   α ←-- α × β --→ β
   |       .       |
 f |       . f × g | g
   ↓       ↓       ↓ 
   γ ←-- γ × δ --→ δ

f × g ≝ pairing (f ∘ outl, g ∘ outr)
```
