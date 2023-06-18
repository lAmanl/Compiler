//AMAN SHARMA - 21BCE5769S
%{
#include "y.tab.h"
%}

%%
[aF] {return F;}
[bG] {return G;}
[\n] return L;
. return yytext[0];
%%
int yywrap(){ return 1;}

