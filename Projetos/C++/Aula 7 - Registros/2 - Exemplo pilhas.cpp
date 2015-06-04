#include<stdio.h>
#include<stdlib.h>
#include<string>
#include <conio.h>
#include <locale.h>
struct pilha{
int topo, item[7];
};

void iniciaPilha(pilha &p){
    p.topo = -1;
}
bool pilhaVazia(pilha p){
if(p.topo == -1) return true;
else return false;
}
bool pilhaCheia(pilha p){
if(p.topo == 5-1) return true;
else return false;
}
void empilha(pilha &p, int x){
    if (x % 2 == 0)
p.item[++p.topo]=x;
}
int desempilha(pilha &p){
return(p.item[p.topo--]);
}
int main(){
  setlocale(LC_ALL, "Portuguese");
pilha x;
int i=0, t;
iniciaPilha(x);
while (i != 4){
        system("cls");
    printf("1- Verificar s pilha vazia\n");
    printf("2- Inserir objetos\n");
    printf("3- Mostrar topo\n");
    printf("4- Sair\n");
    scanf( "%i",&i );
    if(i == 1)
    if (pilhaVazia(x)){
        printf("Pilha vazia!\n");
    }else{
    printf("Pilha nao esta vazia!\n");
    }
    if (i==2){
        if (pilhaCheia(x)){
        printf("Pilha cheia!!!\n\n");
        }else{
        printf("Informe um numero: ");
        scanf("%i",&t);
        empilha(x, t);
        }
    }

        if (i==3){
            if (pilhaVazia(x)){
                printf("Pilha vazia!\n");
            }else{
            printf("Item desempilhado %i ", desempilha(x));
            }
        }

printf("\n");
    system("pause");

}
}

