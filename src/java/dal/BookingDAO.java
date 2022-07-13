/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import com.google.gson.JsonArray;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Account;
import model.Booking;
import utils.DBContext;

/**
 *
 * @author Dell
 */
public class BookingDAO {

    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public ArrayList<Booking> getListBooking() throws SQLException {
        ArrayList<Booking> bks = new ArrayList<>();
        try {
            String query = "select * from booking";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            AccountDAO adao = new AccountDAO();
            CourseDAO cdao = new CourseDAO();
            while (rs.next()) {
                Booking b = new Booking(rs.getInt("id"),
                        adao.getAccount(rs.getInt("mentee_id")),
                        cdao.getCourse(rs.getInt("course_id")),
                        rs.getInt("booking_time"),
                        rs.getInt("duration"));
                bks.add(b);
            }
            System.out.println(rs);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return bks;
    }
}
