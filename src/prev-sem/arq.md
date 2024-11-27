# ./Hierarquia_de_memoria.md
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
# ./Principio_de_fucionamento_de_computadores_2.md
# Principios de funcionamento de computadores 2

- Registradores funcionam como variáveis

- Códigos compilados são especificos para arquiteturas

## passos de compilação

- Compilador: Traduz o código de alto nivel para um programa em assembly

- Assembler: traduz o código em assembly para código de máquina
    - Cria um arquivo objeto
    - Tradução um-pra-um

- Linker: Pega todos os procedimentos compilados independentemente em objetos e junta em uma única saida.
    - Uma forma de evitar de ter que compilar o programa inteiro de uma vez
    - Posiciona o s módulos de código e dados simbolicamente na memória
    - Determina o enereço dos labels de instruções e dados
    - Realiza todas as referencias internas e externas

- Loader
    - Carrega o arquivo objeto na memória principal para prepará-lo para a exeução
    - Loader no UNIX:
        - Le o cabeçalho do aquivo executavel e determina o tamanho do segmento de textos e de dados
        - aloca um espaco de enderecamento gande o suficiente para caber os segmentos
        - copia as ntrucoes e os dados do arquivo executavel para a memori
        - copia os parametros(se existirem) para o programa principal na piha
        - inicializa os registradores e posicona s ponteiros em posicoes de memoria
        - Salta para a rotina de inicio e chama a rotina principal do programa. Quando a rotina principal retorna, a rotina de iniciotermina o programa com uma chamada de sistema exit

## Microcontrolador x microprocessador

Microcontrolador - computador em um CHIP

Microprocessador - somente CPU no chip

## ASIC, ASIP, FPGA

### ASIC - application specific integrated circuit

- circuito integrado projetado especificamente para um aplicação ou propósito especial

- Vantagem:
    - Desempenho
    - Eficiência

- Desvantagem
    - Pouca flexibilidade
    - Zero extensabilidade

### ASIP - Application specific instruction set processor

- Projeto do hardware mais dedicado que um General Purpose Porcessor
- Arquitetura programada por SW projetada para executar algumas tarefas mais eficientemente
- Conjunt de instrucoes especifico a um dominio de aplicacoes
- meio termo entre GPP e ASIC

### FPGA - Field Programmable Gate Arrays

- Tambem chamados de arquiteturas reconfiguraveis
- Em uma arquitetura reconfiguravel é possivel mudar o comportamento do hardware atraves da mudanca da funcao tecnica que a arquitetura realiza
- Formado por uma matriz de elementos reconfiguraveis

- desvantagem:
    - Tempo de confguracao
    - Memoria de configuracao
    - Potencia alta para realizar a configuracao


