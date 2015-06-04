#include<stdio.h>
#include<stdlib.h>
#include<string>
#include <conio.h>
#include <locale.h>

int main() {
    setlocale(LC_ALL, "Portuguese");
    int n[5],f;
    for (int i=0; i<5; i++) {
        printf("Informe um numero para a posição %i : ", i);
        scanf("%i", &n[i]);
    }
    for(int i = 0 ; i<5; i ++) {
        if (n[i] % 2 != 0){
            for (int x = 0; x<=10; x++)
                printf("%i x %i : %i\n", n[i], x, n[i]*x);
            printf("******************************\n");
        } else {
            f=1;
            for (int x = 1; x<=n[i]; x++)
                f=f*x;
            printf("Fatorial de %i : %i\n",n[i],f);
            printf("******************************\n");
        }
    }


}
