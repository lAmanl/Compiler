//AMAN SHARMA - 21BCE5769
%{
#include <stdio.h>
int yylex(void);
int yyerror(char* s);
%}

%token F G L
%%
E: E L {printf("Valid Expression\n"); return 0;};
E: F E G
|;
%%

int main(){
printf("\nEnter the Expression:\n");
yyparse();
return 0;
}
int yyerror(char* s){
printf("\n Invalid Expression\n");
}
