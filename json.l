%{
/*
test comment
*/
int indentation_level = 0;
void print_token(char *token);
%}

curly_open "{"
curly_close "}"
square_open "["
square_close "]"

%%
[\t\n] {} /* drop all linebreaks and tabs */
{curly_open}|{square_open}  { print_token(yytext); indentation_level++;}
{curly_close}|{square_close} { indentation_level--; print_token(yytext); }

[^,\[\]\{\}\n\t]+,? { print_token(yytext);}
. { printf("No that's bad: %s", yytext);}
%%

int main(){
	yylex();
}

void print_token(char *token){
	for(int i=0; i<indentation_level; i++){
		printf("\t");
	}
	printf("%s\n", token);
}
