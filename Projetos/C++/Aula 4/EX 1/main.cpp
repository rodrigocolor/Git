#include<stdio.h>
#include<stdlib.h>
#include<string>
#include <conio.h>
#include <locale.h>

int fevereiro(int ano) {
    int i;
    if(ano%4==0 && (ano%100!=0 || ano%400==0)) {
        i = 29;
    } else {
        i = 28;
    }
    return i;
}
int main() {
    setlocale(LC_ALL, "Portuguese");
    int dia, mes, ano,udia;
    printf("Informe um dia: ");
    scanf("%i" ,&dia);
    printf("nInforme um mes: ");
    scanf("%i" ,&mes);
    printf("nInforme um ano: ");
    scanf("%i" ,&ano);
    switch (mes) {
    case 1:
        udia = 31;
        break;
    case 2:
        udia = fevereiro(ano);
        break;
    case 3:
        udia = 31;
        break;
    case 4:
        udia = 30;
        break;
    case 5:
        udia = 31;
        break;
    case 6:
        udia = 30;
        break;
    case 7:
        udia = 31;
        break;
    case 8:
        udia = 31;
        break;
    case 9:
        udia = 30;
        break;
    case 10:
        udia = 31;
        break;
    case 11:
        udia = 30;
        break;
    case 12:
        udia = 31;
        break;
    }
    if (dia >= udia) {
        dia =1;
        mes ++;
    } else {
        dia++;
    }
    if (mes >= 12 && dia == 01) {
        ano++;
        mes=1;
    }
    printf("%i/%i/%i",dia,mes,ano);
system("pause");
}
