#include<stdio.h>
#include<stdlib.h>
#include<string>
#include <conio.h>
#include <locale.h>

int main() {
    setlocale(LC_ALL, "Portuguese");
    int quantAlunos,MAprovado,temp, temp2;
    float media;

    MAprovado= 0;
    printf("Informe o total de Alunos: ");
    scanf("%i",&quantAlunos);
    system("cls");
    for (int i=1; i<=quantAlunos; i++) {
        printf("\n\n################   Aluno %i  ###########################\n", i);
        printf("Informe a nota 1  : ");
        scanf("%i" ,&temp);
        printf("Informe a nota 1  : ");
        scanf("%i" ,&temp2);
        if (temp + temp2 / 2 > 7) MAprovado++;

    }
    system("cls");
    media= (MAprovado*100)/quantAlunos;
    printf("Total de aprovados: %g%\n", media);
}
