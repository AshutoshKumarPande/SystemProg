%{
#include <stdio.h>
#include <string.h>

int longest = 0;
char longestString[30];
%}
%%
[a-zA-Z]+ {if(yyleng>longest){
    strcpy(longestString,yytext);}}
%%
int yywrap(){return 1;}
int main(){
yylex();
    printf("The longest string is %s \n", longestString);
return 0;}
