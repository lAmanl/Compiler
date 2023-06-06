%{
#include <stdio.h>
int yylex(void);
int yyerror(char* s);
%}

%token NUMBER
%left '+' '-'
%left '*' '/'
%left '(' ')'

%%
S: E{printf("Valid Expression"); return 0;};
E:E'+'E
|E'-'E
|E'*'E
|E'/'E
|'('E')'
| NUMBER
;
%%

int main(){
printf("\nEnter the Expression:\n");
yyparse();
return 0;
}
int yyerror(char* s){
printf("\n Invalid Expression");
}
