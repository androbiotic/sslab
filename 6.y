%{
	#include<stdio.h>
	#include<stdlib.h>
%}
%token A B
%%
s: A A A A A A A A A A s1 B ;
s1: A s1
|
;
%%

main()
{
printf("Enter the Expression\n");
yyparse();
printf("Valid\n");
}

yyerror()
{
printf("Invalid expression\n");
exit(0);
}
