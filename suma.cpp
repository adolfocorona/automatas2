#include<stdio.h>
#include<math.h>
#include<iostream>

char a;
int contador, c, i;

void main() // Funcion principal
{
    
    
    do {
        printf("\nValor de contador: ", contador);
        contador++;
    }
    while(contador <= 10);
    while( c < 10) {
        printf("\nValor de c: ", c);
        c++;
    }
    for(i = 0; i < 10;i++) {
        printf("\nValor de i: ", i);
    }
}