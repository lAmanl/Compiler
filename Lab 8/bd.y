%{
  #include<stdio.h>
  #include<stdlib.h>
  int yylex(void);
  int yyerror(char *s);
%}

%token ZERO ONE

%%
N: L {printf("Result: %d\n", $$);}
L: L B {$$=$1*2+$2;}
| B {$$=$1;}
B:ZERO {$$=$1;}
|ONE {$$=$1;};
%%
  
int main()
{
 yyparse();
}
  
int yyerror(char *s)
{
 printf("Invalid Expression\n");
}
  

