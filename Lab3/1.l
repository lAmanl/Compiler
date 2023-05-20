%{
#include <stdio.h>
#include <string.h>
%}
%%
int|char|float|FILE {printf("Keyword: %s\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("Identifier: %s\n",yytext);}
[0-9]+ {printf("Number: %s\n",yytext);}
\n {return 0;}
.;
%%
int main(){
char a[20];
printf("Enter the file name: ");
scanf("%s", a);
strcat(a,".txt");
yyin = fopen(a,"r");
yylex();
return 0;
}
int yywrap(){}
