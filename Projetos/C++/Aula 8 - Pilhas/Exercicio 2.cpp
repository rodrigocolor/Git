#include<stdio.h>
#include<stdlib.h>
#include<string>
#include <conio.h>
#include <locale.h>
struct pilha {
    int topo, item[7];
};

void iniciaPilha(pilha &p) {
    p.topo = -1;
}
bool pilhaVazia(pilha p) {
    if(p.topo == -1) return true;
    else return false;
}
bool pilhaCheia(pilha p) {
    if(p.topo == 7-1) return true;
    else return false;
}
void empilha(pilha &p, int x) {

    p.item[++p.topo]=x;
}
int desempilha(pilha &p) {
    return(p.item[p.topo--]);
}
int main() {
    setlocale(LC_ALL, "Portuguese");
    pilha x;
    int i=0, t, z, tmp, tmp2;
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
                tmp= desempilha(x);
                for (z=1; z <= 10; z++) {
                    printf("%i x %i = %i\n", tmp, z,tmp*z );
                }
                tmp2= 1;
                for (z = 1; z<= tmp ; z ++) {
                    tmp2 =tmp2 *z;
                }
                printf("\n\nFatorial de %i = %i\n",tmp, tmp2);

                break;

            case 4 :
                system("exit");
                break;
            default:
                printf( "Opção invalida!!");
                break;
            }

        }
        printf("\n");
        system("pause");


    }
}


