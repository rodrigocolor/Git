#include<stdio.h>
#include<stdlib.h>
#include<string>
#include <conio.h>
#include <locale.h>

int main(){
  setlocale(LC_ALL, "Portuguese");
int vetor[10],c1,c2;
for (c1 =1; c1<=10; c1++){
    printf("Informe um numero para a posição %i :",c1);
    scanf("%i" ,&vetor[c1]);
}
c2=0;
for (c1 =1; c1<=10; c1++){
if ((vetor[c1]==1) &&(vetor[c1+1]==2) && (vetor[c1+2] ==4))
    c2++;
}
printf("A sequencia apareceu %i vezes" ,c2);
}
