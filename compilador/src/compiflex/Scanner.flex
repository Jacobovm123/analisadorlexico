package compiflex;
import java_cup.runtime.Symbol;

%%
%public
%class Scanner
%cup
%standalone
%line
%column

%{
registro abrir = new registro();
%}

CORCHETEAB              =       "["
CORCHETECE              =       "]"
PUNTOYCOMA              =       ";"
LLAVEAB                 =       "{"
LLAVECE                 =       "}"
IGUALDAD                =       "="
PARENTESISAB            =       "("
PARENTESISCE            =       ")"
MENORQUE                =       "<"
MAS                     =       "+"
POR                     =       "*"
COMA                    =       ","
MENOS                   =       "-"
public                  =       "public"
static                  =       "static"
long                    =       "long"
new                     =       "new"
int                     =       "int"
for                     =       "for"
return                  =       "return"
void                    =       "void"
String                  =       "String"



lineTerminator          =       \r|\n|\r\n
whitespace		=       {lineTerminator} | [ \t]
illegalCharacter	=       [^]

EXP_DIGITO              =       [0-9]
NUMERO                  =       {EXP_DIGITO}+

 EXP_ALPHA              =   [a-zA-Z][a-zA-Z0-9]*
           

%%
<YYINITIAL> {



 {NUMERO}          
                  {
                            System.out.println("NUMERO: " + yytext());
                            abrir.insertar_tokenss(1,"NUMERO","");
                            return new Symbol(sym.NUMERO, yyline, yycolumn, yytext());

                       }


 "["            {
                  System.out.println("CORCHETEAB: " + yytext());
                  abrir.insertar_tokenss(1,"CORCHETEAB","");
                  return new Symbol(sym.CORCHETEAB, yyline, yycolumn, yytext());

                }

 "]"          
                {
                  System.out.println("CORCHETECE: " + yytext());
                  abrir.insertar_tokenss(1,"CORCHETECE","");
                  return new Symbol(sym.CORCHETECE, yyline, yycolumn, yytext());

                }
 
";"
                
                {
                  System.out.println("PUNTOYCOMA: " + yytext());
                  abrir.insertar_tokenss(5,"PUNTOYCOMA","");
                  return new Symbol(sym.PUNTOYCOMA, yyline, yycolumn, yytext());
                }
"{"
                {
                  System.out.println("LLAVEAB: " + yytext());
                  abrir.insertar_tokenss(1,"LLAVEAB","");
                  return new Symbol(sym.LLAVEAB, yyline, yycolumn, yytext()); 
                }

"}"
                {
                   System.out.println("LLAVECE: " + yytext());
                   abrir.insertar_tokenss(1,"LLAVECE","");
                   return new Symbol(sym.LLAVECE, yyline, yycolumn, yytext()); 
                }
      


 "="            {
                    System.out.println("IGUALDAD: " + yytext());
                    abrir.insertar_tokenss(1,"IGUALDAD","");
                    return new Symbol(sym.IGUALDAD, yyline, yycolumn, yytext());

                }

"("
                {
                    System.out.println("PARENTESISAB: " + yytext());
                    abrir.insertar_tokenss(1,"PARENTESISAB",""); 
                    return new Symbol(sym.PARENTESISAB, yyline, yycolumn, yytext()); 
                }        
 


")"
                {
                    System.out.println("PARENTESISCE: " + yytext());
                    abrir.insertar_tokenss(1,"PARENTESISCE","");
                    return new Symbol(sym.PARENTESISCE, yyline, yycolumn, yytext()); 
                 }
  
"<"
                 {
                    System.out.println("MENORQUE: " + yytext());
                    abrir.insertar_tokenss(1,"MENORQUE","");
                    return new Symbol(sym.MENORQUE, yyline, yycolumn, yytext()); 
                  }
 "+"
                  {
                    System.out.println("MAS: " + yytext());
                    abrir.insertar_tokenss(1,"MAS",""); 
                    return new Symbol(sym.MAS, yyline, yycolumn, yytext()); 
                  }        

"*"
                  {
                    System.out.println("POR: " + yytext());
                    abrir.insertar_tokenss(1,"POR","");
                    return new Symbol(sym.POR, yyline, yycolumn, yytext()); 
                   }        
","
                   {
                     System.out.println("COMA: " + yytext());
                     abrir.insertar_tokenss(1,"COMA","");
                     return new Symbol(sym.COMA, yyline, yycolumn, yytext()); 
                   }        
 "-"
                   {
                      System.out.println("MENOS: " + yytext());
                      abrir.insertar_tokenss(1,"MENOS","");
                      return new Symbol(sym.MENOS, yyline, yycolumn, yytext());  
                   }  





"public"
                   {
                      System.out.println("PALABRA_RESERVADA: " + yytext());
                      abrir.insertar_tokenss(22,"PRIVATE","");
                      return new Symbol(sym.PALABRA_RESERVADA, yyline, yycolumn, yytext());
                   }



"class"
                   {
                       System.out.println("PALABRA_RESERVADA: " + yytext());
                       abrir.insertar_tokenss(2,"PALABRA_RFESERVADA","");
                       return new Symbol(sym.PALABRA_RESERVADA, yyline, yycolumn, yytext());
                   }

"static"
                   {
                        System.out.println("PALABRA_RESERVADA: " + yytext());
                        abrir.insertar_tokenss(3,"PALABRA_RESERVADA","");
                        return new Symbol(sym.PALABRA_RESERVADA, yyline, yycolumn, yytext());
                   }



"long"
                   {
                         System.out.println("PALABRA_RESERVADA: " + yytext());
                         abrir.insertar_tokenss(4,"PALABRA_RESERVADA","");
                         return new Symbol(sym.PALABRA_RESERVADA, yyline, yycolumn, yytext());
                    } 


"new"
                    {
                         System.out.println("PALABRA_RESERVADA: " + yytext());
                         abrir.insertar_tokenss(15,"PALABRA_RESERVADA","");
                         return new Symbol(sym.PALABRA_RESERVADA, yyline, yycolumn, yytext()); 
                    }




"int"
                    {
                          System.out.println("PALABRA_RESERVADA: " + yytext()); 
                          abrir.insertar_tokenss(6,"PALABRA_RESERVADA","");
                          return new Symbol(sym.PALABRA_RESERVADA, yyline, yycolumn, yytext());
                     }



"for"
                      {
                         System.out.println("PALABRA_RESERVADA: " + yytext());
                         abrir.insertar_tokenss(7,"PALABRA_RESERVADA","");
                         return new Symbol(sym.PALABRA_RESERVADA, yyline, yycolumn, yytext());
                       }


"return"
                       {
                         System.out.println("PALABRA_RESERVADA: " + yytext());
                         abrir.insertar_tokenss(8,"PALABRA_RESERVADA","");
                         return new Symbol(sym.PALABRA_RESERVADA, yyline, yycolumn, yytext());
                       }



"void"
                       {
                          System.out.println("PALABRA_RESERVADA: " + yytext());
                          abrir.insertar_tokenss(14,"PALABRA_RESERVADA","");
                          return new Symbol(sym.PALABRA_RESERVADA, yyline, yycolumn, yytext()); 
                        }

"x.length" 
                       {
                           System.out.println("PALABRA_RESERVADA: " + yytext());
                           abrir.insertar_tokenss(14,"PALABRA_RESERVADA","");
                           return new Symbol(sym.PALABRA_RESERVADA, yyline, yycolumn, yytext()); 
                       }

"System.out.println"
                       {
                            System.out.println("PALABRA_RESERVADA: " + yytext());
                            abrir.insertar_tokenss(14,"PALABRA_RESERVADA","");
                            return new Symbol(sym.PALABRA_RESERVADA, yyline, yycolumn, yytext()); 
                       }


"String"
                       {
                            System.out.println("PALABRA_RESERVADA: " + yytext());
                            abrir.insertar_tokenss(14,"PALABRA_RESERVADA","");
                            return new Symbol(sym.PALABRA_RESERVADA, yyline, yycolumn, yytext()); 
                       }










 {EXP_ALPHA}              {
                             System.out.println("ID: " + yytext());

   
                             abrir.insertar_simbolos(1,yytext());
           

                             return new Symbol(sym.ID, yyline, yycolumn, yytext());
                        }


{whitespace}           
                       {
                            System.out.println("Ignoring space");
		       }


}
{illegalCharacter}	


                        {
                            System.out.println("Lexical error (" + yytext() + ") at " + yyline + "," + yycolumn);
                            abrir.ERRORES(1, yytext(), "Error Lexico", yyline, yycolumn);
                            return new Symbol(sym.ERROR, yyline, yycolumn, yytext());
			}
