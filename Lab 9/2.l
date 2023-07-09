%{
#include "y.tab.h"
extern int yylval;
%}
%%
[0-1]+ {yylval=atoi(yytext); return num;}
%%
int yywrap(){return 1;}
