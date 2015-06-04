#include<stdio.h>
#include<stdlib.h>
#include<string>
#include <conio.h>
#include <locale.h>
struct pilha {
    int topo, item[8];
};

void iniciaPilha(pilha &p) {
    p.topo = -1;
}
bool pilhaVazia(pilha p) {
    if(p.topo == -1) return true;
    else return false;
}
bool pilhaCheia(pilha p) {
    if(p.topo == 8-1) return true;
    else return false;
}
void empilha(pilha &p, int x) {
    p.item[++p.topo]=x;
}
int desempilha(pilha &p) {
    if (p.item[p.topo--] % 2 != 0) return(p.item[p.topo]);
}
int main() {
    setlocale(LC_ALL, "Portuguese");
    pilha x;
    int i=0, t;
    iniciaPilha(x);
    while (i != 4) {
        system("cls");
        printf("1- Verificar s pilha vazia\n");
        printf("2- Inserir objetos\n");
        printf("3- Mostrar topo\n");
        printf("4- Sair\n");
        scanf( "%i",&i );
        switch (i) {
        case 1:
            if (pilhaVazia(x)) {
                printf("Pilha vazia!\n");
            } else {
                printf("Pilha nao esta vazia!\n");
            }
            break;
        case 2:
            if (pilhaCheia(x)) {
                printf("Pilha cheia!!\n\n");
            } else {
                printf("Informe um numero: ");
                scanf("%i",&t);
                empilha(x, t);
            }
            break;

        case  3:
            if (pilhaVazia(x)) {
                printf("Pilha vazia!\n");
            } else {
                printf("Item desempilhado %i ", desempilha(x));
            }

            break;

        case 4 :
            system("exit");
            break;
        default:
            printf( "Opção invalida!!");
            break;
        }


        printf("\n");
        system("pause");

    }
}
