%{
#include "y.tab.h"
%}
%%
[a-zA-Z] {return char;}
[0-9] {return num;}
\n {return NL;}
%%
int yywrap(){}

