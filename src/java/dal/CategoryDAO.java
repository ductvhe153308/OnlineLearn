/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.BlogCategory;
import model.Booking;
import model.Category;
import model.Course;
import model.CourseCategory;
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
     *
     * @param page
     * @param num_objs
     * @return
     * @throws SQLException
     */
    public JsonArray getListCategories(int page, int num_objs) throws SQLException {
        JsonArray jcs = new JsonArray();
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
        Gson gson = new Gson();
        for (Category c : cs) {
            try {
                String query = "select avg(rated_star) as `avg` from course where  course_category_id = ?;";
                conn = new DBContext().getConnection();
                ps = conn.prepareStatement(query);
                ps.setInt(1, c.getId());
                rs = ps.executeQuery();
                while (rs.next()) {
                    int avg = (int)(rs.getDouble("avg"));
                    JsonObject o = new JsonObject();
                    o.addProperty("category", gson.toJson(c));
                    o.addProperty("rate", avg);
                    jcs.add(o);
                }

            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                rs.close();
                ps.close();
                conn.close();
            }
        }
        return jcs;
    }

    /**
     * Add new course category into database.
     *
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
            ps.setInt(2, (int) (System.currentTimeMillis() / 1000));
            add = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ps.close();
            conn.close();
        }
        return add;
    }
    
    /**
     * 
     * @return
     * @throws SQLException 
     */
    public ArrayList<Category> getAllCategories() throws SQLException {
        ArrayList<Category> cs = new ArrayList<>();
        try {
            String query = "select * from coursecategory;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
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
    
    public List<BlogCategory> getAllBlogCategory() {
        List<BlogCategory> list = new ArrayList<>();
        try {
            String query = "SELECT blogcategory.id,blogcategory.name FROM onlinelearning.blogcategory;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                list.add(new BlogCategory(id, name));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
    /**
     * 
     * @return
     * @throws SQLException 
     */
    public List<CourseCategory> getAllCourseCategory() {
        List<CourseCategory> list = new ArrayList<>();
        try {
            String query = "SELECT coursecategory.id,coursecategory.name FROM onlinelearning.coursecategory;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                list.add(new CourseCategory(id, name));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
    
//        public List<Category> getAllCourseCategory() {
//        List<Category> list = new ArrayList<>();
//        try {
//            String query = "SELECT * FROM onlinelearning.coursecategory;";
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                Category c = new Category(rs.getInt("id"), rs.getString("name"));
//                list.add(c);
//            }
//            return list;
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return null;
//    }
}
