%{
#include "y.tab.h"
%}
%%
[0] {return ZERO;}
[1] {return ONE;}
[2] {return TWO;}
[3] {return THREE;}
[4] {return FOUR;}
[5] {return FIVE;}
[6] {return SIX;}
[7] {return SEVEN;}

"\n" {return NL; }
. {return yytext[0]; }
%%
int yywrap(){}
