%{
#include <stdio.h>
#include <stdlib.h> 
#include <string.h>
int yylex();
int yyerror(char *s);
char *prefix(char *s1, char *s2, char *s3);
%}

%union{
char *exp;
int val;
}

%token CHAR NL PLUS MINUS DIV MUL
%left PLUS MINUS DIV MUL
%start S

%% 
S: 
|S exp NL {printf("%s\n>> ",$<exp>2); return 0;}
;
exp: exp PLUS exp {$<exp>$ = prefix($<exp>2,$<exp>1,$<exp>3);}
exp: exp MINUS exp {$<exp>$ = prefix($<exp>2,$<exp>1,$<exp>3);}
exp: exp DIV exp {$<exp>$ = prefix($<exp>2,$<exp>1,$<exp>3);}
exp: exp MUL exp {$<exp>$ = prefix($<exp>2,$<exp>1,$<exp>3);}
|'(' exp ')' {$<exp>$ = $<exp>2;}
|CHAR {$<exp>$ = $<exp>1;}
;
%%

int main(){
    yyparse();
}
int yyerror(char *msg){
    return printf("error YACC: %s\n", msg);
}
char *prefix(char *s1, char *s2, char *s3){
    int len = strlen(s1) + strlen(s2) + strlen(s3) + 1;
    char *s = malloc(sizeof(char)*len);
    int i = 0;
    for(int j = 0; s1[j] != '\0'; j++)
    	s[i++] = s1[j];
    for(int j = 0; s2[j] != '\0'; j++)
    	s[i++] = s2[j];
    for(int j = 0; s3[j] != '\0'; j++)
    	s[i++] = s3[j];
    s[i] = '\0';
    return s;
}
