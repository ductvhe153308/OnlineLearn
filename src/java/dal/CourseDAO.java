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
import java.util.ArrayList;
import model.Account;
import model.Course;
import utils.DBContext;

/**
 *
 * @author Dell
 */
public class CourseDAO {
    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    
    
    public ArrayList<Course> getAllCourseBySomeMentor(ArrayList<Account> mentors){
        ArrayList<Course> courses = new ArrayList<>();
        StringBuilder ids = new StringBuilder();
        mentors.forEach((a) -> {ids.append(a.getAid()).append(",");});
        ids.deleteCharAt(ids.length()-1);
        try {
            String query = "select * from course where aid in (?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,ids.toString());
            rs = ps.executeQuery();
            while (rs.next()) {
                Course a = new Course(rs.getInt("course_id"),
                        rs.getInt("aid"),
                        rs.getString("title"), 
                        rs.getInt("rated_star"),
                        rs.getDouble("price"),
                        rs.getInt("total_register_number"));
                courses.add(a);
            }
            System.out.println(rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return courses;
    }
}
