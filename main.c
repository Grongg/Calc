#include "include/operations.h"

int main(int ac, char **av)
{
    //printf("%d\n", atoi(av[1]));
    if (ac != 3)
        return 1;
    printf("la somme est de: %d\n", addition(atoi(av[1]), atoi(av[2])));
    printf("la difference est de: %d\n", soustraction(atoi(av[1]), atoi(av[2])));
    printf("le produit est de: %d\n", multiplication(atoi(av[1]), atoi(av[2])));
    if (division(atoi(av[1]), atoi(av[2])) != -1)
        printf("le quotient est de: %f\n", division(atoi(av[1]), atoi(av[2])));
    else
        printf("division impossible\n");

    return 0;
}