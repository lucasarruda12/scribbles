# Teoria dos Tipos
---

# Construcoes em tipos

## Produto (×)

### Form
```
A type       B type
─────────────────── (×)-Form
    A × B type
```

> (×) e uma construcao binaria entre tipos

### Intro
```
a : A        b : B
────────────────── (×)-Intro
 pair a b : A × B 
```

> ⟨a, b⟩ =(suggar)= pair a b <- Construtor de habitantes de A × B

### Elim

```
w : A × B
───────── (×).Elim₁
 w.l : A
```

```
w : A × B
───────── (×).Elim₂
 w.r : B
```

### Equacoes

|   |                  |
| - | ---------------- |
| β | `⟨a, b⟩.l = a`   |
|   | `⟨a, b⟩.r = b`   |
| η | `⟨w.l, w.r⟩ = w` |

# Eu parei de anotar aqui. Vale mais apena prestar atenção na aula. Conferir o tsouanas.org se precisar de anotações
