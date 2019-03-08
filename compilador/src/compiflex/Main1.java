/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package compiflex;

import compiflex.Scanner;
import compiflex.Parser;
import java.io.FileWriter;
import java.io.IOException;
import java.io.StringReader;

/**
 *
 * @author Josue
 */
public class Main1 {
   public static final String OUTPUT_FILE = "C:\\Users\\Jacobo\\Desktop\\jflex-1.6.1\\output.txt";
    
   
   
   
   
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
     
     System.out.println("Ingrese una expresión aritmética utilizando operadores (+ - * / %). Ejemplo: 13%(1+2)=");
        System.out.print("> ");
        
        java.util.Scanner scanner = new java.util.Scanner(System.in);
        String arithmeticExpression = scanner.nextLine();
        
        System.out.printf("Traduciendo \"%s\"...\n", arithmeticExpression);
        
        Scanner myScanner = new Scanner(new StringReader(arithmeticExpression));
        
        Parser myParser = new Parser(myScanner);
        
        try {
            myParser.setWriter(new FileWriter(OUTPUT_FILE));
        } catch (IOException ex) {
            System.out.println("ERROR: " + ex.getMessage());
        }
        
        try {
            boolean done = Boolean.parseBoolean(myParser.parse().value.toString());
            
            System.out.println(
                    (done) 
                            ? "La expresión se ha traducido satisfactoriamente. Buscar archivo de salida en: " + OUTPUT_FILE 
                            : "Error durante la traducción."
            );
        } catch (Exception ex) {
            System.out.println("ERROR: " + ex.getMessage());
        } finally {        
            System.out.println("Programa terminado!!!");
        }     




//  args = new String[] { "D:\\Septimo Ciclo\\COMPILADORES\\Archivos Compiladores\\flexprueba.txt" };
        
    
        args = new String[] { "C:\\Users\\Jacobo\\Desktop\\jflex-1.6.1\\mediano.txt" };
        
        Scanner.main(args);
        
        
        
    }
    
}
