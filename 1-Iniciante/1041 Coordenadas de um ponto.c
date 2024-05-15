/*
Leia 2 valores com uma casa decimal (x e y), que devem representar as coordenadas de um ponto em um plano. A seguir, determine qual o quadrante ao qual pertence o ponto, ou se está sobre um dos eixos cartesianos ou na origem (x = y = 0).
            |y
        Q2 | Q1
       --------- x
        Q3 | Q4

Se o ponto estiver na origem, escreva a mensagem “Origem”.

Se o ponto estiver sobre um dos eixos escreva “Eixo X” ou “Eixo Y”, conforme for a situação.

Entrada
A entrada contem as coordenadas de um ponto.

Saída
A saída deve apresentar o quadrante em que o ponto se encontra.

Exemplo de Entrada	    Exemplo de Saída
4.5 -2.2                Q4
0.1 0.1                 Q1
0.0 0.0                 Origem
*/
/*
Meu Resultado:
*/

#include <stdio.h>

int main()
{
    float x, y;

    scanf("%f %f", &x, &y);

    if (x == 0.0 && y == 0.0)
    {
        printf("Origem\n");
    }
    else if (x == 0.0)
    {
        printf("Eixo Y\n");
    }
    else if (y == 0.0)
    {
        printf("Eixo X\n");
    }
    else if (x > 0.0 && y > 0.0)
    {
        printf("Q1\n");
    }
    else if (x < 0.0 && y > 0.0)
    {
        printf("Q2\n");
    }
    else if (x < 0.0 && y < 0.0)
    {
        printf("Q3\n");
    }
    else
    {
        printf("Q4\n");
    }
    return 0;
}