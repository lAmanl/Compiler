%{
%}
%s A B C DEAD
%%
<INITIAL>0 BEGIN A;
<INITIAL>1 BEGIN B;
<INITIAL>\n BEGIN INITIAL;{printf("Not Accepted\n");}
<INITIAL>[^01\n] BEGIN DEAD;

<A>0 BEGIN INITIAL;
<A>1 BEGIN C;
<A>\n BEGIN INITIAL;{printf("Not Accepted\n");}
<A>[^01\n] BEGIN DEAD;

<B>0 BEGIN C;
<B>1 BEGIN INITIAL;
<B>\n BEGIN INITIAL;{printf("Accepted\n");}
<B>[^01\n] BEGIN DEAD;

<C>0 BEGIN B;
<C>1 BEGIN A;
<C>\n BEGIN INITIAL;{printf("Not Accepted\n");}
<C>[^01\n] BEGIN DEAD;

<DEAD>[^\n] BEGIN DEAD;
<DEAD>\n BEGIN INITIAL;{printf("Invalid\n");}
%%
int yywrap(){return 1;}
int main(){
printf("Enter the string: ");
yylex();
return 0;
}
