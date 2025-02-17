# Linguagem imperativas

O programa é uma série de ordens que a máquina segue fielmente.

## Linguagens multiparadigma

Linguagens que misturam mais de uma forma de programar

- Muitas linguagens multiparadigma sofrem de: buscar o melhor dos dois mundos (a união do que as duas podem fazer) e acabar com a interseção.
- Algumas funcionalidades legais de um paradigma vêm da *impossibilidade* de fazer certas coisas.

## Linguagens declarativas

## Programação Funcional x Programação Lógica

- Funcional: Funções *puras* como protagonistas
- Lógica: Relações como protagonistas

## Tipagem

### Static x Dynamic

- Vá ver as anotações de FMC1

## REPL

- Read
- Evaluate
- Print
- Loop

# Tipos e árvores de inferência

````
f : alpha -> beta    a : alpha
------------------------------
          f a : beta
````

## Aplicação de função como operador

f a <- existe um operador escondido aqui. poderíamos (e vamos (quando necessário) destacá-lo escrevendo f$a.

## Parsing

O processo de pegar uma coisa linear e reorganizar sua estrutura.

- Pegar o f a e voltar praquela árvore lá do início do arquivo

## Notações \_fix

- Prefix: f a
- Infix: a + b
- Postfix: 3!
- Mixfix: if \_ then \_ else \_

# 2024 out 2

## Subexpressões

Subexpressões são subárvores da árvore de inferência que representa a expressão inicial

````
--- int --- int
 3       4
 --------- (.)
     3.4
````

Nessa expressão, 3, 4 e 3.4 são subexpressões

## Buracos x Lambda

Vá ver as anotações de IRI

## Curry e Uncurry

Vá ver as anotações de IRI

## Os Nats

Vá ver o tópico acima

# 2024 out 04

## Definindo soma e multiplicação pros meus Nats

Volte duas casas para IRI.

## 2 + 3

IRI.

## 0 + n = 0

IRI.

# Muito sobre Haskell

undefined, Nats, pattern matching...

# 2024 nov 11

## Nats de novo

```haskell
data Nat
    O :: Nat
    S :: Nat -> Nat
```

## Algumas funções

min, max, fib, div, quot, rem...

## Abuso de tipos

Aqui teve uma conversa legal sobre Unix entendendo 0 como ok e qualquer outro inteiro como problema. Mesma conversa de FMC1, se pá tá até no FMCbook.

## Booleanos

```haskell
data Bool
    False :: Bool
    True  :: Bool

`land` :: Bool -> Bool -> Bool
`lnot` :: Bool -> Bool
```

## Mais funções

even, odd. Com 3 equações, pulando de even pra odd e usando o `not :: Bool -> Bool`.

## Weekday

```haskell
data weekday
    pipipi popopo
```

## ListNat

Quase tipos polimórficos!!

# 16 de out de 2024

## Recaptulando tipos novos

Nat, Bool, ListNat

## Head e Tail

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

## OMG polimorfismo hi!!

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

## List

- Tipos e Kastas 
- GHCI e *

## Typeclasses

Quero definir uma sum pras listas. Não posso definir pra todo tipo a, pode ser que eu não saiba somar em um certo a. Adiciono constraints na minha função.

- O 3 tem tipo `Num a => a`. Ou seja: O 3 tem qualquer tipo a, desde que a cumpra com as restrições de `Num`.
- Posso ter vários constraints em uma função: `Num a, Eq a, Show a => a -> Bool`

### Implementando TypeClasses

```
Show Nat
    show O      = "O"
    show S n    = "S" ++ show n
```

# 18 de out de 2024

## Match expression

```
match _ with
    pattern1 ~> exp1
    pattern2 ~> exp2
    ...
    patternN ~> expN

-- onde todos os expN tem o mesmo tipo α. E toda a expressão `match _ with` tem esse mesmo tipo α.
```

## Let

```haskell
let pattern = exp in ...
```

```haskell
let (q, r) = div(a, b) in ...
```

## Guards

O `Guard` é um guarda mesmo, que não te deixa ver a expressão se a condição não for verdadeira.

```haskell
foo x y 
    | cond1 = val1
    | cond2 = val2
    | otherwise = val

otherwise :: Bool
otherwise = True
```

# 2024 out 23

## Relembrando:

- Tipos Polimórficos
- Map
- Filter

## List comprehension como aplicações de MAP e FILTER

```
[ t x | x ← xs ] ⇐≝⇒ map t xs
[ x   | x ← xs, p x ] ⇐≝⇒ filter p xs
[ t x | x ← xs, p x ] ⇐≝⇒ map t (filter p xs)
```

## Conjer

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

## omg fold hi!!!

- ff (First fold)

```
fold :: α → (α → α → α) → List α → α
fold z f []         = z
fold z f (x : xs)   = f x (fold z f xs)
```

# 2024 out 25

## Composição

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

## Igualdade entre funções

As anotações de FMC2 ainda existem. Pode ir lá buscar.

## Desafio

Definir a `f n = 2 (n² + 1)` sem pontos.

```
Minha ideia:

f = double . (+1) . (^2)
```

- Feedback aqui: Usar os nomes bons! Tenho nomes muito bons pra (+1) e pra (^2), que faz (muito) sentido usar aqui (e até definir a square, que eu ainda não tenho).

## Δ

```
Δ :: α → α × α
Δ a = (a, a)
```
