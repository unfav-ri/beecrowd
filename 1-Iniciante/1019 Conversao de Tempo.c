/*
Leia um valor inteiro, que é o tempo de duração em segundos de um determinado evento em uma fábrica, e informe-o expresso no formato horas:minutos:segundos.

Entrada
O arquivo de entrada contém um valor inteiro N.

Saída
Imprima o tempo lido no arquivo de entrada (segundos), convertido para horas:minutos:segundos, conforme exemplo fornecido.

Exemplo de Entrada	    Exemplo de Saída
556                     0:9:16

1                       0:0:1

140153                  38:55:53
*/
/*
Meu Resultado:
*/

#include <stdio.h>

int main()
{

    int tempo, hrs, mins, segs;

    scanf("%d", &tempo);

    hrs = tempo / 3600;
    tempo = 3600;
    mins = tempo / 60;
    segs = tempo % 60;

    printf("%d:%d:%d\n", hrs, mins, segs);

    return 0;
}