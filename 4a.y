%{
	#include<stdio.h>
	#include<stdlib.h>
%}
%token NUMBER ALPHA
%left '+' '-'
%left '*' '/'
%%
e:e '+' e
    | e '-' e
    | e '/' e
    | e '*' e
    | '(' e ')'
    |NUMBER
    |ALPHA
    ;  
%% 
 int main()
{
printf("Enter the arithmetic expression:\n");
yyparse();
printf("Valid arithmetic expression\n");
return 0;
}

yyerror()
{
printf("Invalid arithmentic expression\n");
exit(0);
}
