%{
#include "y.tab.h"
extern int yylval;
%}

%%
"0" { yylval = 0.0; return ZERO; }
"1" { yylval = 1.0; return ONE; }
\n { return 0; }
"." { return yytext[0]; }
. { ; }
%%

int yywrap() {
    return 1;
}

