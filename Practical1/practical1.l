%{
	int nol=0;
%}
%%
"\n" {nol++;}
. {}
%%
int yywrap(){return 1;}
int main(){
yyin=fopen("input.txt","r");
yylex();
printf("Number of Lines in the input file are: %d\n",nol);
return 0;
}

