# ./34.01 Apresentação da Disciplina.md
Vai ser em Java :(

# Ementa

- Tem no Sigaa.

# Avaliação

- Duas individuais (U1 e U2) e uma em grupo (U3)

# O que é necessário

- Ambiente de desenvolvimento em JAVA (Ele recomendou o openjkd-20)
- Ferramenta de Desenvolvimento (Ele recomendou o vs code >:|)

# Sobre JAVA

- Java é uma linguagem de programação orientada a objetos desenvolvida na década de 90 por uma equipe de programadores chefiada por james gosling.
- Nasceu como green project.
- Esse projeto resultou na criação de uma l.p. chamada oak.
- em 95 o nome JAVA foi adotado, para remeter a uma ilha muito famosa pelo café (ilha de JAvA)

# Sobre compilação

- Java compila para um arquivo intermediário, chamado bytecode. Por sua vez, o bytecode é interpretado por uma máquina virtual (java virtual machine).
- Write once, run anywhere (WORA).

# Características da linguagem

- Fortemente tipada
- Sem ponteiros
- Coleção de lixo (garbage collection)
- Portável e plataform-independent
# ./34.02 Primeiro programa Java.md
````java
class PrimeiroPrograma {
    public static  void main(String[] args) {
        System.out.println("Olá mundo!");
    }
}
````

- Todo programa começa com uma classe inicial.
    - O nome não importa.
    - Dentro dessa classe eu tenho uma função `main`.

- Arquivos usam .java.
- Nome do arquivo que contém a função main *deve* ser igual ao nome da classe que contém a função main.

# Variáveis

````java
Type variable_name;
Type variable_name = value;
````

- Por convenção: camelCase

# Tipos primitivos

- byte
- short, int, long, float, double
- char
- boolean

# Palavras reservadas

- Algumas. Não vou escrever. Pesquise. Muita coisa de c++

# Operadores aritméticos/relacionais

- Ver tópico anterior

# Operadores lógicos

- Os mesmos de c++
- Operadores curto circuito:
    - Se eu uso || ou && eu digo pra linguagem que se ela já sabe o resultado, nem precisa fazer o resto. Se eu mando a && b e o a já é verdade, nem precisa checar b, então o java não checa

# Lendo dados do teclado

- Classe Scanner

````java
import java.util.Scanner;

class Exemplo {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        String nome = scan.nextLine();
        int idade = scan.nextInt();
    }
}
````

# Condicionais

- Igual ao c++. Crie vergonha na cara. Switch tbm.
- Lembrar do break.
# ./34.03 Arrays e Matrizes.md
````
int[] numeros = {1,2,3,4,5};
int[] numeros = new int[5];
````
- Os arrays em Java são de tamanho fixo.

# Programação orientada a objetos

- Surge na década de 60~70 com a linguagem smalltalk
- "Uma nova maneira de pensar os problemas utilizando conceitos domundo real. O componente fundamental é o objeto que combina estrutura e comportamento em uma única entidade".
- Reflete o mundo real

# Terminologia

- Muitas *instâncias* podem ser criadas a partir de uma única classe.
- Um objeto tem *atributos*: valores armazenados em campos.
- A classes defne quais campos um objeto tem, mais cada objeto armazena seu próprio conjunto de valores (o *estado* do objeto).
- Um objeto tem *métodos*: ações (funções) que ele pode realizar.

### Classes

- Descrição de um conjunto de objetos ou elementos semelhantes
- Ideia de agrupamento de objetos com características em comum
- Modelar uma classe é o ato de projetar o arquivo classe.java

### Construtores

- Um construtor padrão (vazio) é criado junto de toda classe.
- Um construtor (público) é necessário para criar minha classe. Se eu privo o construtor padrão e não escrevo um alternativo, não existe nenhuma forma de *instanciar* a minha classe.

# Abstração

O ato de esconder detalhes do usuário final.

# Modularização

Dividir o sistema em partes bem definidas.

# Sobrecarga de métodos

Dá pra fazer. 

# Getters e Setters

Os métodos getter e setter são comumente usados para acessar e modificar os valores dos atributos de uma classe, respectivamente. Esses métodos são uma parte fundamental do encapsulamento, um conceito-chave na programação orientada a objetos que visa proteger os detalhes internos de uma classe e fornecer um controle mais preciso sobre como os atributos são acessados e modificados.


# ./34.04 Princípios de POO II.md
# Modificadores de acesso

- Public: O acesso é ilimitado

- Private: Acesso restrito à classe

- Protected:

- Default (pacote-private)

# Pacotes (packages)

É um mecanismo de organizção de classes e interfaces relaciondas. Ela agrupa classes in interfaces relacionadas em um único namespace, proporcionando organização e modularidade ao código.

# Sobrecarga de métodos

Permite que uma classe tenha vários métodos com o mesmonome, desde que tenham assinaturas diferentes. A assinatura do método inclui o nome do método e a lista de parâmetros.

# Modificadores de Acesso

- `static`: O modificador static em java é usado para declarar membros de uma classe (atributos, métodos) que pertencerm à própria classe.

```java
class Pessoa {
    public static void Casar(Pessoa a, Pessoa b) {}

    public void Casar_com(Pessoa ) {}
};

Pessoa a, b;
Pessoa.casar(a, b);
a.Casar_com(b);
```


# ./34.05 Herança.md
É um dos pilares da orientação a objetos. Permite que uma classe (filha ou subclasse) aproveite de características e comportamentos de outra (mãe ou superclasse). 

- Permitindo reutilização de código entre classes.
- `super`: Dá acesso à classe *super*classe de dentro da *sub*classe

# Sobrecarga de métodos (Overload)

(aula passada)

# Sobrescrita de métodos (Override)

Declaro na subclasse um método com modificador `@override`, para sobreescrever o método de mesmo nome da classe mãe.

```java
// Na classe A:
public andar(){
    return "andarei!";
}

// Na classe B, que herda de A:
@override
public andar(){
    return "andei";
}

new B().andar(); // "andei"
```

# Superclasse Object

Em java, todas as classes herdam de uma superclasse Object.

- O que isso significa: Alguns métodos são herdados por padrão.
# ./34.06 Abstração.md
# Classes abstratas

Uma classe que não pode ser instanciada diretamente, ou seja, você não pode criar objetos diretamente a partir dela. Ela serve como um modelo para outras classes derivadas.

- Uma classe abstrata pode conter métodos abstratos e métodos concretos (com ou sem implementação, respectivamente).

# Interfaces

Uma interface é uma coleção de métodos abstratos que definem um contrato para uma classe que a implementa. Ela fornece um meio de especificar o comportamento que uma classe deve implementar sem definir como esse comportamento será realizado.

- Uma interface é declarda usando a palavra-chave `interface`. Para implmenetar uma interface, uma classe usa a palavra-chave `implements`. *Uma classe pode implementar várias interfaces*.

### Métodos abstratos

Uma interface pode conter apenas métodos abstratos. Uma classe que implementa uma interface deve fornecer implementações para todos esses.

### Constantes

As interfaces podem conter constantes que são implicitamente públicas, estáticas e finais. Estasconstantespodem ser acessadas usando o nome da interface.

# Collections

Em java, o pacote java.util fornece uma série de estruturas de dados conhecidas como "collections" que são projetadas para armazenar, manipular e organizar grupos de objetos de maneira eficiente.

| Collection | Descrição |
| ---------- | --------- |
| List       | Não prestei atenção. Sorry |
| ArrayList  | armazena elementos dinamicamente e permite acessá-los por meio de um índice |
O araylist é uma implementação de listas em java que armazena elementos dinamicamente e permte acessá-los por meio de um índice
| Vector     | armazena elementos dinamicamente e permtem acessá-los por meio de um ínice, com uma proteção extra contra acessos simultâneos entre threads. Chamado de sincronizado. |

# ArrayList x Vector

O vector tem perda de performance, por ser sincronizado. Isto é, seguro para uso em ambiêntes multithreads, por garantir que duas threads separadas não podem modificar o Vector ao mesmo tempo.
# ./34.07 Arquivos e serialização.md
(Em Java, eca!)
# ./34.08 Tratamento de erros.md
# Erros na programação

Erros são parte inevitável do processo de programaçào. Eles podem ocorrer por uma variedade de razões e em diferentes estágios do desenvolvimento de software.

- Ele deu vários tipos de erro aqui. não vou listar todos. Vida que segue.

# Depuração

A depuração (debbuging) é o processo de identificar, isolar e corrigir esses erros em um programa. isso geralmente envolve o uso de ferramentas de desenvolvimento, como depuradores e registradores de erros.

# Error e Exceptions

As duas herdam de `throwable`, mas diferenciam no tratamento. `Execeptions` são _catcháveis_ e tratáveis, `Errors` não.

- São exemplos de Execptions: `SyntaxExecption`
- São exemplos de Errors: `SystemOutOfMemory`

# Throws

Anotação dada a um método para lançar a responsabilidade de tratar o erro para quem o utiliza.
# ./34.09 Datas em JAVA.md
eca!
# ./34.10 Arquivos e serialização.md
(Em Java, eca!)
# ./34.11 Arquivos e Serialização II.md
(eca!)
# ./34.12 Enums, e tals.md
(eca!)
# ./34.13.md
# Interfaces gráficas em java

eca!
