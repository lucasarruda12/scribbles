# OBJETIVO

# DEMONSTRAÇÃO

```lean
[ALVO] P, Q: Prop ⊢ P ∨ Q ⇒ ¬(¬P ∧ ¬Q)
Suponha P ∨ Q
Suponha ¬P ∧ ¬Q

Separo em casos a partir de P ∨ Q
    -- caso P
    ext-l de ¬P ∧ ¬Q
    Aplico P em ¬P para obter 💥

    -- caso Q
    ext-r de ¬P ∧ ¬Q
    Aplico Q em ¬Q para obter 💥
```
