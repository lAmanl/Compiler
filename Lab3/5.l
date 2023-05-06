%{
#include <stdio.h>
%}
%%
[a-zA-Z][a-zA-Z0-9]* {printf("Identifier: %s\n",yytext);}
[0-9]+ {printf("Number: %s\n",yytext);}
\n return 0;
.;
%%
int main(){
yylex();
return 0;
}
int yywrap(){}
