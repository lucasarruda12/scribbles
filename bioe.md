# BIOESTATÍSTICA
---

# Organização de dados

A descrição das aiáveis é imprescindível comoumpasso prévio para a adequada interpretaçào dos esultados de uma investigação,e a metodologia empregada faz parte da estatística descritiva.

- Para a descrição de dados podem-se utilizar, além de tabelas e gráficos, medidas de tendências centra e de disperção.

## Tabelas de agrupamento simples

Apresentação de tabelas:

- Título.
- Limitada por uma linha limitante superior e outra inferior.
- Não se usam linhas verticais separando as colunas.
- As abreviaturas e os símbolos pouco conhecidos devem ser explicados no rodapé da tabela.
- Deve ser indicada fonte de dados.

## Dados brutos

Massa de dados tal qual resulta apósa fase de levantamento ou reunião deles.

- Dessa maneira, a visualização de qualquer característica da amostra é extremamente difícil, devido aos dados seguirem um padrão aleatóro de ordem.

- Por esse motivo, para variáveis quantitativas, a primeiraprovidência tomada o sentido de melhorar a visualização dos dados é a sua ordenação.

## Rol

Conjunto de dados da amostra devidamente ordenados

- No casode variáveis qualitativas, o procedimento é o agrupamento.

## Tabela de agrupamentos por classe

Quando os valores de uma característica variam muito, a solução é agrupar os dados por intervalos de classe.

### Número de classes e intervalo de classe

Para se ter uma melhor visualização da dsitribuição, é conveniente estabelerfaxas ou intervalos de vaiação, com a finalidade desaber qualnúmero de dados que se situa em cada faix.

- As faixas de variação recebem o nome de classes.

- Intervalo de classe é a extenção de uma classe, que pode sera fiferença entre os dois valores extremos pertencentes a ela, e que recebem o nome de limite superior e limite inferior de classe.

- A média entre os limites superior e inferior de uma classe é o seu ponto médio.

- Normalmente, as classes possuam a mesma amplitude. Ou seja, contém intervalos iguais ou regulares. Nesse caso, diz-se que as classes são homogêneas.

### Determinação do número de classes e intervalo de classe

> Não existe regra 100% eficiente.

Vai depender de três fatores:

- Número total de dados da amostra (ou população), N;
- Amplitude total dos dados, A;
- Número de algarismos significativos da variável na qual os dados estão expressos.

> A dependência entre o número de calsses, C, e o número de dados da amostra é direta.

### Número de classes - Fórmula de Sturges

Estimativa do número de classes: $$C = 1 + \log_2 N$$,onde C é o número de classes e N é o número de dados.

- Ou: $$C = 1 + 3,222 \times \ln N$$
- Ou (de forma muito mais grosseira): $$\sqrt{N}$$

## Distribuição de Frequência: Gráficos

Dão uma visão mais imediata de como se distribuem os indivíduos nos diferentes valores da variável.

- Histograma: Consiste de uma classe de sucessão de retângulos, cuja base é o interval de classe, e a altura, a frequência em cada classe. 

> Histograma é o tipo de gráfico mais utilizado para variáveis contínuas.

# Medidas de tendência central

Quando o desejo é representar, por meio de um valor único, determinado conjunto de informações que variam, parece razoável escolher um valor central.

## Média aritmética

Representa o valor provável de uma variável. Também chamada de "valor esperado" ou "esperança".

> Costuma ser representada pela letra identificadora de variável $x$ acrescida de um traço na parte superior $\stackrel - x$

> Quando é calculada na população, é indicada pela letra grega $\mu$

### Média aritmética para dados agrupados

Para dados em agrupamentos simples, calcula-se a média do seguinte modo:

$$
\stackrel{-}{x} = \frac {\sum x_i f_i}{\sum f_i}
$$


### Propriedades da média aritmética simples

A soma algébrica dos desvios de um conjunto X com n números em relação à média aritmética, $\stackrel - x$ é sempre igual a zero.

$$
\sum (x_i - \stackrel - x _i) = 0
$$

## Média ponderada

Em alguns casos, um dos dados possui particular importância, de modo que o pesquisador deseja evidenciar este fato ressaltando seu efeito.

- Neste caso, é possível adotar um peso diferente para esse dado em relação aos outros.

$$
\stackrel{-}{x_p} = \frac {\sum x_i p_i}{\sum p_i}
$$

> Muito parecido com a média aritmética para dados agrupados (eu inclusive copiei e colei as fórmulas).
> A questão é que a frequência é concreta, a informação de quantas pessoas responderam assim vem diretamente dos meus dados coletados, enquanto os pesos são abstratos e decididos a partir de um determinado conceito.

## Mediana

É o valor de x, em uma série ordenada de dados, que divide a série em dois subgrupos de igual tamanho.

> Em outras palavras, é um valor tal que tenha igual quantidade de valores maiores e menos que ele.

> em um conjunto ordenado de dados de cardinalidade ímpar: $i_{mediana} = \frac {n + 1} {2}$

- Num conjunto par de dados, a medianaserá a média dos dois valores centrais.

## Moda

A moda de um conjunto de números é aquele número que ocorre com mais frequência.

- Conjuntos de valores que não se reperem são amodais.

- Conjuntos com duas modas são chamados bimodais.

> O resto é multimodal.
