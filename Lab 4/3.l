%{
#include <stdio.h>
int i = 0, flag = 0;
%}
%%
[ab]+ {flag = 1;}
[$] {i++; return 0;}
[c-zA-Z0-9] {return 0;}
.;
%%

int yywrap(){};
int main(){
yylex();
if(i == 1 && flag == 1)
printf("\nParsing Successful\n");
else
printf("\nInvalid Input\n");
return 0;
}
