/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import com.google.gson.JsonObject;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Account;
import model.Transaction;
import utils.DBContext;

/**
 *
 * @author Dell
 */
public class TransactionDAO {

    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    /**
     * 
     * @param page
     * @param num_objs
     * @return
     * @throws SQLException 
     */
    public ArrayList<Transaction> getListTransaction(int page, int num_objs) throws SQLException {
        ArrayList<Transaction> ts = new ArrayList<>();
        try {
            String query = "select * from transaction limit ? , ? ;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (page - 1) * num_objs);
            ps.setInt(2, num_objs);
            rs = ps.executeQuery();
            AccountDAO adao = new AccountDAO();
            Transaction t;
            while (rs.next()) {
                t = new Transaction(rs.getInt("id"),
                        adao.getAccount(rs.getInt("mentee_id")),
                        rs.getInt("amount"),
                        rs.getInt("last_update"));
                ts.add(t);
            }
        } catch (SQLException e) {

        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return ts;
    }
}
