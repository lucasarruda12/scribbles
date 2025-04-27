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

# Topologia de redes

Topologias de rede definem a estrutura da rede. Podendo ser subdividida em lógica e física

- Topolgia lógica: Define como os meios físicos são acessados pelos hosts paa o envio de dados
- Topologia Física: Layout efetivo dos fios ou meio físicos, que influenciaráem diversos apectos considerados críticos, como flexibilidade, velocidade e segurança.
    - São estruturas físicas de redes comuns: Barramento, estrela, anel e malha

## Fluxo de dados

- Simplex: Os dados seguem em um único sentido (tv, rádio);
- Half-Duplex: Os dados seguem em um único sentido de cada vesz (rádio de polícia, Walkie Talkie);
- Full-Duplex: Os dados seguem em ambos os sentidos simultaneamente (telefone).

## Critérios de classificação

Quando classificamos por tecnologia de transmissão, existem doi tipos de tecnologias de transmissão utilizadas atualmente:

- Ponto-a-Ponto: A rede consiste em um conjunto de conexões entre pares de máquinas individuais;
    - A rede fornece um link dedicado entre dois dispositivos (receptor e trnsmissor) através de elementos de conexão como fios, links via satélite ou microondas.

- Multiponto: Um ponto central envia informações para vários pontos, utilizando um mesmo meio de forma que mais de dois dispositivos compartilhem um único link.
    - Aqui, a capacidade do canal é compartilhada, seja de forma espacial ou temporal.

## Topologia de barramento (BUS)

Todos os computadores são ligados em um mesmo barramento físico de dados, por tanto, é inerentemente multiponto. Aqui, apenas uma máquina pode "escrever" no barrameto num dado momento

> Quando um computador estiver transmitindo um sinal, toda a rede fica ocupada e, se outro computador tentar enviar outro sinal ao mesmo tempoo, ocorre uma colisão e é preciso reiniciar a transmissão.

- Vantagens principais são economia (pois uso um único cabo) e facilidade de expansão.

- Desvantagens incluem: lentidão em casos de tráfego pesado, dificuldade em isolar problemas e suscetibilidade a falhas (falhas no cabo paralizam a rede inteira).

## Topologia estrela

Utiliza cabos de par trançado e um concentrador como ponto central de rede para criar uma conexão ponto a ponto. O concentrador se encarrega de transmitir todos os dados para todas as estações.

- Vantagens principais são a adição de novos computadores simplificada, o gerenciamento centralizado e a robustez (falha de um computador não afeta o restante da rede)

- A grande desvantagem é a criação de um ponto central de falha. Qualquer problema no concentrador paralisa toda a rede.

## Topologia em Anel (RING)

Sinais ou mensagens circulam dentro de um anal, passando sequencialmente (pnto-a-ponto) de ligação em ligação até chegar ao destinatário através de cabo coaxiai (ou de fibra óptica) fechado sobre si mesmo, ao qual se ligam os vários computadores da rede.

- Vantagens incluem a alta velocidade em redes pequenas e a expansão facilitada da rede.

- Desvantagens incluem a necessidade de hardware específico (transceivers), a dependencia da rede do estado atual de todos os computadores e a dificuldade de identificar pontos de avaria.

## Topologia em malha

O papel fundamental cabe, nesse caso, aos dispositivos de interligação - por exemplo, os routers - que se encarregam do encaminhamentos das mensagens através dos vários nós da malha contituída. É formada uma conexão ponto a onto, assim, existem diversos caminhos para se chegar ao mesmo destino.

- Vantagens incluem principalmente a enorme quantidade de caminhos possíveis entre cada ponto de comunicação.

- A desvantagem principal é a complexidade elevada e a dificuldade de adicionar novos nós à rede.

## Critérios de classificação das redes

Por escala ou por distribuição geográfica:

- PAN (Personal Area Network): Redes de alcance muito curto (até 10m), que comportam dispositivos pessoais como teclados, mouses, fones de ouvido... São exemplos de redes PAN o bluetooth e o ZigBee

- LAN (Local Area Network): Redes de área local são geralmente redes privadas e tem tamanho restrito (permite que o tempo de transmissào seja razoavelmente conhecido com antecedência.
    - Ethernet, Wi-FI

- MAN (Metropolitan Area Network): Rede de acesso para interconexão de LANs sobre uma área metropolitana e que vai cobrir uma área geográfica de ordem de dezenas a poucas centenas de quilômetros.

- WAN (Wide Area Network): Interconecta redes menores a nível de estado, país, e até continente. 

# Camada de Aplicação

É a camada responsável pelas funcionalidades de rede (comunicação) das aplicações do usuário e de alguns protocolos auxiliares de so geral, por isso, acaba sendo a camada mais próxima do usuário. É desacoplada do núcleo da rede, o que estimula o desenvolvimento de novas soluções e promove flexibilidade.

> No modelo TCP/IP, a camada de aplicação engloba as funcionalidades das camadas de sessão, apresentação e aplicação do modelo OSI.

## Camada de Aplicação no modelo OSI

É responsável pela comunicação em rede entre programas em execução (processos) em diferentes hosts. É ela que envia e recebe os dados entre os processos e faz a interação com o usuário (pessoa ou sistema)

## Camada de apresentação no modelo OSI

Apresenta os dados em um formato independente da arquitetura dos sistemas participantes da comunicação e realiza a manutenção semântica das informações transmitidas.

## Camada de sessão no modelo OSI

Estabelece a comunicação entre processos em máquinas diferentes, cria e mantém os diálogos entre as aplicações de origem e destino e controla as sessões de comunicação (mantém em atividade, pausa ou reinicia e finaliza a comunicação)

## O que é definido na camada de aplicação

- Os tipos das mensagens de requisição e resposta
- A sintaxe das mensagens, determinando os campos usados nas mensagens e como são organizados
- A semântica (significado) das informações contidas nos campos do protocolo
- As regras para definir como e quando as aplicações enviam e respondem as mensagens

## Arquiteturas de comunicação e aplicacções

- Cliente-Servidor: Os clientes iniciam a comunicação com o servidor, não se comunicam diretamente um com o outro e podem montar uma conexão intermitente. Enquanto isso, o servidor responde às requisições dos clientes, mantém o Host e os serviços sempre ativos e o endereço IP permanente (ou resolvido através de DNS).

- Peer-to-Peer: Comunicação direta entre pares de hosts (peers), os pares alternam entre si as funções de servidor e de cliente. A conexão é intermitente, resiliente e escalável.

- Arquitetura híbrida: Provê o gerencimanto e controle centralizados presentes no modelo servidor com a escalabilidade e tolerância à falhas da arquitetura peer-to-peer.

## Comunicação entre processos

Duas aplicações em hosts distintos se comunicam através do envio de mensagens na rede. No entanto, um host pode executar diversos processos que utilizam a rede simultaneamente.

- Atrvés da API de rede do sistema operacional, as aplicações solicitam a criação de sockets de comunicação para permitir o envio e recepção de dados. Cada socket está vinculado a um único processo, fazendo com que a comunicação destinada a ele seja encaminhada sem equívoco à aplicação correspondente.

- Os sockets são definidos a partir do endereço IP do host e de um número de porta de um dos protocolos da camada de transporte (TCP ou UDP)

# Camada de transporte

Responsavel por permitir que as aplicações utilizem os serviços da camada de rede. É a primeira camada onde ocorre a comunicação fim-a-fim.

- Utiliza portas para permitir a multiplexação dos dados, permitindo que múltiplas aplicações utilizem a rede simultaneamente.

## Faixa de numeração de portas

As portas de camada de transporte no modelo TCP/IP possuem 16 bits e são organizadas em faixas de numeração, definidas na RFC 6335.

- 0-1023: Portas de sistema
- 1024-49151: Portas de usuário
- 49152-65535: Portas dinâmicas

## Sockets

implementam a multiplexação, permitindo comunicação simultanea de diversas aplicações.

- Socket de cliente: Ip do cliente + Porta dinâmica.

- Socket do servidor: Ip do servidor + Porta do sistema ou de usuário. e Realiza operações de bind e listen no socket.

## Orientação à conexão

Serviço orientado à Conexão:
- Provê a entrega confiável da informação;
- É estabelecido um acordo prévio entre as partes, definindo os parâmetros da comunicação;
- Mecanismos de controle de fluxo, confirmação de recebimentoe reenvio estão presentes;

Serviço não-orientado à conexão:
- Provê a entrega não confiável da informação;
- A informação é enviada sem acordo prévio;
- Sem garantia de entrega (best-effort);

## Protocolos

Na arquitetura internet original (IP/ RFC 791 - Set/1981), duas alternativas de protoclo para a camada de transporte:

- UDP (RFC 769 - Ago/1980) - Não orientado à conexão
- TCP (RFC 793 - Set/1981) - Orientado à conexão

- Atualmente, outras alternativas destinadas a arquiteturas específicas:
    - SCTP - Stream Control Transmission Protocol: combina características do UDP e do TCP.
    - RTP/RTCP (Real Time Protocol) Para ambientes de comunicação multimídia.

### Protocolo UDP

Criado nos anos 80 pela RFC 768, é um protocolo de transporte não orientado à conexão e não confiável. Ou seja, não implementa mecanismo de recuperação de erros: Não utiliza mensagens de reconhecimento (ACK) e não é capaz de ordenar as mensagens que chegam ao host de destino

- Por isso, mensagens podem ser perdidas, duplicadas, chegar fora de ordem ou chegar mais rápido que a máquina destino seja capaz de utilizar.

- Vantagens: É muito simples

#### Cabeçalho

- Portas: identificm os processos de origin e de desitno.
- Tamanho da mensagem total do pacote UDP em bytes.
- Cecksum (opcional): Permite a checagem (destino) do segmento UDP recebido. O cálculo é realizado a traǘes de um pseudo-cabeçalho.

# Protocolo TCP

Criado em setembro de 1981, pela RFC 793. Ele visa ser um protocolo orientado à conexão, com entrega confiável de dados. Ou seja, implementa mmecanismos de recuperação de erros (mensagens fora de sequência, duplcadas, perdidas, corrompidas) através de mensagens de reconhecimento (ACK). Além disso, implementa mecanismo de controle de fluxo das mensagens trocadas.

- Sendo assim, as mensagens são entregues à aplicação na ordem em que foram transimitas, sem perdas, sem duplicidasdes e na velicodade que a máquina de destino seja capaz de processar.

## Cabeçalho

- Portas: identificam os processos de origem e de destino
- Número de sequência: Posição do primeiro octeto (dados) dentro do fluxo
- Número de confirmação (ACK): Número de sequência do próximo octeto esperado, reconhecendo todos os de valor inferior.
- Tamanho do cabeçalho: em palavras de 32 bits
- Tamanho da jela: Quantidade de octetos que o emissor está apto a receber antes de enviar um ACK ("janela deslizante")
- Bits de código (flags): indicam operações do protocolo TCP
    - SYN: Estabelecimento de conexão (sincronização de n. de seuqência)
    - ACK: Reconhecimento positivo dos n-1 octetos ("n. de confirmação")
    - FIN: Sinaliza o término ordenado de conexão
    - RST: Sinaliza operação de reset (Término abrupto da conexão)
    - PSH: Entrega imediata dos dados em buffer para a camada superior
    - URG: existência de dados urgentes, indicados pelo "Ponteiro Urgente"
- Checksum: Usado para verificar a integridade do segmento TCP recebido (Cabeçalho + dados) - obrigatório
- Ponteiro urgente: indica a posição, dentro do campo de dados, dos dados urgentes (bit code "URG")
- Opções (opcional): Apresenta informações de negociação de capacicades entre origem e destino.

## Estabelecimento de conexões

No TCP é necessário estabelecer uma conexão entre o cliente e o servidor antes do envio dos dados da aplicação, por meio de um 3-way handshake.

- 1. Host A envia uma mensagem com a flag SYN ativa para indicar ao host B a intenção de etabelecimento de conexão
- 2. Host B responde com ACK (confirmando o recebimento do pedido de conexão) e também sinailza um pedido de estabelecimento de conexão SYN no sentido inverso
- 3. HOST A confirma o pedido de conexão do Host B

## Enceramento ordenado de conexões

## Controle de erro - "go-back-n"

Cada octeto de dados é numerado (número de sequência), de acordo com sua posição dentro do fluxo. O campo "número de sequência" indica a posição do primeiro octeto da área de dados.

- Cada segmento enviado deve ser confirmado (ACK) pelo receptor.
- Segmentos são recebidos quando íntegros (checksum oc) i em ordem correta (pode usar buffer).
- Cada segmento enviado deve ser confimado (ACK) pelo receptor. O code bit ACK=1 confirma o recebmento dos n-1 octetos definidor no campo "numero de confimação".
- O transmissor inicia um temporizador de espera da confirmação para cada segmento enviado, reenviando em caso de time-out.

## COntrole de fluxo - Janela Deslizante

Para otimizar o envio de ACKs, o receptor imeplemtna um buffer, onde um número finito de segmentos  ("tamanho de janela") podem ser recebidos sem reconhecimento imediato;

- O recptor atualiza o "tamanho de janela" a cada ACK enviado;
- O transmissor utiliza os ACKs como clock para transmissão, de modo a não enviar mais segmentos que o receptor pode processar.

- Ao atingir o "tamanho da janela" sem recebimento de ACKs, transmissor entrará em estado de espera, até o recebimento de ACKs ou time-oout dos temporizadores de retransmissão

- Tamanho de janela=0 significa que o transmissor deve parar de enviar dados até uma nova notificação.
