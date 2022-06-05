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
public class ConnectionUtils {
    ResourceBundle bundle = ResourceBundle.getBundle("resources.database");

    public Connection getConnection() {
        try {
            Class.forName(bundle.getString("drivername"));
            String url = bundle.getString("url");
            String username = bundle.getString("username");
            String password = bundle.getString("password");
            Connection connection = DriverManager.getConnection(url, username, password);
            return connection;
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println(ex);
        }
        return null;
    }
    
    public static void main(String[] args) throws SQLException {
        ConnectionUtils c = new ConnectionUtils();
        System.out.println(c.getConnection().getCatalog());
    }
}
