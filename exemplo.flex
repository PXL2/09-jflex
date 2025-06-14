/* Alguns métodos e variáveis disponíveis:
 * int yyline: armazena o número da linha atual.
 * int yycolumn: armazena o número da coluna atual na linha atual.
 * String yytext(): método que retorna a sequência de caracteres que foi casada com a regra.
 * int yylength(): método que retorna o comprimento da sequência de caracteres que foi casada com a regra.
 */

/* 
 * Definição: seção para código do usuário. 
 */

import token.Token;

%%

/* 
 * Opções e Declarações: seção para diretivas e macros. 
 */

// Diretivas:
%standalone         // Execução independente do analisador sintático.
%line               // Permite usar yyline.
%column             // Permite usar yycolumn.
%class Scanner      // Troca o nome da classe Yylex para Scanner.

%{
  Token token;
%}

// Macros:
BRANCO = [\n| |\t|\r]
PONTOEVIRGULA = ";"
VIRGULA = ","
DOISPONTOS = ":"
PONTO = "."
ABREPARENTESE = "("
FECHAPARENTESE = ")"
ABRECHAVE = "{"
FECHACHAVE = "}"
ABRECOLCHETE = "["
FECHACOLCHETE = "]"
ASPAS = "'"
SOMA = "+"
MENORQUE = "<"
MENORQUEOUIGUAL = "<="
MULTIPLICA = "*"
SUBTRAI = "-"
DIVIDE = "/"
ATRIBUICAO = ":="
ATRIBUI = "="
ADICIONA = "++"
SOMAAESQ = "+="
INTEIRO = 0|[1-9][0-9]*
ID = [_|a-z|A-Z][a-z|A-Z|0-9|_]*

%%

/*  
 * Regras e Ações Associadas: seção de instruções para
 * o analisador léxico. 
 */
{ABREPARENTESE}  { token = new Token(yyline, yycolumn, yytext(), "Abre parêntese"); token.imprimir(); }
{FECHAPARENTESE} { token = new Token(yyline, yycolumn, yytext(), "Fecha parêntese"); token.imprimir(); }
{ABRECHAVE}      { token = new Token(yyline, yycolumn, yytext(), "Abre chave"); token.imprimir(); }
{FECHACHAVE}     { token = new Token(yyline, yycolumn, yytext(), "Fecha chave"); token.imprimir(); }
{ABRECOLCHETE}   { token = new Token(yyline, yycolumn, yytext(), "Abre colchete"); token.imprimir(); }
{FECHACOLCHETE}  { token = new Token(yyline, yycolumn, yytext(), "Fecha colchete"); token.imprimir(); }
{PONTOEVIRGULA}  { token = new Token(yyline, yycolumn, yytext(), "Ponto e vírgula"); token.imprimir(); }
{VIRGULA}        { token = new Token(yyline, yycolumn, yytext(), "Virgula"); token.imprimir(); }
{DOISPONTOS}     { token = new Token(yyline, yycolumn, yytext(), "Dois pontos"); token.imprimir(); }
{PONTO}          { token = new Token(yyline, yycolumn, yytext(), "Ponto"); token.imprimir(); }
{ASPAS}          { token = new Token(yyline, yycolumn, yytext(), "Aspas"); token.imprimir(); }
{ATRIBUICAO}     { token = new Token(yyline, yycolumn, yytext(), "Atribuição"); token.imprimir(); }
{ATRIBUI}        { token = new Token(yyline, yycolumn, yytext(), "Atribui"); token.imprimir(); }   
"if"             { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada if"); token.imprimir(); }
"else"           { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada else"); token.imprimir(); }
"public"         { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada public"); token.imprimir(); }
"class"          { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada class"); token.imprimir(); }
"static"         { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada static"); token.imprimir(); }
"void"           { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada void"); token.imprimir(); }
"main"           { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada main"); token.imprimir(); }
"system"         { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada system"); token.imprimir(); }
"out"            { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada out"); token.imprimir(); }
"println"        { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada println"); token.imprimir(); }
"string"         { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada string"); token.imprimir(); }
"args"           { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada args"); token.imprimir(); }
"for"            { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada for"); token.imprimir(); }
"int"            { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada int"); token.imprimir(); }
"while"          { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada while"); token.imprimir(); }
"printf"         { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada printf"); token.imprimir(); }
"return"         { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada return"); token.imprimir(); }
"writeln"        { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada writeln"); token.imprimir(); }
"end"            { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada end"); token.imprimir(); }
"delta"          { token = new Token(yyline, yycolumn, yytext(), "Identificador delta"); token.imprimir(); }
"contador"       { token = new Token(yyline, yycolumn, yytext(), "Identificador contador"); token.imprimir(); }
"begin"          { token = new Token(yyline, yycolumn, yytext(), "Identificador begin"); token.imprimir(); }
"x1"             { token = new Token(yyline, yycolumn, yytext(), "Identificador x1"); token.imprimir(); }
"x2"             { token = new Token(yyline, yycolumn, yytext(), "Identificador x2"); token.imprimir(); }
"sqrt"           { token = new Token(yyline, yycolumn, yytext(), "Identificador sqrt"); token.imprimir(); }
"then"           { token = new Token(yyline, yycolumn, yytext(), "Palavra reservada then"); token.imprimir(); }
{BRANCO}         { token = new Token(yyline, yycolumn, yytext(), "Espaço em branco"); token.imprimir(); }
{ID}             { token = new Token(yyline, yycolumn, yytext(), "Identificador"); token.imprimir(); }
{SOMA}           { token = new Token(yyline, yycolumn, yytext(), "Operador de soma"); token.imprimir(); }
{ADICIONA}       { token = new Token(yyline, yycolumn, yytext(), "Operador de adiciona"); token.imprimir(); }
{SOMAAESQ}       { token = new Token(yyline, yycolumn, yytext(), "Operador de soma a esquerda"); token.imprimir(); }
{MENORQUE}       { token = new Token(yyline, yycolumn, yytext(), "Operador de menor que"); token.imprimir(); }
{MENORQUEOUIGUAL} { token = new Token(yyline, yycolumn, yytext(), "Operador de menor que ou igual"); token.imprimir(); }
{MULTIPLICA}     { token = new Token(yyline, yycolumn, yytext(), "Operador de multiplica"); token.imprimir(); }
{DIVIDE}         { token = new Token(yyline, yycolumn, yytext(), "Operador de divide"); token.imprimir(); }
{SUBTRAI}        { token = new Token(yyline, yycolumn, yytext(), "Operador de subtrai"); token.imprimir(); }
{INTEIRO}        { token = new Token(yyline, yycolumn, yytext(), "Número inteiro"); token.imprimir(); }
.                { token = new Token(yyline, yycolumn, yytext(), "Caracter inválido"); token.dispararExcecao(); }