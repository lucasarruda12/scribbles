# Class notes

pipipi e popopo...

# Workflow

## Escrevendo

O meu objetivo aqui é simplificar o processo de escrever minhas anotações das aulas da faculdade. Eu quero poder pegar o tablet, rodar um comando só e começar a escrever as anotações de uma aula sem nenhuma outra preocupação.

### Ideia

- Criar um script e aliasar pra `aula`, de uma forma que eu consiga escrever `aula fun` e ser levado direto pra uma instância do tmux com um vim rodando no arquivo correto da disciplina;

- No final, tentar capturar o `wq` do vim pra:
    - stagear, commitar, pushear as alterações;
    - fechar aquela instância do tmux.

#### Implementação

- Cria uma nova session no tmux com a abreviação da matéria mesmo
- Mapeia, por um arquivo de mappings mesmo, a abreviação da matéria com o nome dela
- Vê qual que é o próximo arquivo de aula naquela matéria, somando 1 ao sufixo do arquivo de maior número.
- vima nesse arquivo
- se o retorno desse vim for 0, `git add <esse-arquivo>` then `git commit -m "aula <abreviacao>" then "git push".
- fecha a session do tmux.

## Deployando (pro github pages?)

- Sorry
