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
    - 


