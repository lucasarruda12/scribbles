# Introdução a quantificação

## Determinantes

"Todo cubo", "Algum homem...", "Três ratos..." São todas sentenças quantificadas, onde "Todo", "Algum" e "Três" são determinantes.

## Quantificadores

- Várias sentenças não-verdade-funcionais são formas escondidas de quantificação
- "Max está em casas semrpe que clara está na biblioteca"
- A verdade não depende (em algunsmomentos da verdade de seus componentes

### Implicação lógica

P implica Q não depende apenas dos valores lógicos de P e q

## Quantificadores em FOL

| Quantificador | Ideia |
| ------------- | ----- |
| ∀             | Todo  |
| ∃             | Algum |

### Variáveis

Um novo tipo de termo, representando símbolos auxiliares que funcionam como símbolos de constantes e podem ser usados como argumentos de funções e predicados.

- Nomes referenciam um objeto, variáveis não.

### Fórmulas bem formadas

Qualquer predicádo n-ário seguido por n termos (nomes e variáveis) é uma fbf atômica. Variáveis estão livres ou são ligadas.

- FBFs sem variáveis livres são sentenças.

## As 4 formas de Aristóteles

- Todo P Qeia: ∀x (P x ⇒ Q x)
- Algum P Qeia: ∃x (P x ∧ Q x)
- Nenhum P Qeia: ∀x (P x ⇒ ¬(Q x)) 
- Algum P não Qeia: ∃x (P x ∧ ¬(Q x))

# A lógica dos quantificadores

## Tautologias e Quantificação

Tautologia, consequência tautológica e equivlência tautológica se aplicam às novas sentenças, mas devem ser aplicadas com cuidado.

- Cuidado mais simples: Tratar qalquer parte quantificada como uma sentença atômica. Chamamos isso de forma verdade funcional.

## Algoritmo de Forma Verdade Funcional

substituir qualquer sentença quantificada por uma meta-variável A, B, C e tentar mostrar uma tautologia com essas meta-variáveis.

- Uma sentença quantificada em FOL é uma tautologia se, e somente se, sua forma verdade funcional é uma tautologia.

## Validade e Consequência dePrimeira Ordem

Verdades lógicas e argumentos logicamente válidos precisam de métodos mais refinados quando temos quantificadores.

- Poedmos determinar que uma sentença é logicamente verdade sem saber o significado dos nomes e predicados. Dizemos que temos uma validade de primeira ordem.

## Contra-exemplos de Primeira Ordem

- Ficou completamente confuso. Acho que foi de propósito.

## Reconhecendo validade de Primeira Ordem

Não existe procedimento padrão. Também ficou muito corrido. Acho também que de propósito.

- Duas fórmulas bem formadas são logicamente equivalentes se, em quaiquer circustâncias, elas forem satisfeitas pelos mesmos objetos.

- Posso substituir fórmulas bem formadas equivalentes entre si.

## Lemas

Uma vez provados, teoremas tornam-se novos fatos que podem ser usados em novas provas. Basta repetir os passos da primeira prova.

- Lemas são uma forma de pegar um resultado que já foi provado e usar ele no contexto de uma outra prova, sem repetir os passos da primeira prova.

# Múltiplos quantificadores

Apesar de já conseguir expressar todas as 4 formas de Aistóteles, algumas sentenças podem ser expressadas melhor se usarmos mais de um quantificador.

- "Algum cubo está da esquerda de algum tetraedro": ∃x ∃y (Cube(x) ∧ Tet(y) ∧ LeftOf(x, y))
    - Essa mesma sentença pode ser expressa como ∃x (Cube(x) ∧ (∃y (Tet(y) ∧ LeftOf(x, y))))
    - A primeira é mais legível, mas as duas são equivalentes.

## Misturando quantificadores

A ordem dos quantificadores faz diferença!

- Para todo x, existe y t.q. y é mãe de x -> Todo mundo tem mãe
- Existe y t.q. para todo x, y é mãe de x -> Existe alguém que é mãe de todo mundo

## Forma PRENEX

- Geralmente, depois da tradução de sentenças compleças, temos quantificadores e conectivos misturados. Algumas evzes é importante agrupar os quantificadoresno início da sentença.

# Provas formais e quantificadores

> Não anote muito aqui. Segue as mesmas regras de joguinho de intro-lang-proof.

## Introdução do Universal

É sejar mesmo. A ideia é pedir pro mundo um objeto qualquer daquele domínio e concluir a prova usando aquele cara qualquer.


# Mais sobre quantificação

## {pelo menos, no máximo, exatamente} n

- Posso usar n existenciais juntos a ideia de que cada um desses objetos referenciados pelos existenciais são diferentes dois a dois para expressar a ideia de que existem pelo menos n

- Da mesma forma, posso usar n "para todo"s para quantificar objetos com essa propriedade e afirmar que se existe mais algum, então ele é igual a algum daqueles quantificados.

- exatamente n: pelo menos n ⋀ no máximo n

## Indução matemática

ELe falou dedominós, de definições recursivas e pipipi e popopo. Não anotei.

# Mais sobre quantificação

## {pelo menos, no máximo, exatamente} n

- Posso usar n existenciais juntos a ideia de que cada um desses objetos referenciados pelos existenciais são diferentes dois a dois para expressar a ideia de que existem pelo menos n

- Da mesma forma, posso usar n "para todo"s para quantificar objetos com essa propriedade e afirmar que se existe mais algum, então ele é igual a algum daqueles quantificados.

- exatamente n: pelo menos n ⋀ no máximo n

## Indução matemática

ELe falou dedominós, de definições recursivas e pipipi e popopo. Não anotei.

