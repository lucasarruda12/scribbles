# Por que estudar sistemas operacionais

"O sistema operacional surgiu para proteger o usuário do seu maior inimigo: O usuário"

## Razões técnicas

- Gerencia as tarefas do computador
- Do ponto de vista do software, divide serviços a serem utilizados (chamadas de sistema ou system calls)
- Do ponto de vista do harware, implementa a camada de abstração que traduz funções elementais (HAL hardware abstraction layer)

## Razões de mercado

- Sistemas operacionais ditam a maneira como os outros sistemas enxergam os recursos
- As maiores empresas da área de tecnologia da informação tem um sistema operacional próprio

## Função de um sistema operacional

## A partir da máquina real, criar uma máquina extendida.

Parte da camada de abstrações enxergada pelo usuário

## Gerenciar os recursos de hardware disponíveis para as aplicações

- Recursos da máquina
    - Processadores
    - Espaço em memória
    - Arquivos
    - Conexões de rede
    - dispositivos externos

- Controle de acesso
    - Equlibrar usos
    - Evitar conflitos

## Histórico dos Sistemas Operacionais

## Priemira Geração (1945-1955)

- Programação através de chaves
- inexistência de linguagens ou S.O.
- Toda a atividade é sequencial

## Segunda Geração (1956-1965)

- IBM 1401 e 7094
- Separação entre programação e operação
- Execução em batches de programas
- Linguagens Fortran e Assembly

## Terceira Geração (1966-1980)

- IBM 360 e sucessores
- Compatibilidade a nível de software
- Multiprogramação
- Escalonamento de CPU (Executar um pouco de um programa, um pouco de outro e ir alternando)
- Sistemas Online
- Base dos S.O. modernos

## Quarta Geração (1980-1990)

- Multiprocessadores
- Sistemas operacionais user-friendly
- S.O. para computadores pessoais
- S.O. para redes de computadores

## Quinta Geração (1991-)

- Processamento distribuído
- Interfaces gráficas
- S.O. para dispositivos móveis
- S.O. para cloud computing

## Chamada de sistema

- Forma que um programa solicita serviços ao sistema operacional
    - Análogo a sub-rotinas

- É o nucleo (kernel) do sistema operacional que implementa as chamadas de sistemas
    - Existem camadas de sistemas associadas a gerência do processador, de memória, arquivos e de entrada e saída

- Variação: Micro-Kernel
    - Serviços básicos sáo implementados pelo micro-kernel
    - Kernel implmeneta demais serviços empregando esses serviços básicos 

## Programas de sistema

- Programas executados fora do kernel (utilitários)
- Implementam tarefas básicas
    - Muitas vezes confundido com o próprio sistema operacional
    - Interpretadores de comandos
    - Interface gráfica de usuáio (GUI)

## Sistema em lote (batch)

- Introdução de operadores profissionais
    - Usuário era mais o operador da máquina

- Job: Um programa que precisa ser compilado e executado
    - Jobs são executados em lote (batches)

- Passagem manual entre jobs

## Monitor residente

- Evolução
    - Sequencialmente automático de jobs, transferindo o controle de um job a outro
    - Primeiro sistema operacional (rudimentar)

- Monitor residente
    - Programa que fica permanentemente na memória
    - Execução inicial
    - Controle é transferido para o job
    - Quanto o job termina, o controle retorna ao monitor

## Sistema batch multiprogramado

- Monitor residente permite a execução de apenas um programa a cada vez
- Desperdício de tempo de CPU com operações de E/S
- Evolução
    - Manter diversos programas na memória ao mesmo tempo
    - Enquanto um programa realiza E/S, outro pode ser executado

## Multriprogramação

- Manter mais de um programa em execução simultâneamente

- Duas inovações de hardware possibilidtam o surgimento da multiprogramação:
    - Interrupção
    - Discos magnéticos

## Sistema Timesharing

- Tipo de multiprogramação
- Usuários possuem um terminal
    - interação com o programa em execução

- Ilusão de possuir uma máquina dedicada a execução de cada programa

## Sistema monousuário e multiusuário

- Projetados para serem usados por um único usuário ou várias sessões de vários usuários

## Sistemas monotarefa e multitarefa

- Existem dois tipos de multitarefa: Preemptivo ou não preemptivo
    - Preempção: Capacidade de interromper a execução de um processo em execução

## Sistemas distribuídos

- Distribuir a realização de uma tarefa entre vários computadores
- Conjunto de computadores autônomos interconectados de forma a possibilitar a execução de um serviço
- Existência de várias máquinas é transparente
- Software fornece uma visão única de sistema
- Palavra chave é transparente

## Sistemas fracamente acoplados

- Máquinas independentes
- Comunicação é feita através de troca de mensagens entre processos

## Vantagens

- Compartilhamento de recursos
- Balanceamento da carga
- Aumento de confiabilidade

## Sitemas paralelos

- Máquinas multiprocessadas possuem mais de um processador

## Sistemas fortemente acoplados

- Processadores compartilham memória e relógios comuns
- Comunicação é realizada através da memória

## Vantagens

- Aumento de troughtput (Número de processos executados)
- Aspectos econômicos
- Aumento de confiabilidade

## Symmetric multiprocessing (SMP)

- Cada processador executa uma cópia idêntica do sistema operacional
- Vários processos podem ser executados em paralelo
- A maioria dos sistemas operacionais suportam SMP através do conceito de multithreading

## Assymetric multiprocessing

- Cada processador executa uma tarefa expecífica

## Sistema de tempo real

- Empregado para o controle de procesiimentos que devem responder dentro de um certo intervalo de tempo
- Noção de tempo real é dependente da aplicação

## Dois tipos

- Hard real time: Tarefas críticas sáo completadas dentro de um intervalo de tempo. a relevância do processamento cai drásticamente após o deadline.

- Soft real time: Tarefa crítica tem mais prioridade que as demais. A relevância do processamento decai suavemente após o deadline

## Sistemas para dispositivos móveis

- Restrições em espaço de memória, consumo de energia, tempo de resposta.
- Muitos costumamm ser também de tempo real
- Possivelmente são sistemas operacionais mais utilizados
- Smartphones são os usuários mais sofisticados
    - Grande dependência de interface 
    - Existem funções cada vez mais similares a computadores desktop

# Processo

Processo é um programa em execução

- O SO trata com processos e não com programas.

## Processo x Programa

- Programa: Conjunto estático das intruções e os dados de uma aplicação.
- Processo: Entidade ativa. Instância de um programa em execução.
- Dois processos podemos executar instâncias diferentes do mesmo programa.

## Estrutura de um processo na memória

````
stack
-----


-----
heap
-----
data
-----
text
````

## ciclo de vida de processos

Como são programas em execução, eles têm começo, meio e fim.

## Estados de um processo

- Novo. Se é admitido, ele passa ao próximo estado
- É preciso saber se os recursos necessários para a execução de um processo estão disponível, por exemplo.
- Pronto. Se é escolhido para ser executado, ele passa ao próximo estado.
- Em espera. Se, por algum motivo, o processo é tirado de execução, ele passa para esse estado. Quando o evento que causou a espera é resolvido, o processo volta ao estado de Pronto
- Em execução. Quando termina de ser executado, ele passa ao próximo estado.
- Encerrado

## Criação de processo

- Representado por um bloco de controle de processo (PCB) contendo:
- Estado doprocesso
- Contador de programa
- Registradores da CPU
- Informações de escalonamento: Prioridades, ponteiros de filas de escalonamento, outros parâmentros
- Informações de gerenciamento de memória
- Informações de contagem de tempo/uso de CPU
- Informações de status de E/S
- Outras...

- Momento do início da sua execução
    - Associar regustro ao processo
- Identificador único (PID)
    - Associar com um programa
    - Registrar o processo na tabela de processos. Essa tabela contém todos os dados necessários para a execução do processo.

    - Ao se iniciar o copmutador, o SO cria vários processos
- Em unix, a se inciar uma seção, o SO cira o processo init (PID=1)

## Multiprocessos e Escalonamento

    Necessidade de mudança de contexto entre processos

## Filas de escalonamento de processos

    - Fila de job: Conjunto de todos os processos no sistema
    - FIla de processos prontos: Conjunto de todos os processos residentes na memória principal, prontos e esperando para executar.
    - Fila de dispositivos: Conjunto dos processos esperando por um dispositivo de E/S
    - Migração de processos entre várias filas.

## Escalonadores

    - Escalonadores de longo prazo: Seleiona quais processos devem ser trazidos para a fial de processos prontos

    - Escalonadores de curto prazo: Seleciona qual processo deve ser executado a seguir e aloca CPU para ele.

## Processo em execução

- Quando em execução, há basicamente dois modos de operação:
    - Ciclo de processador: quando está utilizando a CPU
    - Ciclo de E/S: quando está esperando algum dado de E/S

## Término de Processo

- Fnal do processo: POde ser normal ou erro
- Necessidade de liberar os recursos alocados ao processo

## Relacionamento entre processos

- Processos independentes: Não há nenhum vínculo entre eles.
- Grupos de processos: Quando há alguma relação: pai-filho, compartilhamento de recurso, compartilhamento de resultado de processamento, etc...

# Implementação de processos em UNIX

## Criação de processos

Processo pai cira processo filho, o qual, por sua vez, pode criar outros processos, formando uma árvore de processoos

- Geralmente, processos são identificados e gerenciados via identificador de procssos (PID)
- Compartilhamento de recursos:
    - Pai e filho compartlham todos os recursos
    - ou Filho compartilha um subonunto dos recursos do pai
    - Ou pai e filho não compartilham recursos
    - depende da implementação do SO

- Execução
    - Pai e filho executam concorrentemente
    - Pai espera até filho terminar
    - Depende da implementação do SO

## Hierarquia de processos

Por exemplo, cria-se um processo via a rimitiva fork(). O criador é o pai e o processo criado é o filho

## Chamadas de sistema

### Fork

int fork();

- Retorna para o processo-pai o pid do processo criado
- Retorna para o processo-filho o valor 0
- Retorna um valor negativo em caso de erro

- Quando o processo é criado, é feita um cópia do espaço de endereçamento do processo pai. Código + todas as variáveis.
- O processo filho herda do pai todos os atributos
- Ambos executam a instrução seguinte ao fork

| função | resultado |
| ------ | --------- |
| getpid | Retorna o pid do processo |
| getppid | Retorna o pid do processo-pai |
| getuid | Retorna o id do usuário |
| getgid | Retorna o id do grupo |

### Wait

int wait();

- Retorna o valor do processo-filho finalizado
- Retorna -1 caso o processo não tenha filhos

### execlp

int execlp(char* caminho, char* parametros)

### exit

void exit(char n);

- Deve ser chaamado como parâmetro um alor entre 0 e 255 que representa alguma informação sobre a finalização do processo.

## Terminação de processos

Processo executa última declaração e pede ao sistema operacional para decidir (exit)

- Dados de saída passam do filho para o pai (via wait)

# Comunicação entre processos

Processos em um sistema podem ser *independentes* ou *cooperantes*.

- Processos independentes não podem afetar ou ser afetados pela execução de outro processo.
- Processos cooperantes podem afetar ou ser afetadors pela execução de outro processo

- Razões para cooperação entre processos:
    - Compatilhamento de informaçòes
    - Aumento da velocidade de computação
    - Modularidade
    - Conveniência

## Modelos de comunicação

Processos cooperantes precisam de comunicação entre processos. Seja por memória compartilhada ou troca de mensagens.

## Comunicação por memória compartilhada

### Memória compartilhada no POSIX

Processo cria primeiro um segmento de memória compartilhada.

`ìnt shmget(key_t key, int size, int shmflg);`, onde:
    - `key` é a chave de acesso e identifica se o segmento de memória é compartilhado ou privado
    - `Size` éi tamanho do segmento a ser criado (em bytes)
    - Shmflg é umm atgumento que identifica direitos de acesso de letiura, escrta e execução (similar ao uso do CHMOD)

O Processo que deseja acesso a essa memória compartilhada deve se *anexar* a ela;

- `void shmat (int shmid, const void * shmaddr, int shmflg)`
    - Shmid é o identificador do segmento de memória que se deseja acoplar
    - shmaddr é o endereço de acoplamento. Se o valor for NULL ou 0, a memória compartilhada é anexada ao prmeiro endereço possível determinado pelo sistema
    - shmflg é o argumento que identifica os parâmetros diferentes para o endereçamento.
    - O valor retornado é o endereço no segmento de memória compartilhado. Em caso de erro, o valoré -1. 

Tendo feito isso, o processo agora pode escreer na memória compartilhada

- Quando terminar, um processo pode desanexar a memória compartilhada do seu espaço de armazenamento, usando `shmdt(endereço de memória);`

## Comunicação por PIPES

Pipes pesmitem a comunicação no estilo rodutor-consumidor. O produtor escreve em um extremo e o consumidor lê do outro extremo.

- Pipes são unidirecionais
- Pipes necessitam da relação pai-filho entre os processos

````c
#include <unistd.h>
int pipe(int filedes[2])
````

- é passado como parâmetro um array de dois descritoresde arvuido. cada arquivo representa um lado do pipe. Um desses estará aberto para leitura(receptor) e o oturo para escrita(produtor)

- Quando um dos lados está fechado e se tenta ler ou escrever: 
    - Se o emissor está fechado, o `read()` retorna 0
    - Se o receptor está fechado, o `write()` retorna 0

- Comunicação bidirecional: usamos dois pipes.

# Threads

## Conceito

- "Entidade escalonada para execução" - Tenenbaum
- "Fluxo de execução dentro de um processo" - Oliveira
- "Unidade básica de utilização da CPU" - Silberschatz

- A thread se caracteriza individualmente por ter: Contador de programa, Registradores de estado, pilha.

- As threads compartilham os mesmos recursos de um processo
- Threads de um mesmo processo não são independentes entre si

## Comparação com processos

Threads do mesmo processo compartilham várias informações.

- Criar uma thread é muito mais rápido do que criar um processo.

| Itens por processo | Itens por thread |
| ------------------ | ---------------- |
| Espaço de endereçamento | Contador de programa |
| Variáveis globais | Registradores |
| Arquivos abertos | Pilha |
| Processos filhos | Estado |
| Alarmes pendentes | |
| Sinais e tratadores de sinais | |
| Informação de contabilidade | |

## Uso de threads

O uso de thread em uma aplicação interativa permite que um programa continue a execução mesmo se parte dele for bloqueado.

## Usuário x Núcleo

Threads podem ser implementadas dependendo do suporte do sistema operacional

- Threads de usuário: São historicamente pioneiras e resultado da falta de suporte de threads pelo SO.
- Threads de núcleo (ou threads de kernel): Implementações de sistemas operacionais modernos. Praticamente todos os SOs modernos dão suporte.

## Threads de Núcleo

O núcleo do sistema operacional tem ciência de todas as threads em execução (e a que processos pertencem)

- O escalonamento de threads não garante que a próxima thread a ser executada pertence ao mesmo processo.

- Mapeia uma thread de núcleo para cada thread de usuário. O escalonador gerencia as threads de núcleo e isso é refletido nas threads de usuário.
- Oferece mais concorrência de execução.
- Gera mais "overhead" de escalonamento

## Threads de usuário

Gerenciada por bibliotecas de threads. Do ponto de vista do núcleo do sistema operacional, os processos executam, porém, internamente, eles criam e gerenciam suas próprias threads.

- Do ponto de vista do escalonador, existe apenas um processo em execução.
- Trocas de contexto são menos custosas.
- Mais eficiente na execução (as threads são mais leves)
- porém, se uma thread bloquear, todo o processo bloqueia.

## Implementações híbridas

### Modelo N:M

Threads de núcleo criam threads de usuário, para aproveitar dos beneficios de ambos os modelos.

- Também chamado de modelo de dois níveis
- Um número de threads de usuário é mapeado em um número menor ou igual de threads de núcleo.

### Atividades do Escalonador

- Objetivo: Imitar a funcionaiidade de threads de núcleo e ganhar desempenho de threads de usuário
- Evita transições desnecessárias usuário/núcleo
- Núcleo atribui processadores virtuais para cada processo, o que deixa o sistema supervisor alocar threads para processadores
- Problema: Baseia-se fundamentalmente nos upcalls - o núcleo (camada inferior) chamadando procedimentos no usuário (camada mais superior)

## Criação de threads no UNIX

- A implementação depende da biblioteca utilizada. No POSIX, é o Pthreads

```
int pthread_create(pthread_t* thread, const pthread_attr_t* attr, void* (*start_routine)(void*), void *arg);
```

| Argumento | Funcão |
| --------- | ------ |
| `thread`    | Thread ID |
| `attr`      | NULL para o default |
| `start_routine` | é uma função que será executada pela thread. Pega um argumento void* e retona um void* |
| `arg`       | ponteiro sobre o argumento da função. Para passar mais de um argumento, usar um vetor ou uma struct |

## Terminação de uma thread

```
int pthread_exit(void *ret);
```

| Argumento | Função |
| --------- | ------ |
| `ret`     | valor de retorno ao terminar a thread |

Threads podem terminar:

- Por ter finalizado sua execução
- Realizando uma chamada a `pthred_exit`
- Sendo cancelada por outra thread (`pthread_cancel`)
- o processo do qual ela faz parte for terminado
