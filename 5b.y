%{
#include<stdio.h>
#include<stdlib.h>
%}
%token  A  B
%%
s : A s B
 |
 ;
%%
main( )
{
printf("\nEnter string:\n");
yyparse();
printf("\nValidexp\n");
}
yyerror()
{
printf("\nInvalid expression\n");
exit(0);
}
