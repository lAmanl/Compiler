// AMAN SHARMA - 21BCE5769
%{
 #include<stdio.h>
 #include<stdlib.h>
 int yylex(void);
 int yyerror(char *s);
%}
%token A N
%%
st : S {printf("Valid\n"); return 0;}
;
S : X | Y | Z | ;
X : E '&''&' E S;
Y : E '|''|' E S;
Z : '^' E S;
;
E : A
| N
;
%%
int main(){
printf("Enter the Expressiion\n");
yyparse();
}
int yyerror(char *s){
printf("Invalid\n");
exit(0);
}

