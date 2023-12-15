%{ #include<stdio.h>
char ch;
char i,j;
%}

%%
[a-z]* {int len=yyleng;
        for(int i=(len-1);i>=0;i--){
            for(j=0;j<=i;j++){
                printf("%c",yytext[j]);}
            printf("\n");}
        }
%%
int yywrap(){return 1;}
int main()
{
 printf("Enter the string: ");
 yylex();
 return 0;
}
