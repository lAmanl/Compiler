%{
#include <stdio.h>
int yylex(void);
int yyerror(char *s);
%}

%token ID NL
%left '+' '-' '*' '/'

%%
S: E NL {printf("\n"); return 0;}
;
E: E'+'E {printf("+");}
| E'*'E {printf("*");}
| E'-'E {printf("-");}
| E'/'E {printf("/");}
| '('E')'
| ID {printf("%c", yylval);}
;
%%

int main(){
    yyparse();
}
int yyerror(char *msg){
    return printf("error YACC: %s\n", msg);
}
