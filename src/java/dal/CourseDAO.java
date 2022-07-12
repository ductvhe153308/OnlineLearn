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

//    public List<Course> getAllCourse() {
//        List<Course> list = new ArrayList<>();
//        try {
//            String query = "SELECT course.course_id,course.title,course.rated_star,course.price,course.thumbnail,course.introduction,course.total_register_number,account.first_name,account.last_name,account.profile_picture\n"
//                    + "FROM onlinelearning.course,onlinelearning.account\n"
//                    + "where course.aid = account.account_id;";
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                Course c = new Course(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getInt(3),
//                        rs.getDouble(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getInt(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10));
//                list.add(c);
//            }
//            return list;
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return null;
//    }
    public List<Course> getTopRatedCourse() {
        List<Course> list = new ArrayList<>();
        try {
            String query = "SELECT course.course_id,course.title,course.rated_star,course.price,course.thumbnail,course.introduction,course.total_register_number,account.first_name,account.last_name,account.profile_picture\n"
                    + "FROM onlinelearning.course,onlinelearning.account\n"
                    + "where course.aid = account.account_id and course.rated_star=5;";
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
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10));
                list.add(c);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Course> getCourseTrending() {
        List<Course> list = new ArrayList<>();
        try {
            String query = "SELECT course.course_id,course.title,course.rated_star,course.price,course.thumbnail,course.introduction,course.total_register_number,account.first_name,account.last_name,account.profile_picture\n"
                    + "FROM onlinelearning.course,onlinelearning.account\n"
                    + "where course.aid = account.account_id \n"
                    + "order by course.total_register_number desc limit 4;";
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
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10));
                list.add(c);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int getNumberPage() {
        try {
            String query = "select count(*) from onlinelearning.course ";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                int countPage = 0;
                countPage = total / 4;
                if (total % 4 != 0) {
                    countPage++;
                }
                return countPage;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<Course> getAllCoursePaging(int index) {
        List<Course> list = new ArrayList<>();
        try {
            String query = "SELECT course.course_id,course.title,course.rated_star,course.price,course.thumbnail,course.introduction,course.total_register_number,account.first_name,account.last_name,account.profile_picture \n"
                    + "FROM onlinelearning.course,onlinelearning.account\n"
                    + "where course.aid = account.account_id \n"
                    + "order by course.course_id asc limit 4 offset ?;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 4);
            rs = ps.executeQuery();
            while (rs.next()) {
                Course c = new Course(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10));
                list.add(c);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Course> getCourseByMentor() {
        List<Course> list = new ArrayList<>();
        try {
            String query = "select course_id, aid, title, rated_star, price, thumbnail, introduction, total_register_number from onlinelearning.course where aid = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Course c = new Course(rs.getInt(1),
                        rs.getInt(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getDouble(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getInt(8));
                System.out.println(c);
                list.add(c);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

//    public static void main(String[] args) {
//        CourseDAO dao = new CourseDAO();
//        int n = dao.getNumberPage();
//        System.out.println(n);
//        List<Course> list = dao.getAllCoursePaging(2);
//        for(Course o : list){
//            System.out.println(o);
//        }
//    }
}
