
#include<string>
#include <conio.h>
#include <locale.h>


#include <stdio.h>
#include <stdlib.h>

int dividir(int vetor[],int esq, int dir){
    int aux; //troca de posicoes
    int cont = esq;

    for(int i=esq+1 ; i<=dir ; i++){

        if( vetor[i] < vetor[esq] ){
            cont++;
            aux=vetor[i];
            vetor[i]=vetor[cont];
            vetor[cont]=aux;
        }
    }

    aux=vetor[esq];
    vetor[esq]=vetor[cont];
    vetor[cont]=aux;

    return cont;
}

void quick(int vetor[],int esq, int dir){
    int pos;
    if(esq < dir){
        pos = dividir(vetor,esq,dir);
        quick(vetor,esq,pos-1);
        quick(vetor,pos+1,dir);
    }
}

int main(){
  setlocale(LC_ALL, "Portuguese");
    int vetor[14];
    int i,n=14;
    for (i = 1; i <15; i++) {
        printf("Informe um valor para a posição %i: ",i);
        scanf("%i" ,&vetor[i]);
    }

    quick(vetor,0,n);

    printf("\n\n\n");

    for(int i=0;i<n;i++)
        printf("%d - ",vetor[i]);

    printf("\n\n\n");

    system("pause");
    return 0;
}
