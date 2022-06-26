/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
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

    public ArrayList<Course> getAllCourseBySomeMentor(ArrayList<Account> mentors) {
        ArrayList<Course> courses = new ArrayList<>();
        StringBuilder ids = new StringBuilder();
        mentors.forEach((a) -> {
            ids.append(a.getAid()).append(",");
        });
        ids.deleteCharAt(ids.length() - 1);
        try {
            String query = "select * from course where aid in (?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, ids.toString());
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

    public List<Course> getAllCourse() {
        List<Course> list = new ArrayList<>();
        try {
            String query = "SELECT course.course_id,course.title,course.rated_star,course.price,course.thumbnail,course.introduction,course.total_register_number,account.first_name,account.last_name\n"
                    + "FROM onlinelearning.course,onlinelearning.account\n"
                    + "where course.aid = account.account_id;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Course c = new Course(rs.getInt(1), 
                        rs.getString(2), 
                        rs.getInt(3), 
                        rs.getDouble(4), 
                        rs.getString(5), 
                        rs.getString(6), 
                        rs.getInt(7), 
                        rs.getString(8));
                list.add(c);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
