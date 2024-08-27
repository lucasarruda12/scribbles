# OBJETIVO

- Currificação é um negócio que a gente vê do início de FMC1 até o final de FMC2, então eu acho que é um tema legal pra aulas de proposição.

# DEMONSTRAÇÃO

````lean
[ALVO] P, Q: Prop ⊢ ((P & Q) ⇒ R) ⇔ (P ⇒ Q ⇒ R)
split
-- parte ((P & Q) ⇒ R) ⇒ (P ⇒ Q ⇒ R)
    Suponha P & Q ⇒ R
    Suponha P
    Suponha Q
    Vou demonstrar P & Q
        split
        -- parte P
        Imediato
        -- parte Q
        Imediato
    Aplico P & Q ⇒ R em P & Q para obter R
    Imediato

-- parte (P ⇒ Q ⇒ R) ⇒ P & Q ⇒ R
    Suponha P ⇒ Q ⇒ R
    Suponha P & Q

    ext-l de P & Q
    Aplico P ⇒ Q ⇒ R em P para obter Q ⇒ R

    Ext-r de P & Q
    Aplico Q ⇒ R em Q para obter R

    Imediato

````
