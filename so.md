- [Unidade 1](so-u1.md)

# Threads - implementação

## Espaço de endereçamento

- Quando uma thread é criada, existem dois espaços de endereçamento: um compartilhado entre todas as threads e um privado e acessível exclusivamente pela thread

- Variáveis globais que fazem parte da memória de dados são de acesso geral.

- Parâmetros passados na execũção da thread e variáveis de escopo local são de acesso privado da thread

## Junção de threads

```
int pthread_join(pthread id, void** ref);
```

- Utilizado para esperar o fim da execução de uma thread

- O valor de retorno recebido da execução da thread é escrito no parâmetro ref.

## Criação de processos com multiplas threads

- O que acontece quando um processo que contém multiplas threads e utiliza uma chamada `fork`:
    - Umnovo processo é criado com uma cópia das memórias de dados e instruções
    - Se as threads já foram criadas, elas são duplicadas
    - Se não foram criadas, `pthread_join` retorna um erro

- As threads criadas são associadas ao processo que as criou.

## Escalonamento de threads

dependendo de como for implementado o escalonamento das threads (e do process), a sequência de execução das threads pode mudar

- Isso pode afetar  resultado final da execução

```
int sched_yield()
```
- Ao ser executada, a thread voluntariamente abre mão da execução e sai do processador, e volta pra fila de threads prontas

- Ela pode voltar a executar normalmente se for escolhida pelo escalonador.


# Escalonamento I

Máxima execução da CPU é obtida com multiprogramação

- Fase de uso da CPU e de E/S - execução de processos consiste de uma fase de execução da CPU e espera po E/S

- Distribuição das fases de us da CPU (CPU bursts ou rajadas)

## Escalonador da CPU

Seleciona dentre os processos na memória em estado pronto, e aloca a CPU para um deles.

- Decisões de escalonamento da CPU ocorrem quando um processo:
  - 1. Muda de um estado _esecutando_ para _esperando_
  - 2. Muda do estado _executando_ para _pronto_
  - 3. Muda do estado _esperando_ para _pronto_
  - 4. Tem seu tempo dado para esecução expirado
  - 5. Termina naturalmente.

- Escalonamento nas condições 1 e 5 é não-preemptivo (sem interrupção forçada)
- Todas as outras alocações são preemptivas.

## Despachante

O despachante (dspatcher) é o módulo que fornece o controle da CPU ao processo selecionado pelo escalonador da CPU. essa função envolve:

- Troca de contexto
- Mudança para o modo usuário
- Desvio para o endereço adequado no programa do usuário, para reiniciar o programa

> Latência de Despacho: o tempo gasto pelo despachante para interromper a execução de um processo e iniciar a execuçãode outro.

## Critérios de Alocação

- Utilização da CPU - manter a CPU ocupada a maior parte possível do tempo

- Produtividade (throughput): Número de processos que completam sua execução por unidade de tempo

- Tempo de processamento (turnaround): Quantidade de tempo necessária para executar um determinado processo

- Tempo de Espera: Quantidade de tempo que um processo esteve esperando na fila de processos prontos

- Tempo de Resposta: Intervalo de tempo entre o envio de uma requisição e a produção da primeira resposta, não a saída (para ambientes de tempo compartilhado).

## Critérios de Otimização

- Maximizar utilização da CPU
- Maximizar produtividade
- Minimizar o tempo de processamento
- Minimizar o tempo de espera
- Minimizar o tempo de resposta

## Algoritmos de escalonamento: First come, first serve (FCFS)

## Algoritmos de escalonamento: Menor job primeiro (SJR)

associado com cada processo a duração da sua próxima fase de uso da CPU. Uso dessas durações para escalonar o processo com menor tempo.

- SJF é ótimo: permite o menor tempo médio de espera para um dado conjunto de processos. A dificuldade é justamente saber o tamanho da próxima requisição de CPU

- Se os processos não iniciam ao mesmo tempo, o algoritmo se torna de tempo-restante-mais-curto-primeiro.

### Determinando a duração da próxima fase de uso da CPU

- Podemos somente determinar a duração.

- Pode ser calculada com a duração de uso da CPU na fase anterior, usando medidas exponenciais:
  - 1. tₙ = duração real da enésima fase de uso da CPU.
  - 2. τₙ₊₁ = valor previsto para próxima fase de uso da CPU
  - 3. αₜ ≤ α ≤ 1
  - define: τₙ₊₁ = αtₙ + (1-α)τₙ

## Algoritmos de escalonamento: Por prioridade

Um número de prioridade (Int) é associado com cada processoe a CPU é alocada para o processo com a maior prioridade (menor inteiro = maior prioridade)

- STJ é um escalonador com prioridade, no qual a prioridade é a previsão de tempo de execução do processo.

- Problema _starvation_: Processos de baixa prioridade podem nunca executar.

- Solução (_aging_): Com o passar do tempo, aumentar a prioridade dos processos que ficam em espera no sistema.

## Algoritmos de escalonamento: Alocação circular 

Cada processo recebe uma pequena unidade de tempo de CPU (quantum), usualmente de 10 a 100 milissegundos. Um processo executa por esse tempo e depois é tirado da CPU.

## Algoritmos de escalonamento: Alocação com Múltiplas filas

- Filas de procesoss prontos é particioonadas em filas separadas: Primeiro plano e segundo plano. E cada fila tem seu próprio algoritmo de escalonamento.

# Programação concorrente

Um programa concorrente é executado simultaneamente por diversos processos (ou threads) que cooperam entre si.

## Motivação

Programas concorrentes são mais complexos de desenvolver: Temos os mesmos problemas encontrados em programas sequenciais e mais!

- Tenho que garantir a corretude da comunicação
- Exige cuidados quanto à temporalidade da execução dos processos envolvidos

## FUndamentos

Acesso concorrente a dados compartilhados pode resultar em inconsistencias

- Manter a consistencia de dados requer a tilização de mecanismos para garantir a execução ordenada dos processos cooperantes.

- Regiao critica: Parte do programa (trecho do codigo) em que os dados compartilhados sao acessados.

- Condição de corrida: Sao situação onde dois ou mais processos acessam dados compartilhados e o resultado final depende da ordem em que os porcessos são executados

## Exclusao mutua

- Existe exclusividade mutua entre os processos no acesso à regiao critica.

- Quando um processo P deseja entrar na regiao crítica e nenhum outro processo está executando a sua regiao crítica, o processo P não é impedido de entrar.

- Nenhum processo pode ter seu ingresso na seção crítica postergado indefinidamente.

- Não depender da velocidade de relativa da execução dos processos nem da quantidade de processadores.

# Soluções para exclusão mútua

## Interrupções

Parte do principio de que o processo, imediatamente após entrar na região crítica, desabilita interrupções. Sem interrupções, não há escalonamento de um novo processo

- Potencialmente perigoso: Deixar na mão dos processos a capacidade de decidir se o escalonador efetivamente realizar uma troca de processos

- Não funciona em um ambiente multiprocessado, já que não existe um mecanismo para parar todos os processadores

## variáveis de trava (lock)

Utilizar uma única variável compartilhada, incialmente contendo o valor 0. Então, para acessar a região crítica, o processo realiza um teste sobre essa variável e:
    - Se o valor é 0, significa que ela pode entrar
    - Se o valor é 1, significa que ela não pode entrar

- Apresenta o mesmo problema anterior: caso um processo seja interrompido pelo escalonador durante o teste da variável de lock, a exclusão mútua pode falhar.

### Chaveamento obrigatório

Cada processo recebe um identificador 0 ou 1 e só pode acessar a região crítica quando a variável compartilhada `turn` for igual ao seu identificador.

- Cada processo fica encarregado de chavear a variável compartilhada para deixar o colega entrar

## Solução de Peterson

Antes de usar as variavéis compartilhadas, cada processo chama a função `enter_region`, passando como parametro o numero do seu processo

- Imediatamente antes de sair da regiap critica, o processo chama `leave_region`

## Instrução TSL

O principal problema para a corretude das funçoes até agora é durante a checagem de entrada a região crítica.

Como garantir a tomicidade do mecanismo de trava:

- Criação de uma instrução em linguagem assembly que realize verifique (test) e atualize (set): TSL (Test and Set Lock)

```assembly
enter_region:
    TSL REGISTER.LOCK   | copia lock para o registrador e põe lock em 1
    COMP REGISTER, #0   | lock valia 0?
    JNE enter_region    | se fosse diferente de zero, lock estaria ligado, portante continue no laço de repetição

    RET                 | retorna a quem chamou (entrou na região crítica)

leave_region:
    MOVE LOCK, #0       | coloque 0 em lock
    RET
```

## Soluções de dormir e acordar

Para evitar o uso de espera ocupada, foram propostas primitivas Sleep e Wakeup

- Ao realizar uma chamada sleep, o processo abre mão voluntariamente do processador e não retorna ao estado de pronto.

- Ao executar uma chamada Wakeup, um processo retorna para a lista de prontos um outro processo que estava adormecido.

- Esses mecanismos não são suficientes para garantir exclusão mútua, pela falta de atomicidade no acesso à região crítica.

## Mutex (Mutual Exclusion)

Faz uso do conceito de instruções TSL para garantir atomicidade e primitivas sleep e wakeup

- Primitivas lock e unlock: Similares às variáveis de trava, entretanto garantem atomicidade.
    - Essas variáveis de trava são binárias
    - Sempre que há uma chamada de Lock, existe uma chamada de yield que abre mão do processador

## Semáforos

Implementação mais robustas do que os Mutexes, usando primitivas down e up 

- Down: similar a chamada lock, mas faz uso de uma variável não-binária (decrementando-a)
    - Sempre que um processo executar a chamada Down em um mutex, eu: decremento o valor da variável `e` e verifico se o novo valor é zero. Se for, durmo sem concluir a chamada Down (tudo isso atomicamente)

- Up: Incrementa essa variável.
    - De maneira análoga, uma chamada Up incrementa esse variável e um dos processos adormecidos no meio de uma chamada Down é acordado

# Programação concorrente: implementação

## Mutex em Pthreads 

```c
// Declaração
pthread_mutex_t* nome;

// Inicialização
pthread_mutex_init(pthread_mutex_t* nome, pthread_mutexattr_t* attr);

// Destruição
pthread_mutex_destroy(pthread_attr_t* nome);

// Lock
pthread_mutex_lock(pthread_mutex_t* nome);

// Unlock
pthread_mutex_unlock(pthread_mutex_t* nome);
```

## Variáveis condicionais

Por vezes, queremos que as threas executem alternadamente dependendo de uma condição. Para isso, precisamos garantir:

- Acesso exclusivo à região crítica.

- Que a thread abdique da região crítica enquanto a condição for satisfeita.

```c
// Declaração
pthread_cond_t* nome;

// Inicialização
pthread_cond_init(pthread_cond_t* nome, pthread_condattr_t* attr);

// Destruição
pthread_cond_destroy(pthread_cond_t* nome);
```

```c
int pthread_cond_wait(pthread_cond_t* cond, pthread_mutex_t* mutex)
```

- Libera o mutex e bloqueia, esperando um sinal na variável cond.

```c
int pthread_cond_signal(pthread_cond_t* cond)
```

- Libera uma thread bloqueada na variável cond. Se houver mais de uma thread esperando, o escalonador define a thread a ser desbloqueada.

```c
int pthread_cond_broadcast(pthread_cond_t* cond)
```

## Semáforos

```c
#include <semaphore.h>

// Declaração
sem_t* nome

// Inicialização
sem_init(sem_t* nome, int pshared, unsigned int value);

// Destruição
sem_destroy(sem_t&* nome);
```

```c
sem_wait(sem_t* nome);
```

- Se refere a um "↓" em um semáforo. Se o valor for zero, a thread é bloqueada. Casocontrário, o valor do semáforo é decrementado.

```c
sem_post(sem_t* nome);
```

- Se refere a um "↑" em um semáforo. Incrementa o valor de um semáforo e, se o valor anterior era zero, uma thread bloqueada nesse semáforo é desbloqueada.

# Deadlocks

Um conjunto de processos bloqueados, cada um detendo um recurso e esperando para adquirir um recurso detido por outro processo no conjunto. O deadlock pode ocorrer se quatro condições são satisfeitas simultaneamente;

- Exclusão mútua: somente um processo de cada vez pode usar um recurso.

- Posse e espera: Um processo que está usando pelo menos um recurso e esperando que outros recursos, que estão nesse instante sendo usados por outros processos, sejam alocados para o seu uso.

- Inexistência de preempção: um recurso só pode ser liberado voluntariamente pelo processo ao qual está alocado depois que o processo terminar de usá-lo.

- Espera circular: deve existir um conjunto de procesoss em espera, tal que exista circularidade nas necessidades de recursos em uso/necessários.

## Tratagem de Deadlocks

O ideal é garantir que o sistema nunca entrará em estado de DeadLock. Se não, permitir a recuperação de um deadlock.

- A maioria dos sistemas operacionais ignora o problema e assumem que Deadlocks nunca ocorrem durante a sua execução (unix included!).

