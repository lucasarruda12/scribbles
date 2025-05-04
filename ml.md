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

# Perdi a aula aqui sobre limpeza de dados

# Trasformação de dados

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

## Transformação de numérico para Ordinal

> Sempre vai existir aqui alguma perda de informação

Um exemplo:

| Valor original | Valor discretizado |
| -------------- | ------------------ |
| 41 ou mais     | Hipertermia        |
| 39,5 ~ 41      | Febre              |
| 37,5 ~ 39,5    | Febril             |
| 36 ~ 37,5      | Normal             |
| 36 ou menos    | Hipotermia         |

## Transformação de ordinal para Numérico

Atributos ordinais podem ser convertidos em números preservando  ordem natural.

| Valor original | Valor  Numérico    |
| -------------- | ------------------ |
| Hipertermia    | 1.0                |
| Febre          | 0.8                |
| Febril         | 0.6                |
| Normal         | 0.4                |
| Hipotermia     | 0.2                |

## Transformaçao de nominal para numérico

Algumas técnicas de AM manipulam melhor valores numéricos. Sendo assim, os valores de atrbutos nominais precisam ser transformados em valores numéricos. 

- Existem estratégias diferentes para atributos com valores binério, ordinal e nominal multi-valorado.

### Atributos nominais multi-valorados

Atributos nominais multi-valorados são aqueles formados por m número pequeno de possíveis valores. Sendo assim, para cada valor possível _v_ do atributo , cria-se um atributo binário $R_{vn}$ Que será 1 se a $\text{attr} = v_n$, 0 caso contrário

# Redução de dados

Redução de dados refere-se às técnnicas e métodos utilizados para reduzir o volume, tamanho e complexiade dos dados, preservando ao mesmo tempo suas informações significativas.

- Envolve extrair os recursos ou padrões mais relevantes dos dados, eliminar redundâncias e compactar os dados para torná-los mais gerenciáveis e eficientes para processamento e análise.

## Amostragem

Técnica baseada na estatística que tenta aumentar as chances de que as amotras extraídas da base de dados orgiinal possam ser informativas e representativa.

- Amostragem simples ( com ou sem reposição), Amostragem estratificada

### Amostragem incremental

Permite a redução do número de instâncias baseada em amostragem Simples ou Estratificada.

## Redução de dimensionalidade

> Problemática: Cenários do mundo real x téccnina de arendizadoo de máquina. Alguns exemplos são Reconhecimento de Imagens e Bioinformática.

Reduzir dimensionalidade siginifica eliminar atributos ou criar novos atributos derivados desses. Pode ser feito de forma manual ou automática

- redução por extração: Obter novas variáveis `partir dos atributos iniciais. Geralmente são combinações lineares das variáveis iniciaiis.
    - É limitado por ser um modelo  linear.

- Redução por seleção:

### Seleção de características não-supervisionada (filtro) 

- Usar uma medida de similaridade e/ou correlação para detectar atributos redundantes.
- Ordenar os artibutos por ordem da medida definida.
- Escolher os N atributos.

#### Correlação de Pearson

- Coeficiente de correlação de Pearson (r) mede o grau de correlação linear entre duas variáveis qantitativas. (Tem uma fórmula aqui que não deu tempo de escrever :(.)

### Seleção de Caracteríticas supervisionada - Árvore de decisão
    > Seleção de Atributos: Wrapper

### Extração de características não supervisionada - Principal Component Analysis (PCA)

> Redução de dimensões: Extração

- Análise de componentes principal: é provavlemente o método multivariado mais usado e conhecido de redução de dados e foi proposta inicialmente em 1901 por Karl Pearson (e generalizada apenas em 1963 por Loève).

- Para tal, um novo conjunto de variáveis menr do que o conjunto original e que mantém a maioria da informação da amostra é calculado.

#### Ideia Principal

Numa base de daos, em geral, suas variáveis são correlacionadas e possuem redundância. O objetivo aqui é criar variáveis que sejam não-correlacionadas e guardem a maior parte da informação dos padrões

- Em geral, esta perda de informações é mais que compensada pela representação mais consida e precisa dos dados.

#### Implementação

A análise de redundâncias é feita pela análise da matriz de covariância destes dados.

- A PCA expressa os dados em um sistema de eixos diferentes, onde cada eixo representa uma componente principal.
- Em função do novo sistema de eixos ser ortogonal, as variáveis são não-correlacionadas.
- Os novos eixos são produzidos por combinações lineares dos eixos originais e são selecionados segundo sua variância (quantidade de informação).

- Sobre o número de componentes principais e variáveis dos padrões:
    - # de componentes = # de variáveis originais
    - Maior parte da informação concentra-se em poucos componentes
    - Obtém-se boa representação em baixa dimensão
    - Não há perda de informação. Os dados originais podem ser reconstruídos.

#### Matemática e estatística

> Variância e covariância
> Matriz de covariância
> Autovetores e Autovalores

#### Algoritmo

- Calcula-se a média e normaliza-se todo o conjunto de dados
- Calcula-se a maatriz de covariância
- Calculam-se os aiutovetores e os autovalores da matriz de covariância
- Escolhem-se os K autovetores com maior quantidade de informação associada
    - Os autovalores associados expressam a quantidade de informação
- Monta-se a matriz de projeção P baseado nos autovetores selecionados previamente
- Projeta-se a imagem normalizada obtida na etapa 1 pela matriz de projeção produzida na etapa 5

### Extração de características supervisionada - Linear Discriminant Analisys (LDA)

Técnicas de extração de caracterísitcas que consiste em buscar por um espaço de menor dimensionalidade, tais que esses representem o espaço anterior e não causem prejuízo a discriminação entre os padrões.

- LDA não é robusto a distribuição multimodal intraclasse

- objetivos específicos: Minimizar a dispersão intraclasse e maximizar a dispersão entre classes.

# Extração de características: HOG e CNN

Outros métodos de extraçao de características, incluem: Local Binary Pattern (LBP); Gray Level Co-occurence (GLCM); Histograms of Oiented Gradients (HOG);

- HOG: Quanto maior o número de pixels numa célula, maior o número da matriz.

> Essa aula foi muito "Prática" (ou seja, o professor não explicou como funciona. Só mostrou como fazer aperte-tal-botão-que-tal-coisa-acontece style).

# Treinamento e Teste

> Generalização: a habilidade de classificar padroões de teste que não foram utilizados durante o treinamento.

## Validação cruzada

É uma técnica para avaliiara capacidade de generalzação deum modelo, a partir deum cojnunto de dados. Sempre será empregada em um problema de predição.

- A gente busca, então, estimar o quão acurado é este modelo na prática, ou seja, o seu desempenho para um novo conjunto de dados.
- Particiona-se o conjunto de dados em subconjuntos mutuamente exclusids (usnado  holdout ou k-fold)

-  holdout: consiste em dividir o conjunto alde dados em dois subconjuntos muuuuuuutuamente exclusivos, um para teste e um para treinamento.
    - O conjunto de dados pode ser separado em quantidads iguais ou não. geralemente se tem 2/3 dos dados para trinamento e o 1/3 restante para teste.
    - Esta abordagem é indiada para grande quantidade de dados. Quand um conjunto é pequeno, o erro calculado na predição pode sofrer muita variação.

- K-fold: Consiste em dividir o conjnto total em dados k subconjuntos mutuamente exclusivos do mesmos tamanho.
    - Um subconjunto é utilizado para teste e os k - 1 restantes são utilizados para estimação dos parâmetros e calcula-se a acurácia do modelo.

# Classificação e Predição

## Precision

Tem com objetivo identificar quantas amostras foram classificadas positivamente, 

## Recall

Tem a mesma ideia do Precision, porem para as amotras falsas negativas.

## F-measure

- Tambem conhecida como f1 socre, eh definido como duas vezes a media harmonica entre Recall e Precision.

# Algoritmos de Classificacao

## k-NN

> k Nearest Neighbor
> É o algoritmo de aprendizado mais simples.

- Baseado em instâncias, este algoritmo supõe que todos os padrões (instâncias) são pontos no espaço n-dimensional $R^n$.

$$
d_e(x, z) = \root {\sum (x_i - z_i)^2}
$$

- Os vizinhos mais próximos de um padrão são definidos em termos da distância euclidiana. Classifica-se um ponto x atribuindo a ele o rótulo mais frequente dentre as k amostras mais próximas (esquema de votação).

- N'ao ha treinamento explicito, classificam-se os exemplos nunca vistos por meio de exemplos similares conhecidos.
    - Os proprios padroes sao utilizados como base [ara a resposta do k-NN
    - Metodo e denominado de lazy, pois necessitam manter os exemplos na memoria para classificar novos exemplos

### Algoritmo de classificacao

Dado um padrao (instancia) de consulta $x_q$ a ser classificado, sejam x1, ... xk as k insancia (padroes) do exemplos_de_treinamento que sao mais proximos de $x_q$. Entao, retorna-se a classe mais comum. <- LITERALMENTE O QUE ESTAVA ESCRITO NO SLIDE (WTF!!!!!) (DE ONDE ISSO EH UM ALGORITMO????)

### Overview

Metodos de aprendizagem baseados em instancias nao necessitam formar uma hipotese explicita da funcao alvo sobre o espaco das instancias

- Elas formam uma aproximacao local d afuncao alvo para cada nova instance a classificar.

- O k-NN e um algoritmo baseado em insntancias para aproximar funcoes alvo de valor real pi de valor discreto, assumindo que as instancias correspondem a pontos em um espaco d-dimensional.

- Vantagens: Habilidade para modlar funcoes alvo complexas por uma colecao de aproximacoes locais menos complexas; A informacao presente nos exemplos de treinamento nunca e perdida.

- Desvantagens: Tempo.

## Arvores de Decisao

- Um fluxograma com a estrutura de uma arvore. O No interno represta um teste sobre um atributo e cada ramo representa um resultado do teste. As folhas representam as classes.

- A geracao da arvore consiste de duas fases:
    - Construcao da arvore
    - Poda

### Algoritmo basico

- A arvore e construida recursivamente no sentido top-down; os atributos sao nominais (se numeros, eles sao discretizados)
    - Os atributos "testes" sao selecionados com base em heuristicas ou medidas estatisticas (ex. ganho de informacao)

## Naive Bayes

## Redes Neurais Artificiais (MLP)

## Comite de Classificadores (Ensembles)
