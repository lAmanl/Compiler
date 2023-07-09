%{
#include "y.tab.h"
%}
%%
[a-zA-Z][a-zA-Z0-9]* {yylval.exp = strdup(yytext); return CHAR;}
[+] {yylval.exp = strdup(yytext); return PLUS;}
[-] {yylval.exp = strdup(yytext); return MINUS;}
[/] {yylval.exp = strdup(yytext); return DIV;}
[*] {yylval.exp = strdup(yytext); return MUL;}
[()] {return yytext[0];}
\n return NL;
.;
%%
int yywrap(){return 1;}

