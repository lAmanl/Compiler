%{
#include<stdio.h>
int yylex(void);
int yyerror(char *s);
%}
%token A
%left '+' '-'
%left '*' '/'
%left '(' ')'

%%
S:T '*' {printf("Valid String");}
 |error {printf("Invalid String");}
 ;
T:U '+' T
 |U
 ;
U:'(' T ')'
 |A A
 |A
%%
int main(){
printf("Enter the Expression: ");
yyparse();
return 0;
}
int yyerror(char *s){
printf("Invalid Expression\n");
return 0;
}

