/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

/**
 *
 * @author admin
 */
public class DBContext {

    private static final String jdbcURL = "jdbc:mysql://localhost:3306/swp391";
    private static final String jdbcUsername = "trongan";
    private static final String jdbcPassword = "trongan2000";

    public Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        return connection;
    }
    
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        DBContext db = new DBContext();
        Connection conn = db.getConnection();
        if (conn != null){
            System.out.println("ngon");
        }else{
            System.out.println("thua");
        }
    }
}

