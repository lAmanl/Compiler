// AMAN SHARMA - 21BCE5769
%{
#include "y.tab.h"
%}
%%
[0] {return A;}
[1] {return B;}
\n {return L;}
.  {return yytext[0];}
%%  
int yywrap(){}

