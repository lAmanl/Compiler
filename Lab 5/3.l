%{
#include <stdio.h>
#include <string.h>
%}

%%
[a-zA-Z]+ {
    int n = strlen(yytext);
    printf("Reversed String: ");
    for(int i = n-1; i>= 0; i--)
    	printf("%c", yytext[i]);
    printf("\n");
}
\n {return 0;}
%%
int yywrap(){}
int main(){
char a[20];
printf("Enter the file name: ");
scanf("%s", a);
strcat(a,".txt");
yyin = fopen(a ,"r");
yylex();
return 0;
}
