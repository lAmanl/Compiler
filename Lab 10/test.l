%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "y.tab.h"
%} 
NUM [0-9]+ 
CHARACTER [_a-zA-Z][_a-zA-Z0-9]* 
%%
exit.* { return EXIT; } 
quit.* { return EXIT; } 
{NUM} {yylval.exp = strdup(yytext); return NUM;} 
{CHARACTER} { yylval.exp = strdup(yytext); return CHARACTER;} 
[+-] { yylval.exp = strdup(yytext); return OPR1; } 
[/*] { yylval.exp = strdup(yytext); return OPR2; } 
[()] { return yytext[0]; } 
\n { return NEWLINE; } 
. ; 
%% 

