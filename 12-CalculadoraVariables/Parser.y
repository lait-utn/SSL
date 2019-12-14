%{
	#include<stdio.h>
	#include<stdlib.h>
	#include<string.h>
	
	int vars[26];
	// Para sacar los warnings
	int yylex();
	void yyerror(const char *);
	void show_vars();
%}

%union {
	int id;
	int num;
};

%token<num> Number 
%token<num> Identifier
%token Addition Substraction Multiplication Division LPar RPar EndOfExpr Assign Vars
%type<num> calculate arithmetic_expr term factor

%%
program: %empty
 	   | program error      EndOfExpr 
	   | program expression EndOfExpr            
	   | program EndOfExpr							{ printf("Exit called. Good bye!\n"); return 0; }
	   ;					

expression: showVars   
	      | calculate
	      | assignation
	      ;

showVars: Vars										{ show_vars(); }
	    ;

calculate: arithmetic_expr	 						{ printf("Result: %d\n", $$); }									
	   	 ;

assignation: Identifier Assign Number				{ vars[$1] = $3; }
		   ;

arithmetic_expr: term
		  	   | arithmetic_expr Addition term 		{ $$ = $1 + $3; }
		  	   | arithmetic_expr Substraction term 	{ $$ = $1 - $3; }
		  	   ;

term: factor
	| term Multiplication factor 					{ $$ = $1 * $3; }
	| term Division factor 							{ $$ = $1 / $3; }
	;

factor: Number
	  | Identifier									{  $$ = vars[$1]; }
	  | LPar arithmetic_expr RPar					{  $$ = $2;       }
	  ;
%%

void yyerror(const char *s){ 
	printf("Error: '%s'.\n", s); 
}

void show_vars(){
	for (int i = 0; i < 26; i++) {
		printf("%c = %i\n",(unsigned char) i + 'A', vars[i]);
	}
}

