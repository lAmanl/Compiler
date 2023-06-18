#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int l = 0, i = 0, j = 0, k = 0;
char s[50], a[50], stack[50], action[15];
void check();

int main(){
    printf("Grammar is - S->SS|aS|b\n");
    strcpy(s,"abaabbab");
    k = strlen(s);
    strcpy(action, "SHIFT");
    printf("\nstack \t input \t action");
    printf("\n$\t%s$\t",s);
    for(i = 0;j<k; i++,j++){
        printf("%s", action);
        stack[i] = s[j];
        stack[i+1] = '\0';
        s[j] = ' ';
        printf("\n$%s\t%s\t", stack, s);
        check();
    }
    check();
    if(stack[0] == 'S' && stack[1] == '\0')
        printf("Accept\n");
    else
        printf("Reject\n");
}

void check(){
    strcpy(a, "REDUCE TO S->");
    for(l = 0; l<k-1; l++){
        if(stack[l] == 'S' && stack[l+1] == 'S'){
            printf("%sSS", a);
            stack[l] = 'S';
            stack[l+1] = '\0';
            printf("\n$%s\t%s$\t", stack,s); 
            i--;
        }
        else if(stack[l] == 's' && stack[l+1] == 'S'){
            printf("%saS", a);
            stack[l] = 'S';
            stack[l+1] = '\0';
            printf("\n$%s\t%s$\t", stack,s);    
            i--;
        }
        else if(stack[l] == 'b'){
            printf("%sb", a);
            stack[l] = 'S';
            stack[l+1] = '\0';
            printf("\n$%s\t%s$\t", stack,s);        
        }
    }
}
