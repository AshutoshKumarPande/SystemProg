%{
    int identifiers = 0;
%}
%%
[#].* { ; } // preprocessor directives
[ |\n|\t] { ; } // whitespaces
[,|;|"("|")"|"{"|"}"|"\["|"\]"] { ; } // brackets, delimiters
"//".* { ; } // single line comment
-?[0-9]+("."[0-9]+)? { ; } // numbers
void|int|main|char|for|while|continue|switch|case|printf|break|if|else|double|return|true|false { ; } // keywords
"<="|">="|"!="|"=="|"<"|">" { ; }  // relational operators
"&"|"|"|"^"|"<<"|">>"|"~" { ; }  // bitwise operators
"&&"|"||"|"!" { ; } // logical operators
"++"|"--" { ; } // postfix/prefix operators
"="|"+"|"-"|"*"|"/"|"%" { ; } // other operators
[']([^\\\']|\\.)?['] { ; } // characters
["]([^\\\"]|\\.)*["] { ; } // strings
[a-zA-Z_]+[a-zA-Z0-9_]* { identifiers++; printf("%s <- identifier\n", yytext); } // identifiers
%%
int yywrap() {
  return 1;
}
int main() {
  yyin = fopen("test.c", "r");
  yylex();
  printf("\nnumber of C identifiers: %d\n", identifiers);
  return 0;
}


