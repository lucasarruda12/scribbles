# Criação de processos

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

# Hierarquia de processos

Por exemplo, cria-se um processo via a rimitiva fork(). O criador é o pai e o processo criado é o filho

# Chamadas de sistema

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

# Terminação de processos

Processo executa última declaração e pede ao sistema operacional para decidir (exit)

- Dados de saída passam do filho para o pai (via wait)
