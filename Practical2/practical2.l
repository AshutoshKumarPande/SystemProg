%{
%}
%%
[a-z] {char ch = yytext[0];
        if(ch=='x'){
            ch='a';}
        else if(ch=='y'){
            ch='b';}
        else if(ch=='z'){
            ch='c';}
        else{
            ch=ch+3;}
        printf("%c",ch);}
[A-Z] {char ch = yytext[0];
        if(ch=='X'){
            ch='A';}
        else if(ch=='Y'){
            ch='B';}
        else if(ch=='Z'){
            ch='C';}
        else{
            ch=ch+3;}
        printf("%c",ch);}
. {}
%%
int yywrap(){return 1;}
int main(){
printf("Enter the string: ");
yylex();
return 0;}
