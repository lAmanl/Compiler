#include <stdio.h>
#include <stdlib.h>
char s;
void E(),Eprime();

void match(char c){
    if(s == c)
        s = getchar();
    else{
        printf("\nInvalid Input\n");
        exit(0);
    }
}
void E(){
    if(s == 'a' || s == 'b'){
        match(s);
        Eprime();
    }
    else
        printf("\nInvalid Input\n");
}

void Eprime(){
    if(s == 'a' || s == 'b'){
        match(s);
        Eprime();
    }
    else return;
}

void main(){
    char input[10];
    printf("Enter String with $ at the end\n");
    s = getchar();
    E();
    if(s == '$')
        printf("\nParsing Successful\n");
    else
        printf("Invalid Input\n");
}
