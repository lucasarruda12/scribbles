- [Unidade 1](fun-u1.md)
- [Unidade 2](fun-u2.md)

# Monads

- return : α → m α <- esse aqui *é* o pure mesmo
- (>>=) : m α → (α → m β) → m β
- join : m (m α) → m α
- (>=>) : (α → m β) → (β → m γ) → α → m γ

> Qualquer uma das 3 últimas é suficientes para definir qualquer uma das outras 3 (fiquei de demonstrar isso aqui).

# Compiler correctness

- Rapaz...

# Monads especiais

```haskell
bind f´ : Int × String → Int × String
bind f´ (x, s) = (fx, s ++ fs)
               where (fx, fs) = f´ x

-- Usando let-in
bind f´ (x, s) = let (fx, fs) = f´ x in (fx, s ++ fs)
```

- e agora eu tenho uma forma legal de loggar com minhas funções.

- Ficou faltando (muita) coisa aqui. Parei por conta da prova.
