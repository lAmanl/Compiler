%{
#include <stdio.h>
int yylex(void);
int yyerror(char* s);
%}

%token START END

%%
S: expr { printf("Valid \n"); }
| error { printf("Invalid \n"); }
;
expr: START inner END
;
inner: inner '1'
| inner '0'
|
;
%%

int yyerror(char* s){
printf("\nNot Valid\n");
}
int main(){
printf("\nGive input string:\n");
yyparse();
return 0;
}
