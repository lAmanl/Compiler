%s X Y Z D
%%
<INITIAL>0 BEGIN X;
<INITIAL>1 BEGIN Y;
<INITIAL>\n BEGIN INITIAL;{printf("Invalid\n");}
<INITIAL>[^01\n] BEGIN D;

<X>0 BEGIN INITIAL;
<X>1 BEGIN Z;
<X>\n BEGIN INITIAL;{printf("Invalid\n");}
<X>[^01\n] BEGIN D;

<Y>1 BEGIN INITIAL;
<Y>0 BEGIN Z;
<Y>[^01\n] BEGIN D;
<Y>\n BEGIN INITIAL;{printf("Valid\n");}

<Z>1 BEGIN X;
<Z>0 BEGIN Y;
<Z>\n BEGIN INITIAL;{printf("Invalid\n");}
<Z>[^01\n] BEGIN D;

<D>[^\n] BEGIN D;
<D>\n BEGIN INITIAL;{printf("Invalid\n");}
%%

int yywrap(){return 1;}
int main(){
printf("Enter the grammar: ");
yylex();
return 0;
}
