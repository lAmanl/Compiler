%{
#include<stdio.h>
#include<stdlib.h>
int yylex(void);
int yyerror(char *s);
%}

%token id num

%%
T: S{printf("Valid\n"); return 0;}
;
S: E'+'E
|E'-'E 
|E'*'E
|E'/'E 
|E'%'E 
|'('E')' 
;
E: id
| num
;
%%

int main(){
printf("Enter any valid expression: ");
yyparse();
}
int yyerror(char *s){
printf("Invalid\n");
exit(0);
}

