%{
#include"y.tab.h"
%}
%%
[a-zA-Z] {return A;}
\n {return 0;}
. return yytext[0];
%%
int yywrap(){return 1;}

