%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int yylex(void);
int yyerror(char *s);
%}

%token l si co t power sq num
%left '+' '-' '*' '/' '^'

%%
S: E{printf("Result: %d\n", $1);};
E: E'+'E {$$=$1+$3;}
| E'-'E {$$=$1+$3;}
| E'*'E {$$=$1+$3;}
| E'/'E {$$=$1+$3;}
| E'%'E {$$=$1+$3;}
| '('E')' {$$=$2;}
| l'('E')' {$$=log10($3);}
| si'('E')' {$$=sin($3);}
| co'('E')' {$$=cos($3);}
| t'('E')' {$$=tan($3);}
| sq'('E')' {$$=sqrt($3);}
| num {$$=$1;}
;
%%
int main(){
printf("Enter the value: ");
yyparse();
}
int yyerror(char *s){
printf("Invalid\n");
}
