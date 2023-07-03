#include "include/operations.h"

int main(void)
{
    //printf("%d\n", atoi(av[1]));
    int nb1, nb2;
    printf("Veuillez entrer le premier nombre:\n");
    scanf("%d", &nb1);
    printf("Veuillez entrer le premier nombre:\n");
    scanf("%d", &nb2);

    printf("la somme est de: %d\n", addition(nb1, nb2));
    printf("la difference est de: %d\n", soustraction(nb1, nb2));
    printf("le produit est de: %d\n", multiplication(nb1, nb2));
    if (division((float)nb1, (float)nb2) != -1)
        printf("le quotient est de: %f\n", division((float)nb1, (float)nb2));
    else
        printf("division impossible\n");

    return 0;
}