#include<stdio.h>
#include<stdlib.h>
#include<cstring>
#include <conio.h>
#include <locale.h>

using namespace std;
struct carro {
    char nome[100];
    float Preco;
    char cor[100];
    char marca[100];

};
int main() {
    int i, mem;
    float menor=9999999;
    carro car[8];
    setlocale(LC_ALL, "Portuguese");
    for ( i = 1; i<=8 ; i++) {
        printf("Informe a marca: ");
        scanf("%s", car[i].marca);
        printf("Informe a Cor: ");
        scanf("%s", car[i].cor);
        printf("Informe o nome: ");
        scanf("%s", car[i].nome);
        printf("Informe o preco: ");
        scanf("%f", &car[i].Preco);
    }
    for ( i = 1; i<=8 ; i++) {
        if (car[i].Preco < menor) mem=i;
    }
    printf("O carro mais barato é : %s",car[mem].nome);


}
