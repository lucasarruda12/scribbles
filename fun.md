- [Unidade 1](fun-u1.md)
- [Unidade 2](fun-u2.md)

# Monads

- return : α → m α <- esse aqui *é* o pure mesmo
- (>>=) : m α → (α → m β) → m β
- join : m (m α) → m α
- (>=>) : (α → m β) → (β → m γ) → α → m γ

> Qualquer uma das 3 últimas é suficientes para definir as outras.

# Compiler correctness

- Rapaz...
