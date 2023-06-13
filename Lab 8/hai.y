%{
#include <stdio.h>
int yylex(void);
int yyerror(char *s);
%}

%token NUMBER NL
%left '+' '-'
%left '*' '/'

%%
E : T NL {
printf("Result = %d\n", $$);
return 0;
}
T : 
 T '+' T{$$ = $1 + $3;}
 | T '-' T {$$ = $1 - $3;}
 | T '*' T {$$ = $1 * $3;}
 | T '/' T {$$ = $1 / $3;}
 | '-' NUMBER {$$ = -$2;}
 | '('T')' {$$ = $2;}
 | NUMBER {$$ = $1;}
;
%%
int main(){
printf("Enter the expression\n");
yyparse();
}
int yyerror(char *s){
printf("\nExpression is Invalid\n");
}
