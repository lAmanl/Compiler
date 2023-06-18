%s X D
%%
<INITIAL>1 BEGIN X;
<INITIAL>0 BEGIN INITIAL;
<INITIAL>\n BEGIN INITIAL;{printf("Valid\n");}
<INITIAL>[^01\n] BEGIN D;

<X>1 BEGIN X;
<X>0 BEGIN INITIAL;
<X>\n BEGIN INITIAL;{printf("Invalid\n");}
<X>[^01\n] BEGIN D;

<D>\n BEGIN INITIAL;{printf("Invalid\n");}
<D>[^\n] BEGIN D;
%%

int yywrap(){return 1;}
int main(){
printf("Enter the grammar: ");
yylex();
return 0;
}
