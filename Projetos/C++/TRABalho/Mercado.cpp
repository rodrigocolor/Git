#include<stdio.h>
#include<stdlib.h>
#include<string>
#include <conio.h>
#include <locale.h>
#include<windows.h>
void gotoxy(int x,int y) {
    COORD coord= {0,0};
    coord.X=x;
    coord.Y=y;
    SetConsoleCursorPosition(GetStdHandle(STD_OUTPUT_HANDLE),coord);
}
char nomeProduto[50],nomeProdutoMaior[50],nomeProdutoMenor[50];
float valor,produtoMaiorPreco, produtoMenorPreco,media;
int qtdd;

int posMenu() {
    int op;
    printf ("##################################\n");
    printf ("#  Deseja mais algum pedido      #\n");
    printf ("# 1 - cadastrar mais produtos    #\n");
    printf ("# 2 - sair do programa           #\n");
    printf ("##################################\n");
    scanf ("%i", &op);
    system("cls");
    return op;
}

void pegaPreco() {
    int l1 = 2, l2 = 4;

    if (produtoMaiorPreco != 0) {
        l1=6;
        l2=8;
        printf ("##################################\n");
        printf ("#         Menor preço            #\n");
        printf ("# Produto :  %20s#\n",nomeProdutoMenor);
        printf ("# Preco :              %8.2f  #\n",produtoMenorPreco);
    }
    printf ("##################################\n");
    printf ("# Informe o nome do produto      #\n");
    gotoxy(33, l1);
    printf("#\n");
    gotoxy(0, l1);
    printf("# ");
    scanf("%s",nomeProduto);
    printf ("# Informe o preco do produto     #\n");
    gotoxy(33, l2);
    printf("#\n");
    gotoxy(0, l2);
    printf("# ");
    scanf("%f",&valor);
    printf ("##################################\n");
}

int main() {
       qtdd=0;
    setlocale(LC_ALL, "Portuguese");
    produtoMaiorPreco=0;
    produtoMenorPreco=99999999999;
    int  op=1;

    op=posMenu();
    while (op!=2) {
        pegaPreco();
        qtdd++;
        media =media+ valor;
        if (valor > produtoMaiorPreco) {
            produtoMaiorPreco = valor;
            strcpy(nomeProdutoMaior,nomeProduto);
        }
        if (valor <produtoMenorPreco) {
            produtoMenorPreco = valor;
            strcpy(nomeProdutoMenor,nomeProduto);
        }
        op=posMenu();
    }
    media = media / qtdd;
    system("cls");
    printf ("####################################\n");
    printf ("# A média dos valores é:  %4.2f  #\n",media);
    printf ("# -------------------------------- #\n",media);
    printf ("# Nome do prod é:%17s #\n",nomeProdutoMaior);
    printf ("# Maior valor é:          %4.2f  #\n",produtoMaiorPreco);
    printf ("####################################\n\n");
    system("pause");
    system("cls");


    return 0;
}
