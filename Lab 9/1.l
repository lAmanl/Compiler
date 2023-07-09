%{
 #include "y.tab.h"
%}
%%
[a-zA-Z][a-zA-Z0-9]* {return id;}
[0-9]+ {return num;}
[\n] return 0;
[\t] ;
. return yytext[0];
%%
int yywrap(){return 1;}

