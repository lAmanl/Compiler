%{
#include "y.tab.h"
%}

%%
11 {return START;}
00 {return END;}
. {return yytext[0];}
%%
int yywrap(){ 
return 1;
}

