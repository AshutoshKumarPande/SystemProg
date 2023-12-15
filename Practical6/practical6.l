%{
int word=0;
int character=0;
int spaces=0;
int lines=0;
%}
%%
[a-zA-Z]+ {word++;character+=yyleng;}
[\n] {lines++;}
[\t| ]+ {spaces++;}
. {;}
%%
int yywrap(){return 1;}
int main(){
yyin=fopen("input.txt","r");
yylex();
printf("Number of words: %d\n",word);
printf("Number of character: %d\n",character);
printf("Number of spaces: %d\n",spaces);
printf("Number of lines: %d\n",lines);
return 0;}
