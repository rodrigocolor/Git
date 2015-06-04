#include<stdio.h>
#include<stdlib.h>
#include<string>
#include <conio.h>
#include <locale.h>
#define quantidadeItens 4
char itens[5][30] = {"","X-salada","Mini-pizza","Hot dog","Refrigerante"};
float valor[5] = {0 , 7, 10, 6, 4};
int menu() {
    int op;
    printf ("##################################\n");
    printf ("# Menu:                          #\n");
    printf ("# 1 - para X-Salada              #\n");
    printf ("# 2 - para Mini-Pizza            #\n");
    printf ("# 3 - para Hot Dog               #\n");
    printf ("# 4 - para Refrigerante          #\n");
    printf ("# 5 - para Consultar os Preços   #\n");
    printf ("##################################\n");
    scanf ("%i", &op);
    system("cls");
    return op;
}
int posMenu() {
    int op;
    printf ("##################################\n");
    printf ("#  Deseja mais algum pedido      #\n");
    printf ("# 1 - para pedir mais produtos   #\n");
    printf ("# 2 - para sair do programa      #\n");
    printf ("##################################\n");
    scanf ("%i", &op);
    system("cls");
    return op;
}
int preMenu() {
    int op;
    printf ("##################################\n");
    printf ("# Menu:                          #\n");
    printf ("# 1-  Efetuar o Pedido           #\n");
    printf ("# 2-  Sair do Sistema            #\n");
    printf ("##################################\n");
    scanf ("%i",&op);
    system("cls");
    return op;
}
void listaPrecos() {
    int i;
    printf ("##################################\n");
    for (i = 1; i <= quantidadeItens; i++ )
        printf("# %-19s--- %4g    #\n" ,itens[i],valor[i]);
    printf ("##################################\n");
    system("pause");
    system("cls");
    menu();
}

int main() {
    setlocale(LC_ALL, "Portuguese");
    int  opc=1,op=1,opcR=1;
    float total=0;
    opc = preMenu();
    while (opcR!=2) {
        while (opc!=2) {
            op= menu();
            switch (op) {
            case  5:
                listaPrecos();
                break;
            default:
                total= total+valor[op];
                break;
            }
            opc= posMenu();
        }
        printf ("############################################\n");
        printf ("# O Valor dos Produtos foi de:  R$ %-8g#\n", total);
        printf ("############################################\n\n");
        system("pause");
        system("cls");
        total=0;
        opcR= preMenu();
    }
    return 0;
}
