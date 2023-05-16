%{
%}
%s A DEAD
%%
<INITIAL>1 BEGIN A;
<INITIAL>0 BEGIN INITIAL;
<INITIAL>[^01\n] BEGIN DEAD;
<INITIAL>\n BEGIN INITIAL;{printf("Accepted\n");}

<A>0 BEGIN INITIAL;
<A>1 BEGIN A;
<A>[^01\n] BEGIN DEAD;
<A>\n BEGIN INITIAL;{printf("Not Accepted\n");}

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL;{printf("Invalid\n");}
%%
int yywrap(){return 1;}
int main(){
printf("Enter the string: ");
yylex();
return 0;
}
