/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author lenovo
 */
public class DbContext {
    
    public static Connection getConnection(){
         Connection connection = null;
         try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String user = "sa";//change your user name here
            String pass = "1234";//Change your password here
            String url = "jdbc:sqlserver://localhost:1433;databaseName=zingmp3";
            connection = DriverManager.getConnection(url,user,pass);
        } catch (ClassNotFoundException | SQLException ex) {
        }
        
         return connection;
    }
}
