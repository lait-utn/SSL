%option noyywrap
%{  
	#include"Parser.tab.h"
	#include<string.h>
	#include<ctype.h> 
	extern YYSTYPE yylval;
%}

%%
[ \t]
"vars"							{ return Vars; }
[A-Za-z] 						{ char* str = strdup(yytext); 
								  yylval.id = toupper((int)*str) - 'A'; 
								  free(str);
								  return Identifier; }
[0-9]+ 							{ yylval.num = atoi(yytext); return Number;}
"=" 							{ return Assign; }
"+"								{ return Addition; }
"-"								{ return Substraction; }
"*"								{ return Multiplication; }
"("								{ return LPar; }
")"								{ return RPar; }
"/"								{ return Division; }
"\n" 							{ return EndOfExpr; }
.
%%
