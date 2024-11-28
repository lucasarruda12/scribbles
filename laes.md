- [Unidade 1](laes-u1.md)
- [Unidade 2](laes-u2.md)

# Modularidade e Design by Contract

- Abstração: Uma abstração denota as características essenciais de um elemento que destinguem este de todos os outros elementos e, assim, provê limites conceituais bem definidos.

- Módulo: Uma unidade lógica de um programa com interfacebem definida que pode ser compilada de forma independente.

## Qualidade de software

Um dos principais objetivos da engenharia de software é produzir software com qualidade. Essa propriedade pode ser vista de diversas maneiras.

- Visões de qualidade de software: interna, externa (outra que eu n anotei)

- Independente da visão, existem duas propriedades importantes que todo software deve ter: robustez e (outra cousa que não anotei)

- Robustez: a habilidade de sistemas de software de reagit apropriadamente a condições anormais. o software robusto atua aceitamvelmente em casos em que o software não consegue processar crretamente o que preccisa ser feito.

- Corretude: habilidade do sistema de software de realziar suas tarefas de maneira correta de acordo com as suas especificações.

- Tendo robustez e corretude, eu posso assumir confiabilidade do software.

## Como garantir corretude

O que o software deve fazer? Como engenheirs de software expressam as funcionalidades do software?

- Um rascunho no papel, escrever uma lista de funcionalidades em uma linguagem natural como português, u escolhem outra linguagem natural, descrevem o software em um sistema formal baseado em matemática discreta, ou descrevem com todas juntas.

## Como garantir formalmente

### Tripla de Hoare

{PRE} A {POST}

- Qualquer execução de A, começando em um estado que satisfaz a condição PRE, terminará em um estado que satisfaz a condição POST.

## Asserções

- Qualidade das asserções: Essa qualidade é no sentido de expressar mais ou menos precisamente o que você quer. Quanto mais forte a asserção, mais próximo estamos do conjunto real de valores.

# Java Modeling Language

linguagem de especificacao de interface comportamental para modelos Java, que tem mais de duas décadas de historia e segue o paradigma de Design by Contract.

- As especificações são escritas na forma de comentários (anotações) em arquivos Java ou arquivos próprios voltados para especificação.

## OpenJML

- Faz a verificacao dedutiva do probrama Java para verificar se ele satisfaz sua especificacao JML
- Fornce suporte robusto para muitos dos recursos do JML
- Facil para profissionais e alunos usarem para especificar e verificar programas Java
- Permite verificacao estatica e verificacao dinamica

## Verificacao estatica vs verificacao dinamica

- Verificacao dinamica: feita atraves da execucao de casos de teste do programa. Geralmente é mais fácil de escrever especificacoes.

- Verificacao estatica: Feita sem a execucao do prorgama. Tambem chamada de Extended Static Checking (ESC) ou Deductive Verification (DV).
    - Verificacao estatica fornece garantias mais fortes sobre o comportamento do programa.

## Verificacao dedutiva

Semelhante a execucao logica e simbolica ed um metodo para cada conjunto legal possivel de entradas. Assim, verificacoes bem-sucedidas garantem a corretude (diferente dos testes)

- Cada metodo é verificado por conta própria usando as especificacoes (não as implementações) dos outros métodos.

- Abordagem válida se todos os metodos forem verificados com sucesso.

## Especificação de classes

- Métodos:
    - Pré-condicoes: requires
    - Pos-condicoes: ensures
    - Condicoes de quadro (frame conditions): assignable e pure

- Classes e interfaces
    - Atributos com especificacao publica: `spec_public`
    - Atributos que podem ter valor null: `nullable`
    - invariante de classe: `invariant`

### Pos condicoes

Declara o que o método faz, e nào como é feitooa declarar as condicoes que devem ser satisfeitas no final do metodo.

- Deve ser garantido pelo implementador
- Pode ser assumido por quem invoca o metodo
- Clausula: `ensures`

- Clausula `ensures_redundantly`
    - Alerta ao leitor
    - Declara algo a ser provado
    - Deve ser uma implicacao dos `ensures`, `assignable` e `invariant`

### Pre condicoes

Declara as condicoes sobre o estado do programa e argumentos reais sobre as quais o metodo pode ser invocado

- Deve ser garantido por quem invoca o metodo
- Pode ser ssumido pelo implementador
- Clausula: `requires`
- Tamebm tem a clausula `requires_redundantly`

### Ordem das clausulas

não há ordem predefinida para as clausulas dentro de um caso de especificacao, porem recomenda-se seguir: Pre-condicoes primeiro e pos-condicoes depois.

- Dentro do grupo de pre-condição dentro do grupo de pos-condicão as clausulas anteriores podem definir coisas sobre as seguintes e torná-las bem definidas.

### Clausula OLD

Calcula o valor de uma expressao no estado inicial (pre-estado) de um metodo. Geralmente usado em pos-condicoes.

### Modificadores e especificacao de visibilidade

- Especiicacoes tambem tem visibilidade: tipicamente, a especificacao de um metodo tem as mesma visibilidade do metodo que ele especifica.

## Assert

`assert` declara uma condicao que deve ser satisfeita em um determinado ponto do corpo de um metodo

- Nao faz parte da especificacao da interface do metodo
- Podem ajudar a depurar a execucao ed um metodo
- Fornece um lema que auxilia na verificacao do corpo do metodo

## Assume

Pode ser usado no corpo de um metodo para instruir o mecanismo de verificacao a assumir, sem prova, que o predicado fornecido e verdadeiro.

## Invariante de classe

Descreve uma propriedade que sempre se a bplica a um objeto. Funcionam como precondicoese poscondicoes comuns a todos os metodos e construtores

- Todo metodo pode assumir que os invariantes sao validos em seu inicio
- Todo metodo deve preservar as invariantes
- Construtores criam objetos que satisfazem invariantes

- Invariantes podem ser estaticos. Nesse caso, essas condicoes se aplicam, tambem, aos metodos estaticos.

## Metodos auxiliares

Nao assumem invariantes, nao estabelecem invariantes e podem ser usados em especificacoes.

## Nullable e Non-Nullable

Especifica se um valor pode ou não assumir o valor de `null`.

## Condicoes de quadro

Indica que posicoes de memoria podem ser alteraas pelo metodo.  que nao ofr mencionado deve permanecer inalterado.

- Um metodo nao tem permissao para atribuir a uma posicao de memoria (ate mesmo com o mesmo valor) que nao esteja listado na condicao do quadro.

### Pure

Metodos `pure`devam satisfazer duas propriedades adicionais:
- Terminar
- Nao lancar exceções

## Especificando construtores

- Todo construtor é puro.

## Initially

Clausula de nível de classe que equivale a uma ensures no final de cada construtor, incluindo um construtor padrão não escrito.

## COnstraint

Nivel de calsse. Pos condicao que se aplicada a todos os metodos, mas nao se aplica a construtores.

- Constraint nao estatica se aplica apenas a metodos nao estaticos.

- Geralmente utilizado para estabelecer uma relacao entre o preestado e o pos-estado do metodo.

## Loops

aspectos a serem especificados: invariante do loop, condicao de quadro, variante

- Invariante do loop: uma condicao que dve ser satisfeita antes e ao final de cada execucao do seu corpo.

- Condicao de quadro: diz quais locais de memoria sao modificados po qualquer iteracao do corpo do loop

- Variante: uma expressao do tipo natural (sempre nao negativa) que sempre diminui a cada execucao do corpo do loop. Permite provar que o loop terminará.

## Expressoesm bem definidas

expressoes que, se fosse uma expressao java, nao lancaria uma excecao e teria um significado valido.

## Modos aritmeticos

- Java mode: a aritmetica s eocmporta exatamente como me java, com o esncapsulamento silencioso de operacoes com overflow/underflow

- Sae mode (padrao para expressoes de codigo jaa): is restuldaos das operacoes aritmeticas sao os mesmos do modo Java, mas erros de verificacao sao emitidos se a operacao puder estourar

- Math mode (padrao para expressoes de especificacao): Não existem underflow, overflow.

## Verificação modular

A verificação em JML (e outras linguagens e ferramentas de verificação dedutiva semelhantes) é modular por método. Ou seja, cada método é verificado por conta própria.

- Somente quando todos os métodos são verificados que o programa pode ser considerado verificado.

- Desde que mantenhamos as mesmas especificações do chamador, podemos verificar o chamador e o chamado independentemente.

- Esse processo é correto quando há chamadas recursivas, desde que seja comprovado que o programa termina.

- A verificação modular diz respeito a "como" os métodos são verificados, e não a "quais" métodos/classes são verificados.

### Chamada de métodos em especificações

Podemos chamar métodos nas especificações, mas existem restrições:

- Expressões nas especificações não devem ter nenhum efeito no programa Java.

- Métodos chamados nas especificações na devem ter nenhum efeito colateral.

- Construtores não podem ser usados nas especificações.

- Quando um método é usado em uma especificação, seu comportamento é determinado por sua especificação, não por sua implementação.

## Múltiplos casos de especificação

JML permite separar a especificação do método em vários casos de especificação, que podem ser considerados comportamentos diferentes

- Cada comportamento é uma sequencia simples de clausulas

- Todo comportamento se aplica por conta própria e deve ser valido por si só

- Se as pré-condições de um comportamento são válidas, então suas pós condições devem ser válidas, independentemente dos outros comportamentos.

## Especificando exceções

- `Signals (E e) P`: se o método terminar com uma exceção `de` tipo `E`, então `P` deve ser satisfeito.

- `signals_only T1, ..., Tn`:
    - Método lança apenas exceções subtipos de `T1, ..., Tn`.
    - No máximo uma clausula por especificação.
    - Padrão `signals_only \nothing` se a clausula for omitida.

### Behaviors

- `public normal_behavior`: Comportamento normal que não lança exceções
- `public exceptional_behavior`: Comportamento do método quando lança uma exceção.

## Variaveis fantasma

É possível e útil, incluir variáveis e cálculos que são apanas para especificação. Isso serve para:

- Controle de informações sobre uma classe que a implementação Java não faz.
- Registrar algum valor ou realizar algum calculo a nível de especificação com a finalidade de verificar a implementação Java.

- Declaramos variáveis com a keyword `ghost`.

- Podem ser declaradas a nível de classe ou método e estão no escopo de especificação.
- `set` é usado para mudar o valor dessas variáveis e pode ser usado com o retorno de métodos puros.

## Abstração de especificação (especificando interfaces)

Precisamos expressar as propriedades em termos de algumas quantidades abstratas. Atributos modelo podem ser usados para descrever as propriedades de uma classe abstrata

### Model fields

Usados somente em especificações para encapsular alguma propriedade de uma classe. Recebem uma implementação escrevendo uma clausula `represents` na classe derivada, conectando-o à implementação concreta.

- Também podem ser usado em uma classe concreta para representar alguma característica que não esta explicitamente presente na classe concreta.

### Datagroup

Um model field também é um datagroup; um datagroups autônomo (não associado a um valor abatato) pode ser declarado usando o tipo JMLDataGroup.

## Especificando herança

Qundo escrevemos especificacoes para a superclasse, definimos seu comportamento. Espera-se que qualquer subclasse sga esse comportamente.

- Essa propriedade é chamada de subtipo comportamental.

- JML impõe subtipo comportamental, garantindo que as subclasses herdem as especificações das superclasses.
