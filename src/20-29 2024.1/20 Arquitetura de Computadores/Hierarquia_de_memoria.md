# Memória

- Pode ser definida como um local para armazenamento de informações, onde as duas únicao ações possíveis são a leitura e a escrita

- A informação pode ser representada pelo bit ou por um conjunto de n bits que possuem um endereço definido.

- Em um sistema computacional, temos diferentes tipos de meórias, para diferentes finalidades, que se interligam de forma estruturada e que formam o subsistema de memória

# Hierarquia de memória

- Queremos memórias grandes e velozes, mas elas são caras

- O que temos são diferentes tecnologias de memória onde as mais velozes são mais caras e as mais baratas são mais lentas

- Essas memórias podem ser distribuídas dentro da arquitetura do computador

- A solução está em fazer com que as diferentes memórias combinadam pareçam ser um memória grande e veloz com um custo razoável

## Memory Wall

- O avanço nas tecnologias de processadores é muito mais rápido do que o avanço nas tecnologias de memórias.

## Pirâmide de memória

- No topo: Registradores, muito rápidos e muito próximo do processador. Muito caros!

- No meio: Memória Cache: Dividida em Levels (L1, L2, L3..., quanto menor esse número, mais próximo do processador).

- Memória principal: A RAM. Mais barata, em maior quantidade e mais afastada do processador

- Memória externa: HDDs, SSDs e outras formas de armazenamento não-volátil

## Memória Cache

- Não faziam parte do processador
- Passaram a fazer parte recentemente. Os Cache L1, L2 e as vezes o L3, estão fisicamente grudados ao processador

## Memória principal (RAM)

## Memória secundária

- HDDs, SSDs, Fitas magnéticas...

---

- Os dados contidos num nível da hierarquia de memória são sempre um subconjunto dos dados contidos no nível anterior

- Tudo que está no registrador, está na cache. Tudo que está na cache está na memória secundária.


## Memória volátil

- Volátil: o armazenamento de dados é dependente de um fluxo constante de energia.

- Tudo excesso pela memória secundária é volátil

## Memória primária x secundária

- Memória primária (principal): memória que o processador pode acessar diretamente.

- Memória secundária: não podem ser endereçadas diretamente. ou seja, a informação precisa ser primeiro carregada na memória principal para depois ser enviada para a memória secundária.

## Cache hit e Cache miss

- QUando o processador busca uma informação na memória principal, ele vai primeiro na cache.

- Se a informação está na cache, chama-se cache hit. A informação é buscada e será usada pelo processador.

- Se a informação não está na cache, chama-se cache miss. A informação precisará ser buscada na memória principal.

- Busca na L1:
    - AChou: pronto.
    - Não achou: busca na memória primária, copia pra L1 e repete o primeiro passo.
    - Ainda não achou: Busca por E/S

## Princípio da localidade

- Localidade: estatística de comportamento do acesso dos dados da memória

- Se um item é referenciado,
    - Princípio da localidade temporal: Ele tende a ser referenciado em breve novamente
    - Princípio da localidade espacial: Os itens na sua vizinhança também serão

- O princípio da localidade faz com que a hierarquia de memória funcione na prática

## Memória cache

- Memórias rápidas e de pequena capacidade

- Guarda somente os itens que serão referenciados com frequência em determinado momento.

- Para tal, explora os conceitos de localidade temporal e de localidade espacial.

- Tais itens podem ser tanto dados, como instruções

## Terminologia

- Taxa de hit: % de hits ocorridos em relação ao total de acessos à memória

- Taxa de miss: O inverso

- Tempo de hit: Tempo para determinar se o acesso é um hit + tempo para acessar e entregar o dado de nível inferior para CPU

- Penalidade de miss: Tempo para determinar se o acesso é um miss + tempo para substituir o bloco no nível inferior + tempo de entregar o bloco à CPU

- Palavra: Unidade do sistema. Algumas memórias podem ser acessadas por byte ao invés de palavra.

- Bloco: Um coletivo de palavras dentro da memória.

- Linha: Um coletivo de palavras dentro da cache

- Tag: Identificador único de um bloco de memória. 
