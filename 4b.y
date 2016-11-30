%{
	#include<stdio.h>
	#include<stdlib.h>
%}
%token C N
%%
s: C s1;
s1: N s1
| C s1
| ;
%%

int main()
{
printf("Enter a string:");
if(yyparse()==0)
printf("Valid Expression\n");
return 0;
}

yyerror()
{
printf("Invalid String\n");
exit(0);
}
