- [Unidade 1](fun-u1.md)

# 01 nov 2024

## at-patterns

```haskell
pairs ∷ (a da prova)
pairs (x ∷ x´ ∷ xs) = (x, x´) : pairs (x´ ∷ xs)
pairs _             = []
```

- Acabo quebrando o x´ ∷ xs Só pra construí-lo de novo. Nesses casos, posso usar um @ (at) aqui para matchear o xs ainda mais, ter certeza que ele é o ∷ de alguem e já dar um nome bom a esse alguém.

```haskell
pairs (x ∷ xs@(x´ ∷ _) = (x, x´) : pairs xs
```

## Demonstrações, indução...

- (Ver anotações fmc1)

# Mais demonstrações

Listas, maps, lens...

# Units, Empties, Maybes

## Unit

Se eu quero um tipo cujos habitantes eu não posso extrair nenhuma informação, como seria o `void` em C -> Unit type!

```
data Unit
    ⋆ ∷ Unit
```

> Haskell usa o mesmo nome pro tipo e pros habitantes desse tipo: `()`. 

- Saindo (`f : Unit → β `) Tenho tantas funções de Unit para β quantos habitantes de β (β ≅ 1 → β)
- Entrando (`f : β → Unit `) Tenho tantas funções de Unit para β quantos habitantes de Unit*
    - (*) ver o próximo tópico.

## Empty

E um tipo que não tem habitantes!

```
data Empty
    
```

- Saindo: Tenho que responder n perguntas, onde n é o número de habitantes de Empty. Seja f ∷ Empty → Nat definida pelas:
    - Ainda mais: Essa função é única! (fica de exercício para o leitor: (∀f, g ∷ Empty → α, x ∷ Empty)[f x = g x]

- Entrando: Aí é mais complicado! Tenho que responder tantas perguntas quantos habitantes de α, mas não tenho nenhuma resposta possível.

## Maybe

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

# Functors

```haskell
typeclass Functor (f : Type → Type)

fmap :: (α → β) → f α → f β

-- e as leis de functor!
-- 
-- fmap id = id
-- fmap (f ∘ g) = fmap f ∘ fmap g
```

- As nossas listas (e os maybe) são functors (com suas respectivas maps).

## Either

```haskell
data Either where
    Left :: α → Either α β
    Right :: β → Either α β
```

- Functor? Sim!\*
    - Eu tenho um type error aqui se eu tento instanciar o Either como functor. O (Either α) seria o meu functor aqui.

## Mais sobre functors

Composições de functors são functors!

```
instance Functor (Maybe ∘ List)
    fmap = Mmap ∘ Lmap
```

# Produto e Coproduto

## Produto

```haskell
α : Type    β : Type
--------------------
    α × β : Type


a : α       b : β
-----------------
   (a,b) α × β
```

- Haskell usa o mesmo construtor (,) para tipos e para habitantes de tipos (eca!). Usamos (,) para os habitantes e × para tipos.

## Records

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

## Diagramas

- Estou limitado pela tecnologia do meu tempo. Imagine aqui aquele diagrama de FMC2.

### Comutattivos

- Afirmar que o diagrama `d` comuta _é_ afirmar que os caminhos que vão da mesma `source` para o mesmo `target` (onde pelo menos um dele é legal) são iguais.

## Coproduto

- Não anotei.

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

# operaçÕes de E/S

```haskell
module OI where

type IO a = World -> (World, a)

putChar :: Char -> IO ()
getChar :: IO Char
```

- putChar não é uma função impura! Se o trabalho das fábricas de dados é produzir dados iguais, jogar dois dados e ver dois valores diferentes não é suficiente pra processar a fábrica.

```haskell
putString :: String -> IO ()
putString "" = pure ()
putString (c : cs) =
  do 
    putChar c
    putString cs 
```

## IO como functor

```haskell
Instance Functor (IO :: ty -> ty) where

    fmap :: (a -> b) -> IO a -> IO b
    fmap f ax = do
        x <- ax
        pure (f x)
```

# Applicative

- vem de ApplicativeFunctors! :D

```haskell
typeclass Applicative (f :: * -> *)
    pure :: a -> f a
    <*>  :: f (a -> b) -> f a -> f b -- O nome desse cara é splat!

    -- E as leis!
    -- 
```

## Instances de Applicative

- IO

```haskell
Instance Applicative IO where
    pure = pureⁱᵒ 
    af <*> ax = do
        f <- af
        x <- ax
        pure (f x)
```

- Maybe

```haskell
instance Applicative Maybe where
    pure = Just
    <*> (Just f) (Just a) = Just (f a)
    <*> _        _        = Nothing
```

- List (duas implementações diferentes! :O)

```haskell
instance Applicative List where
    pure x = [x]
    <*> (f : fs) (x : xs) = (f x) : (<*> fs xs)
    <*> _        _        = []
```
