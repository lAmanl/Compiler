%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
int yylex(void);
int yyerror(char *s);
int count = 0;
%}
%union{
float f;
}
%token <f>ZERO <f>ONE <f>TWO <f>THREE <f>FOUR <f>FIVE <f>SIX <f>SEVEN NL
%type <f>N <f>L <f>R <f>B
%%
E: N NL {printf("Result = %f\n", $1); return 0;}
N: L '.'R 
L: L B  {$$ = $1*8 + $2;}
| B {$$ = $1;}
R: R B {$$ = ($1*8 + $2)/pow(8,count);}
| B {$$ = $1; count++;}
B: ZERO {$$ = 0; count = 1;}
| ONE {$$ = 1; count = 1;}
| TWO {$$ = 2; count = 1;}
| THREE {$$ = 3; count = 1;}
| FOUR {$$ = 4; count = 1;}
| FIVE {$$ = 5; count = 1;}
| SIX {$$ = 6; count = 1;}
| SEVEN {$$ = 7; count = 1;}
;
%%
int main() {
printf("Enter the Octal Number\n");
yyparse();
}
int yyerror(char* s) {
printf("Expression is invalid\n");
}


