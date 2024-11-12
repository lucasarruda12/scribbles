Processo é um programa em execução

- O SO trata com processos e não com programas.

# Processo x Programa

- Programa: Conjunto estático das intruções e os dados de uma aplicação.
- Processo: Entidade ativa. Instância de um programa em execução.
- Dois processos podemos executar instâncias diferentes do mesmo programa.

# Estrutura de um processo na memória

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

# ciclo de vida de processos

Como são programas em execução, eles têm começo, meio e fim.

# Estados de um processo

- Novo. Se é admitido, ele passa ao próximo estado
- É preciso saber se os recursos necessários para a execução de um processo estão disponível, por exemplo.
- Pronto. Se é escolhido para ser executado, ele passa ao próximo estado.
- Em espera. Se, por algum motivo, o processo é tirado de execução, ele passa para esse estado. Quando o evento que causou a espera é resolvido, o processo volta ao estado de Pronto
- Em execução. Quando termina de ser executado, ele passa ao próximo estado.
- Encerrado

# Criação de processo

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

# Multiprocessos e Escalonamento

    Necessidade de mudança de contexto entre processos

# Filas de escalonamento de processos

    - Fila de job: Conjunto de todos os processos no sistema
    - FIla de processos prontos: Conjunto de todos os processos residentes na memória principal, prontos e esperando para executar.
    - Fila de dispositivos: Conjunto dos processos esperando por um dispositivo de E/S
    - Migração de processos entre várias filas.

# Escalonadores

    - Escalonadores de longo prazo: Seleiona quais processos devem ser trazidos para a fial de processos prontos

    - Escalonadores de curto prazo: Seleciona qual processo deve ser executado a seguir e aloca CPU para ele.

# Processo em execução

- Quando em execução, há basicamente dois modos de operação:
    - Ciclo de processador: quando está utilizando a CPU
    - Ciclo de E/S: quando está esperando algum dado de E/S

# Término de Processo

- Fnal do processo: POde ser normal ou erro
- Necessidade de liberar os recursos alocados ao processo

# Relacionamento entre processos

- Processos independentes: Não há nenhum vínculo entre eles.
- Grupos de processos: Quando há alguma relação: pai-filho, compartilhamento de recurso, compartilhamento de resultado de processamento, etc...
