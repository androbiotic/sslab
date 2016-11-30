%{
	#include "y.tab.h"
%}
%%
[a-zA-Z]+ {return C;}
[0-9]+ {return N;}
. {return yytext[0];}
%%
