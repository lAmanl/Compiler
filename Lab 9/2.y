%{
#include <stdio.h>
#include <math.h>
int yylex(void);
int yyerror(char *s);
void btd(int num);
%}
%token num
%%
S:num{btd($1); return 0;}
;
%%
void btd(int bin){
int res=0, j=0;
while(bin>0){
res+=bin%10*pow(2,j);
bin=bin/10;
j++;
}
printf("In Decimal: %d\n", res);
}
int main(){
printf("Enter the Binary number: ");
yyparse();
return 0;
}
int yyerror(char *s){
printf("Invalid\n");
}
