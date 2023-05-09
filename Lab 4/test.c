#include <stdio.h>
#include <stdlib.h>

char s;
void E(), T(), Eprime();

void match(char c){
    if(s==c)
        s = getchar();
    else{
        printf("Invalid Input\n");
        exit(0);
    }
}

void Eprime(){
    if(s=='-'){
        match('-');
        T();
        Eprime();
    }
    else return;
}

void T(){
    if(s=='i')
        match('i');
    else{
        printf("Invalid Input\n");
        exit(0);
    }
}

void E(){
    T();
    Eprime();
}

void main(){
    char input[10];
    printf("Enter the string with $ at the end\n");
    s = getchar();
    E();
    if(s == '$')
        printf("\nParsing Successful\n");
    else
        printf("Invalid Input\n");
}
