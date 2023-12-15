%{
    #include <stdio.h>
    int k=0,i=0,f=0,op=0,comments=0;
%}
%%

"//"[a-zA-Z0-9 _]* {printf("Comments\n");comments++;}
"include"|"for"|"while"|"if"|"else"|"else if"|"int"|"float"|"bool" {printf("Keyword\n");k++;}
[0-9]+[.][0-9]+ {printf("float\n");f++;}
[0-9]+ {printf("Integer\n");i++;}
[+-=/*&%!] {printf("Operator\n");op++;}

%%
int yywrap(){return 1;}
int main(){
printf("Enter the input: ");
yylex();
printf("Total Number of Comments: %d\n",comments);
printf("Total Number of Keywords: %d\n",k);
printf("Total Number of Floating point numbers: %d\n",f);
printf("Total Number of Integers: %d\n",i);
printf("Total Number of Operators: %d\n",op);
return 0;}
