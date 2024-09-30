# Por que estudar sistemas operacionais

"O sistema operacional surgiu para proteger o usuário do seu maior inimigo: O usuário"

## Razões técnicas

- Gerencia as tarefas do computador
- Do ponto de vista do software, divide serviços a serem utilizados (chamadas de sistema ou system calls)
- Do ponto de vista do harware, implementa a camada de abstração que traduz funções elementais (HAL hardware abstraction layer)

## Razões de mercado

- Sistemas operacionais ditam a maneira como os outros sistemas enxergam os recursos
- As maiores empresas da área de tecnologia da informação tem um sistema operacional próprio

# Função de um sistema operacional

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

# Histórico dos Sistemas Operacionais

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

# Chamada de sistema

- Forma que um programa solicita serviços ao sistema operacional
    - Análogo a sub-rotinas

- É o nucleo (kernel) do sistema operacional que implementa as chamadas de sistemas
    - Existem camadas de sistemas associadas a gerência do processador, de memória, arquivos e de entrada e saída

- Variação: Micro-Kernel
    - Serviços básicos sáo implementados pelo micro-kernel
    - Kernel implmeneta demais serviços empregando esses serviços básicos 

# Programas de sistema

- Programas executados fora do kernel (utilitários)
- Implementam tarefas básicas
    - Muitas vezes confundido com o próprio sistema operacional
    - Interpretadores de comandos
    - Interface gráfica de usuáio (GUI)

# Sistema em lote (batch)

- Introdução de operadores profissionais
    - Usuário era mais o operador da máquina

- Job: Um programa que precisa ser compilado e executado
    - Jobs são executados em lote (batches)

- Passagem manual entre jobs

# Monitor residente

- Evolução
    - Sequencialmente automático de jobs, transferindo o controle de um job a outro
    - Primeiro sistema operacional (rudimentar)

- Monitor residente
    - Programa que fica permanentemente na memória
    - Execução inicial
    - Controle é transferido para o job
    - Quanto o job termina, o controle retorna ao monitor

# Sistema batch multiprogramado

- Monitor residente permite a execução de apenas um programa a cada vez
- Desperdício de tempo de CPU com operações de E/S
- Evolução
    - Manter diversos programas na memória ao mesmo tempo
    - Enquanto um programa realiza E/S, outro pode ser executado

# Multriprogramação

- Manter mais de um programa em execução simultâneamente

- Duas inovações de hardware possibilidtam o surgimento da multiprogramação:
    - Interrupção
    - Discos magnéticos

# Sistema Timesharing

- Tipo de multiprogramação
- Usuários possuem um terminal
    - interação com o programa em execução

- Ilusão de possuir uma máquina dedicada a execução de cada programa

# Sistema monousuário e multiusuário

- Projetados para serem usados por um único usuário ou várias sessões de vários usuários

# Sistemas monotarefa e multitarefa

- Existem dois tipos de multitarefa: Preemptivo ou não preemptivo
    - Preempção: Capacidade de interromper a execução de um processo em execução

# Sistemas distribuídos

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

# Sitemas paralelos

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

# Sistema de tempo real

- Empregado para o controle de procesiimentos que devem responder dentro de um certo intervalo de tempo
- Noção de tempo real é dependente da aplicação

## Dois tipos

- Hard real time: Tarefas críticas sáo completadas dentro de um intervalo de tempo. a relevância do processamento cai drásticamente após o deadline.

- Soft real time: Tarefa crítica tem mais prioridade que as demais. A relevância do processamento decai suavemente após o deadline

# Sistemas para dispositivos móveis

- Restrições em espaço de memória, consumo de energia, tempo de resposta.
- Muitos costumamm ser também de tempo real
- Possivelmente são sistemas operacionais mais utilizados
- Smartphones são os usuários mais sofisticados
    - Grande dependência de interface 
    - Existem funções cada vez mais similares a computadores desktop


