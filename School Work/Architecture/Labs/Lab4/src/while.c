#include <stdio.h>
int A = 5;
int B = 7;
char str1 = 'a','b','c','d','e','f','h','i';

int main(int argc, char ** argv){
    while(A<B){
        printf("Counting\n");
        A++;
        printf(str1[A]);
    }
}
