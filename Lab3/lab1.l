/*lex program to count number of words*/
%{
#include <stdio.h>
int i = 0;
%}
%%
[a-zA-Z]+ {i++;}
"\n" {printf("Total number of words: %d",i);}
.;
%%
int yywrap(){};
int main()
{
    yylex();
//printf("Welcome to Lexical Analysis");
return 0;
}
