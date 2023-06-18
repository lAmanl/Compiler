%{
#include"y.tab.h"
%}
%%
[0-1] {return A;}
\n {return 0;}
. return yytext[0];
%%
int yywrap(){return 1;}
