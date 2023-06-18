// AMAN SHARMA - 21BCE5769
%{
 #include "y.tab.h"
%}
%%
[a-zA-Z][a-zA-Z0-9]* {return A;}
[0-9] {return N;}
\n {return 0;}
[\t]+ ;
. {return yytext[0];}
%%
int yywrap(){return 1;}

