%{

#define COUNT_W_C wordCount++, charCount += yyleng

unsigned int charCount = 0, wordCount = 0, wordMCount = 0,
             wordmCount = 0, wordNCount = 0, sentCount = 0;

%}

wordm  [a-záéíóúàèìòùäëïöüâêîôûç]+
wordM  [A-ZÁÉÍÓÚÀÈÌÒÙÄËÏÖÜÂÊÎÔÛÇ]+
wordN  [0-9]+
word   [^. \t\n]+
eos    "."+
nochar [ \t\n]

%%

{wordN}  {COUNT_W_C; wordNCount++;}
{wordm}	 {COUNT_W_C; wordmCount++;}
{wordM}	 {COUNT_W_C; wordMCount++;}
{word}   {COUNT_W_C;}
{eos}    {sentCount++; charCount += yyleng;}
{nochar} /*ignorar*/

%%

int yywrap() { return 1; }

int main(void)
{
	yylex();
	printf("#c=%d, #w=%d, #wM=%d, #wm=%d, #wN=%d, #s=%d\n",
		charCount, wordCount, wordMCount, wordmCount, wordNCount, sentCount);
}
