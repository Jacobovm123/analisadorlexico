
package compiflex;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.Vector;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.util.Date;

public class registro 
{
   

String VARIABLES;
String VARIABLEILEGAL;
int LINEA;
int COLUMNA;
int CODERROR;

public String classfor="oracle.jdbc.driver.OracleDriver";
public String url="jdbc:oracle:thin:@localhost:1521:XE";
public String usuario="compiladores";
public String clave="1234";
    
public Connection con=null;
public PreparedStatement pr=null;
public ResultSet rs=null;



public void insertar_tokenss(int ID, String token, String valor )
{
    String sql="INSERT INTO TOKENS(ID,TOKEN, ID_IDENTIFICADOR) VALUES(?,?,?)";
    try
    {
        Class.forName(classfor);
        con=DriverManager.getConnection(url, usuario, clave);
         
        pr=con.prepareStatement(sql);
        pr.setInt(1, ID);    
        pr.setString(2, token);
        pr.setString(3, valor);
        pr.executeQuery();
        
    }
    catch(Exception ev)
    {
       
     }
    
    
}//cerrar isnertar
//terminacion de  ingreso de inversion


public void insertar_simbolos(int ID, String SIMBOLO )
{
    String sql="INSERT INTO TABLASIMBOLO(ID,SIMBOLO) VALUES(?,?)";
    try
    {
        Class.forName(classfor);
        con=DriverManager.getConnection(url, usuario, clave);
         
        pr=con.prepareStatement(sql);
        pr.setInt(1, ID);    
        pr.setString(2, SIMBOLO);
        
        
        pr.executeQuery();
        
    }
    catch(Exception ev)
    {
       
     }
    
    
}//cerrar isnertar

public void ERRORES(int CODERROR, String VARIABLES, String VARIABLEILEGAL ,int LINEA ,int COLUMNA )
{
    String sql="INSERT INTO ERRORES(CODERROR,VARIABLES, VARIABLEILEGAL,LINEA,COLUMNA) VALUES(?,?,?,?,?)";
    try
    {
        Class.forName(classfor);
        con=DriverManager.getConnection(url, usuario, clave);
         
        pr=con.prepareStatement(sql);
        pr.setInt(1, CODERROR);    
        pr.setString(2, VARIABLES);
        pr.setString(3, VARIABLEILEGAL);
          pr.setInt(4, LINEA);
            pr.setInt(5, COLUMNA); 
        pr.executeQuery();
        
    }
    catch(Exception ev)
    {
       
     }
    
    
}//c


 public Vector<registro> buscar(){
        Vector<registro> vecPro=new Vector<registro>();
        String sql="SELECT CODERROR R,VARIABLES,VARIABLEILEGAL,LINEA,COLUMNA \n" +
"FROM  ERRORES\n" +
"\n" +
"---WHERE ERRORES.R = ERRORES.R\n" +
"GROUP BY CODERROR,VARIABLES,VARIABLEILEGAL,LINEA,COLUMNA\n" +
"order by R ASC\n" +
"  ";
       
        try{
            Class.forName(classfor);
            con=DriverManager.getConnection(url, usuario,clave);
            pr=con.prepareStatement(sql);
         
            rs=pr.executeQuery();
            while(rs.next()){
                registro pro=new registro();
         
                pro.setCODERROR(rs.getInt("CODERROR"));
                pro.setVARIABLES(rs.getString("VARIABLES"));
               pro.setVARIABLEILEGAL(rs.getString("VARIABLEILEGAL"));
                  
                pro.setLINEA(rs.getInt("LINEA")); 
                
               pro.setCOLUMNA(rs.getInt("COLUMNA"));
           
              
                vecPro.add(pro);
            }
            
            
            
        }catch(Exception ex){
            ex.printStackTrace();
            
        }finally{
            try{
                rs.close();
                pr.close();
                con.close();
            }catch(Exception ex){

            }
        }
        return vecPro;
    }
    


    public String getVARIABLES() {
        return VARIABLES;
    }

    public void setVARIABLES(String VARIABLES) {
        this.VARIABLES = VARIABLES;
    }

    public String getVARIABLEILEGAL() {
        return VARIABLEILEGAL;
    }

    public void setVARIABLEILEGAL(String VARIABLEILEGAL) {
        this.VARIABLEILEGAL = VARIABLEILEGAL;
    }

    public int getLINEA() {
        return LINEA;
    }

    public void setLINEA(int LINEA) {
        this.LINEA = LINEA;
    }

    public int getCOLUMNA() {
        return COLUMNA;
    }

    public void setCOLUMNA(int COLUMNA) {
        this.COLUMNA = COLUMNA;
    }

    public int getCODERROR() {
        return CODERROR;
    }

    public void setCODERROR(int CODERROR) {
        this.CODERROR = CODERROR;
    }


}