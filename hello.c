#include <stdio.h>

int main() {
    printf("Hello World!\n");
    
    return 5;
}

int sum(int a, int b) {
    return a+b;
}

void sum_args(int a, int b, int* c) {
    *c = a+b;
}
