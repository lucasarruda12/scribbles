# APRENDIZADO DE MÁQUINA
---

Aprendizado de máquina é uma área de Inteligência Artificial e Ciência da Computação que foca em, usando dados e algoritmos, imitar a forma como aprendemos, graduamente melhorando sua acurácia.

> Data-driven Algorithms

> Aprendizado supervisionado 
> Aprendizado não-supervisionado
> Aprendizado semissupervisionado: Parte do dataset tem labels, outra parte não tem.
> Aprendizado por reforço

# Categorias de aprendizado

## Supervisionado

Duas categorias principais de aprendizado supervisionado:

- Classificação: trata da previsao de variáveis-alvo categóricas, que representam classes ou rótulos discretos. Os algoritmos aprendem a mapear as instancias de entrada para uma das classes predefinidas.

- Regressão: Trata da previsão de variáveis-alvo contínuas, que representam valores numéricos. Os algorítmos aprendem a mapear as instancias de entrada para um valor numérico contínuo.

> É bem como na probabilidade, onde eu tenho variáveis discretas e continuas e modelos diferentes pra calcular probabilidade com as duas.

## não Supervisionado

Existem três categorias principais de aprendizado nao superviionado:

- **Clustering (agrupamento)**: é o processo de agrupar pontos de dados em clusters (grupos) om base em sua similaridade.
    - Um exemplo seria o de separar um conjunto de dados em grupos de elementos relacionados.

- **Association rule (Regra de Associação)**: é uma técnica para descobrir o relacionamentos entre itens em um conjunto de regras.
    - Um supermercado descobre que muitos dos homens que compravam fraldas na sexta à noite, também comprava cerveja.

- **Sumarization (sumarização)**: de dados pode ser definido como a apresentação de um resumo/relatório dos dados, gerado de forma compreensível.
    - como o resumo de um livro mesmo.

# Preprocessamento de dados

- Limpeza
- Transformação
- Redução

## Perdi uma aula aqui sobre limpeza de dados

## Trasformação de dados

É necessáro obter os dados em uma forma apropriada para mineração. Pode vir em vários tipos:

> Mineração aqui é sinônimo de aprendizagem

- Numérico -> Numérico (Normalização)
- Numérico -> Ordinal (Discretização)
- Ordinal -> Numérico
- Nominal -> Binário

### Normalização ou mudança de escala:

Propósito da normalização: minimizar os problemas oriundos do uso de unidades e dispersões distintas entre as variáveis.

$$
Att_1 = \frac{x_1 -  min}{max - min}
$$

- As variáveis podem ser normalizadas segundo a amplitude ou segundo a distribuição.

### Transformação de numérico para Ordinal

> Sempre vai existir aqui alguma perda de informação

Um exemplo:

| Valor original | Valor discretizado |
| -------------- | ------------------ |
| 41 ou mais     | Hipertermia        |
| 39,5 ~ 41      | Febre              |
| 37,5 ~ 39,5    | Febril             |
| 36 ~ 37,5      | Normal             |
| 36 ou menos    | Hipotermia         |

### Transformação de ordinal para Numérico

Atributos ordinais podem ser convertidos em números preservando  ordem natural.


| Valor original | Valor  Numérico    |
| -------------- | ------------------ |
| Hipertermia    | 1.0                |
| Febre          | 0.8                |
| Febril         | 0.6                |
| Normal         | 0.4                |
| Hipotermia     | 0.2                |

### Transformaçao de nominal para numérico

Algumas técnicas de AM manipulam melhor valores numéricos. Sendo assim, os valores de atrbutos nominais precisam ser transformados em valores numéricos. 

- Existem estratégias diferentes para atributos com valores binério, ordinal e nominal multi-valorado.

#### Atributos nominais multi-valorados

Atributos nominais multi-valorados são aqueles formados por m número pequeno de possíveis valores. Sendo assim, para cada valor possível _v_ do atributo , cria-se um atributo binário $R_{vn}$ Que será 1 se a $\text{attr} = v_n$, 0 caso contrário

## Redução de dados

## Visualização de dados

- Compreensão: Visualização de dados ajuda a entender rapidamente informações complexas e a identificar padrões e tendências.

- Comunicaçãoa: Visualizações efetivas

> Não deu tempo de anotar, mas eu tbm n acho q seja importante.

### Como criar visualizações efeitvas

- 1. Defina o objetivo: Identifique o  objetvo da visualização e adapte-a à audiência.

- 2. Escolha o tipo de gráfco adeuqado:  Selecione o tipo de visalização de dados apropriado para as informações e objetivo

- 3. Limite o número de Elementos Visuais: 

- 4. Use Cores adequadas

### Tipos de gráfico

- Análise quantitativa: Utilizdo para avaliar variáveis quantitativas.
    - Gráfico de dispersão, gráfico de radar, Histograma, gráfico de linhas, ...

- Análise qualitativa: Utilizado para avaliar variáves qualitativas
    - Núvem de palavras, Gráfico de Pizza, ...

- Ambos:
    - Gráfico de barras, mapa de calor, Boxplot, gráfico de violino, ...
