//AMAN SHARMA - 21BCE5769
%{
#include "y.tab.h"
%}

%%
a {return 'a';}
b {return 'b';}
[\n] return 0;
. return yytext[0];
%%
int yywrap(){ return 1;}

