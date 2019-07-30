#include <stdio.h>

int main(void) {
    printf("Calling the fopen() function...\n");

    FILE *fd = fopen("tests/fopen/test.txt","r");
    if (!fd) {
        printf("fopen() returned NULL\n");
        return 1;
    }

    printf("fopen() succeeded\n");

    return 0;
}
