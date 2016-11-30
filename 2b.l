%{
int flag=0;
%}
%%
(" "[aA][nN][dD]" ")|(" "[bB][uU][tT]" ")|(" "[oO][rR]" ")|(" "[nN][oO][tT]" ") { flag=1; }
%%
int main()
{
printf("\nEnter the sentence:\n");
yylex();
if(flag==1)
printf("compound sentence.");
else
printf("simple sentence.");
return 0;
}
