%{
#include "y.tab.h"
%}

%%
[a-zA-Z]+ {return ID;}
[\t]+	;
\n {return 0;}
. {return yytext[0];}
%%
int yywrap(){}
=
