// AMAN SHARMA - 21BCE5769
%{
#include "y.tab.h"
%}
%%
[Aa] {return A;}
[Bb] {return B;}
[\n] return 0;
. return yytext[0];
%%
int yywrap(){return 1;}
