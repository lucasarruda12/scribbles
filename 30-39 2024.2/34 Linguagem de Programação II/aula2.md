# Primeiro programa Java

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
