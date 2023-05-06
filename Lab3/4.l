%{
#include <stdio.h>
%}
%%
[A-Za-z]+ {fwrite(yytext, yyleng, 1, yyout);}
[\t' '] {fwrite(yytext, yyleng, 1, yyout);}
[$] return 0;
.;
%%
int main(){
yyout = fopen("myfile.txt","w");
yylex();
}
int yywrap(){}
