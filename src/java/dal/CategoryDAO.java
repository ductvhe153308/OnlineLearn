/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Booking;
import model.Category;
import model.Course;
import utils.DBContext;

/**
 *
 * @author Dell
 */
public class CategoryDAO {

    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    /**
     * Get list of all course categories.
     * @param page
     * @param num_objs
     * @return
     * @throws SQLException 
     */
    public ArrayList<Category> getListCategories(int page, int num_objs) throws SQLException {
        ArrayList<Category> cs = new ArrayList<>();
        try {
            String query = "select * from coursecategory limit ? , ? ;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (page - 1) * num_objs);
            ps.setInt(2, num_objs);
            rs = ps.executeQuery();
            CourseDAO cdao = new CourseDAO();
            while (rs.next()) {
                Category c = new Category(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getInt("created_at"));
                cs.add(c);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return cs;
    }
    /**
     * Add new course category into database.
     * @param name
     * @return
     * @throws SQLException 
     */
    public int addCategory(String name) throws SQLException {
        int add = 0;
        try {
            String query = "Insert into coursecategory(name,created_at) values (?,?);";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setLong(2, System.currentTimeMillis());
            add = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ps.close();
            conn.close();
        }
        return add;
    }
}
