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
import model.Course;
import utils.DBContext;

/**
 *
 * @author Dell
 */
public class BookingDAO {

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
    public ArrayList<Booking> getListBooking(int page, int num_objs) throws SQLException {
        ArrayList<Booking> bks = new ArrayList<>();
        try {
            String query = "select * from booking limit ? , ? ;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (page - 1) * num_objs);
            ps.setInt(2, num_objs);
            rs = ps.executeQuery();
            AccountDAO adao = new AccountDAO();
            CourseDAO cdao = new CourseDAO();
            Course c;
            while (rs.next()) {
                c = cdao.getCourse(rs.getInt("course_id"));
                Booking b = new Booking(rs.getInt("id"),
                        adao.getAccount(rs.getInt("mentee_id")),
                        adao.getAccount(c.getAid()),
                        c,
                        rs.getInt("booking_time"),
                        rs.getInt("status"),
                        rs.getInt("duration"));
                bks.add(b);
            }
            
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
