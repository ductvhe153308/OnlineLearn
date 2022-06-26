/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import utils.DBContext;
import model.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;

/**
 *
 * @author LENOVO
 */
public class RegisterDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Account checkAccountExist(String email) {
        String query = "select * from onlinelearning.account where email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public void register(Account a) {
                + "`token`,\n"
        String query = "";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, a.getFirst_name());
            ps.setString(2, a.getLast_name());
            ps.setString(3, a.getEmail());
            ps.setString(4, a.getPassword());
            ps.setString(5, a.getPhone());
            ps.setString(6, a.getUser_title());
            ps.setString(7, LocalDateTime.now().toString());
            ps.setInt(8, a.getGender());
            ps.setString(9, a.getDob().toString());
            ps.setString(10, a.getAddress().toString());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    
}
