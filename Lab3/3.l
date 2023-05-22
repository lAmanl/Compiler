%{
#include <stdio.h>
%}
%%
[tT][a-zA-Z0-9]+ {printf("Valid: %s\n", yytext);}
[a-zA-Z0-9^t^T]+ {printf("Invalid: %s\n", yytext);}
\n {return 0;}
%%
int yywrap(){
return 1;
}
int main(){
printf("Enter the word: \n");
yylex();
return 0;
}
