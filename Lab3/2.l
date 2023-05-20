%{
#include <stdio.h>
#include <string.h>
%}
%%
[a-zA-Z]*[aeiouAEIOU][a-zA-Z]*[aeiouAEIOU][a-zA-Z]* {printf("Valid: %s\n", yytext);}
\n {return 0;}
. ;
%%
int yywrap(){};
int main(){
char a[20];
printf("Enter the file name: \n");
scanf("%s", a);
strcat(a,".txt");
yyin = fopen(a,"r");
yylex();
return 0;
}
