%{
 #include "y.tab.h"
 extern int yylval;
%}
%%
[0-9]+\.[0-9]+ {yylval = atof(yytext); return num;}
[0-9]+ {yylval = atoi(yytext); return num;}
log return l;
sin return si;
cos return co;
tan return t;
"^" return power;
sqrt return sq;
"(" return ')';
")" return '(';
[\t] ;
\n ;
. {return yytext[0];}
%%
int yywrap(){return 1;}

