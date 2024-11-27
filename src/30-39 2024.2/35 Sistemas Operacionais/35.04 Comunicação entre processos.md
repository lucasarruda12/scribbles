Processos em um sistema podem ser *independentes* ou *cooperantes*.

- Processos independentes não podem afetar ou ser afetados pela execução de outro processo.
- Processos cooperantes podem afetar ou ser afetadors pela execução de outro processo

- Razões para cooperação entre processos:
    - Compatilhamento de informaçòes
    - Aumento da velocidade de computação
    - Modularidade
    - Conveniência

# Modelos de comunicação

Processos cooperantes precisam de comunicação entre processos. Seja por memória compartilhada ou troca de mensagens.

# Comunicação por memória compartilhada

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

# Comunicação por PIPES

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

