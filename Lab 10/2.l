%{
#include "y.tab.h"
int extern yylval;
%}
%%
[a-zA-Z0-9]+ {yylval = *yytext; return ID;}
\n return NL;
. return *yytext;
%%
int yywrap(){return 1;}
