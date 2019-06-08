%{
/*
test comment
*/
%}

%%
[A-Za-z]+ { printf("%s", yytext);}
\n { printf("<CR>\n"); }
.
%%

