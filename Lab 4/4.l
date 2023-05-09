%{
#include <stdio.h>
int cap = 0, small = 0;
%}

%%

.;
%%

int yywrap(){};
int main(){
yylex();

return 0;
}
