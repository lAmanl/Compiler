%{
#include "y.tab.h"
%}
%%
[0-9]+ {yylval.exp = strdup(yytext); return NUM;}
[+] {yylval.exp = strdup(yytext); return PLUS;}
[-] {yylval.exp = strdup(yytext); return MINUS;}
[/] {yylval.exp = strdup(yytext); return DIV;}
[*] {yylval.exp = strdup(yytext); return MUL;}
[()] {return yytext[0];}
\n return NL;
.;
%%
int yywrap(){return 1;}

