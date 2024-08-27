# OBJETIVO

# DEMONSTRAÇÃO

```lean
[ALVO] (∃x)[φ(x) ∧ ψ(x)] ⇒ (∃x)[φ(x)] ∧ (∃x)[ψ(x)]
Suponha (∃x)[φ(x) ∧ ψ(x)]
Seja x t.q. φ(x) ∧ ψ(x)
split
-- parte (∃x)[φ(x)]
    tome x como testemunha
    ext-l de φ(x) ∧ ψ(x)
    imediato

-- parte (∃x)[ψ(x)]
    tome x como testemunha
    ext-l de φ(x) ∧ ψ(x)
    imediato
```
