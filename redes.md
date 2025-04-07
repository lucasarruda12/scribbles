# REDES DE COMPUTADORES
---

# Conceitos Gerais

A funcionalidade básica de uma rede de computadores é fazer que uma informação saia de um ponto A e chegue a um ponto B. 

> O tráfego nessas redes, que costumava ser 100% humano, está cada vez mais tomado por serviçoes automatizados. São máquinas trocando informações com outras máquinas.

## Divisão das redes em componentes

Podemos dividir uma rede em três elementos:

- **Dispositivos finais**: 
- **Equipamentos de comunicação**: roteadores, switches e demais equipamentos que não guardam informação, mas são responsáveis por tornar possível a comunicação na rede
- **Enlaces de dados**: ligação entre dispositivos para possibilitar transmitir e receber informações

> Essa é uma divisão muito simplificada, baseada em dispositivos de rede

## Descrição do serviço

> Podemos ver as redes como:
- uma infraestrutura que provê serviços a aplicações 

- Os sistemas finais (conjunto de serviços e aplicações) oferecem uma interface ed Programação de Aplicação (API).
    - Essa API é um conjunto de regras que o software emissor deve cumprir prar que a internet seja capaz de enviar os dados ao programa de destino.
    - Ela especifica como o programa solicita à infraestrutura da internet que envie dados a um programa de destino específico.

## Protocolo 

Os sistemas finais, os comutadores de pacotes e outras peças da internet executam protocolos que controlam o envio e recebimento de informações.

- Um protocolo define o formato e a ordem das mensagens trocadas entre duas ou mais entidades comunicantes, bem como as ações realizadas na transmissão de e/ou no recebimento de uma mensagem ou outro evento.

- Todas as atividades na internet que envolvem duas ou mais entidades remotas comunicantes são governadas por um protocolo.

- Protocolos executados no hardware de dois computadores conectados fisicamente contolam o fluxo de bits no "cabo" entre as duas placas de interface de rede.

- Protocolosde controle de congestionamento em siistemas finais controlam a taxa com que os pacotes são transmitisdos entre a origem e o destino.

- Protocolos em roteadores determinam o caminho de um pacote da origem ao destino.

# Histórico e cenário atual

Os primeiros passos da disciplina de redes de computadores e da internet podem ser traçados desde o início na década de 1960.

> Podemos dizer que a ARPAnet foi a rede que deu origem à internet de hoje.
- ARPAnet: Criada em 1970, inicialmente como uma rede isolada, a ARPAnet tinha cerca de 15 nós.

- Do início a meados de 1970, surgiram novas redes independentes de comutação de pacotes.
> Essas redes eram isoladas e independentes entre si.

- O trabalho pioneiro de interconexão de redes, sob patrocínio da DARPA, criou basicamente  uma rede de redes e o termo internetting foi cunhado para descrever esse trabalho.

- Ao final da década de 1980, o número de máquinas ligadas à essa primeira versão da internet pública alcança 100 mil.

- O principal evento da década de 1990 foi o surgimento da World Wide Web, que levou a internet para os lares e as empresas de milhares de pessoas no mundo inteiro. A segunda metade da década de 1990 foi um período de tremendo crescimento e inovação.

> O surgimento do HTML e do navegador permitem difundir as informações de maneira muito mais visual e abrangente para todos os tipos de usuários.

## Internet no Brasil

- 1987/88: Laboratório Nacional de Computação Científica (LNCC) e a Fundação de Pesquisa do Estado de São Paulo (FAESP) conectaram-se com instituições nos EUA.

- 1988: A UFRJ conectou-se à UCLA

- 1990 - A Rede Nacional de Pesquisa (RNP) é uma iniciativa do Ministério da Ciência e Tecnologia (MCT).
    - Implantar uma moderna infra-estrutura de serviços de internet, com abrangência nacional.
    - Até abril de 1995, a atuação da RNP se restringia a áreas de interesse da comunidade de educação e pesquisa do país.

# Como a internet funciona

4 Problemas fundamentais:

- 1. Nomeacao e enderecamento: localizando o destino
- 2. Roteamento: encontrando um caminho para o destino.
- 3. Encaminhamento: enviando dados para o destino.
- 4. Confiabilidade: lidando com falhas, perdas, etc...

> Cada um é motivado por uma necessidade clara e as soluções nem sempre são diretas.

## Nomeação e enderecamento

> No mundo real, a gente só consegue enviar uma carta para um destinatário se a gente tem uma especificação a respeito daquele endereço. Nas redes de computadores isso não é diferente.

- Endereco de rede: onde o host esta localizado.
    - Requer um endereco para o host de destino

- Nome do host (hostname)
> Precisamos de nomes, principalmente, porque tem ser humano envolvido nesse processo. Ninguém quer acessar 8.8.8.8, todo mundo gosta do www.google.com (não queremos nos preocupar com onde aquela máquina está fisicamente).
    - Quando mudamos um host fisicamente, o endereco pode mudar, mas o nome não muda.
    - O trabalho de resolver o nome para o endereco e feito pelo Domain Name System (DNS)

## Roteamento

Dado um endereco de destino, uma tabela de roteamento determina qual link de saida o pacote sera enviado (tudo isso e calculado atraves de protocolos de roteamento).

> Esse roteador não é aquele roteador (o que provê wifi pra sua casa). Esses aqui são equipamentos robustos que têm o propósito específico de gerenciar todos os pacotes que trafegam entre redes distintas (apesar do aparelho da sua casa ter algumas funções de roteador).

- Quando um paacote chega no roteador: uma tabela de roteamento determina para qual link de saí o pacote será enviado. Isso é calculado através dos protocolos de roteamento.

## Encaminhamento

> Tudo isso aqui é relativo a roteadores:

- Enfileiramento: Quando um pacote chega, ele é armazenado em filas de entrada. Cada fila de entrada é dividida em múltiplas filas virtuais de saída.
    - Uma saída virtual para cada link de saída.
    - Encontra o link no qual o pacote será encaminhado.
    - Armazena o pacote na fila virtual de saída correspondente.

- Encaminhamento: Quando um link de saída está disponível, o roteador pega um pacote da fila virtual de saída correspondente e encaminha o pacote.

> Pacotes devem conter: um destinatário, um remetente e **dados**!

> Tudo isso que é feito a nível de roteador gera um atraso na comunicação :(

## Confiabilidade

> Como entregar papcotes de maneira confiável

Pacotes podem ser perdidos ao longo do caminho. 

> Overflow de buffers em roteadores, roteadores podem travar enuanto contém pacotes em buffer e links podem adulterar pacotes.

Como garantir, então, a entrega de pacotes de maneira íntegra em uma rede não confiável?

> Quem é responsável por isso? A rede? O host? Como seria implementado?

## No dispositivo final

Pilha de rede no dispositivo final:

- Quando um processo quer acessar a rede, abre um socet, que é associado a umaporta.
- Socket: Mecanismo do SO que conecta processos à pilha de rede.
- Porta: Número que identifica aquele socket em particular. Esse número é utilizado para direcionar pactoes que chegam no host.

# Métricas de desempenho

- Largura de banda: Número de bits enviados por unidade de tempo (por segundo, por exemplo). Vai depender do hardware, das condições de tráfego da rede...

- Latência: Tempo para uma mensagem se mover em um link.
