/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Mateus
 */
public class ConnectionFactory {
    public static Connection getConnection(){
            Connection c = null;
        try{
            carregaDriver();
            c = DriverManager.getConnection("jdbc:postgresql://localhost/academia", "postgres", "senha");
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }finally{
            System.out.println("Tentando");
        }
        return c;
    }
    
    private static void carregaDriver(){
        try{
            Class.forName("org.postgresql.Driver");
        }catch(ClassNotFoundException e){
            System.out.println(e.getMessage());
        }
    }
}
