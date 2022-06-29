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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Course;
import utils.DBContext;

/**
 *
 * @author admin
 */
public class AccountDAO {

    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public Account checkLogin(String email, String password) {
        try {
            String query = "select * from account where email = ? and password = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getInt("account_id"),
                        rs.getString("email"),
                        rs.getString("password"));
                return a;
            }
            System.out.println(rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int resetPassword(String newPassword, String email) {
        try {
            String query = "update account set password = ? where email = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, newPassword);
            ps.setString(2, email);
            return ps.executeUpdate();
        } catch (Exception e) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return 0;
    }

    /**
     *
     * @param page index of page
     * @param num_objs number of Mentor in page
     * @return JsonArray
     */
    public JsonArray getListMentor(int page, int num_objs) {
        JsonArray mentors = new JsonArray();
        try {
            String query = "select a.*, c.course_id, c.title, c.rated_star, c.price, c.total_register_number  \n"
                    + "     from account a, course c\n"
                    + "     where a.`role_id` = 2 and a.account_id = c.aid\n"
                    + "     limit ? , ? ;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (page - 1) * num_objs);
            ps.setInt(2, num_objs);
            rs = ps.executeQuery();
            JsonObject mentor;
            while (rs.next()) {
                mentor = getMentor(rs);
                mentors.add(mentor);
            }
            System.out.println(rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mentors;
    }

    /**
     *
     * @param page index of page
     * @param num_objs number of Mentee in page
     * @return JsonArray
     */
    public JsonArray getListMentee(int page, int num_objs) {
        JsonArray mentees = new JsonArray();
        try {
            String query = "select a.* \n"
                    + "     from account a\n"
                    + "     where a.`role_id` = 3\n"
                    + "     limit ? , ? ;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (page - 1) * num_objs);
            ps.setInt(2, num_objs);
            rs = ps.executeQuery();
            Account a;
            JsonObject mentee;
            while (rs.next()) {
                mentee = getMentee(rs);
                mentees.add(mentee);
            }
            System.out.println(rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mentees;
    }

    public JsonArray getSortedListMentee0(boolean asc) {
        JsonArray mentees = new JsonArray();
        try {
            String query = "select a.* \n"
                    + "     from account a\n"
                    + "     where a.`role_id` = 3\n"
                    + "     order by first_name " + (asc ? "asc" : "desc")
                    + "     limit 0 , 10 ;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            Account a;
            JsonObject mentee;
            while (rs.next()) {
                mentee = getMentee(rs);
                mentees.add(mentee);
            }
            System.out.println(rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mentees;
    }

    public JsonArray getSortedListMentee1(boolean asc) {
        JsonArray mentees = new JsonArray();
        try {
            String query = "select a.* \n"
                    + "     from account a\n"
                    + "     where a.`role_id` = 3\n"
                    + "     order by phone " + (asc ? "asc" : "desc")
                    + "     limit 0 , 10 ;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            Account a;
            JsonObject mentee;
            while (rs.next()) {
                mentee = getMentee(rs);
                mentees.add(mentee);
            }
            System.out.println(rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mentees;
    }

    public JsonArray getSortedListMentee2(boolean asc) {
        JsonArray mentees = new JsonArray();
        try {
            String query = "select a.* \n"
                    + "     from account a\n"
                    + "     where a.`role_id` = 3\n"
                    + "     order by created_at " + (asc ? "asc" : "desc")
                    + "     limit 0 , 10 ;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            Account a;
            JsonObject mentee;
            while (rs.next()) {
                mentee = getMentee(rs);
                mentees.add(mentee);
            }
            System.out.println(rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mentees;
    }

    public JsonArray getSortedListMentor0(boolean asc) {
        JsonArray mentors = new JsonArray();
        try {
            String query = "select a.*, c.course_id, c.title, c.rated_star, c.price, c.total_register_number,(c.price*c.total_register_number) as `earned`  \n"
                    + "     from account a, course c\n"
                    + "     where a.`role_id` = 2 and a.account_id = c.aid\n"
                    + "     order by a.first_name " + (asc ? "asc" : "desc")
                    + "     limit 0 , 10 ;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            JsonObject mentor;
            while (rs.next()) {
                mentor = getMentor(rs);
                mentors.add(mentor);
            }
            System.out.println(rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mentors;
    }

    public JsonArray getSortedListMentor1(boolean asc) {
        JsonArray mentors = new JsonArray();
        try {
            String query = "select a.*, c.course_id, c.title, c.rated_star, c.price, c.total_register_number,(c.price*c.total_register_number) as `earned`  \n"
                    + "     from account a, course c\n"
                    + "     where a.`role_id` = 2 and a.account_id = c.aid\n"
                    + "     order by c.title " + (asc ? "asc" : "desc")
                    + "     limit 0 , 10 ;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            JsonObject mentor;
            while (rs.next()) {
                mentor = getMentor(rs);
                mentors.add(mentor);
            }
            System.out.println(rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mentors;
    }

    public JsonArray getSortedListMentor2(boolean asc) {
        JsonArray mentors = new JsonArray();
        try {
            String query = "select a.*, c.course_id, c.title, c.rated_star, c.price, c.total_register_number,(c.price*c.total_register_number) as `earned`  \n"
                    + "     from account a, course c\n"
                    + "     where a.`role_id` = 2 and a.account_id = c.aid\n"
                    + "     order by a.created_at " + (asc ? "asc" : "desc")
                    + "     limit 0 , 10 ;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            JsonObject mentor;
            while (rs.next()) {
                mentor = getMentor(rs);
                mentors.add(mentor);
            }
            System.out.println(rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mentors;
    }

    public JsonArray getSortedListMentor3(boolean asc) {
        JsonArray mentors = new JsonArray();
        try {
            String query = "select a.*, c.course_id, c.title, c.rated_star, c.price, c.total_register_number,(c.price*c.total_register_number) as `earned`  \n"
                    + "     from account a, course c\n"
                    + "     where a.`role_id` = 2 and a.account_id = c.aid\n"
                    + "     order by earned " + (asc ? "asc" : "desc")
                    + "     limit 0 , 10 ;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            JsonObject mentor;
            while (rs.next()) {
                mentor = getMentor(rs);
                mentors.add(mentor);
            }
            System.out.println(rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mentors;
    }

    private JsonObject getMentor(ResultSet rs) throws SQLException {
        Gson gson = new Gson();
        Account a = new Account(rs.getInt("account_id"),
                rs.getString("last_name"),
                rs.getString("first_name"),
                rs.getString("email"),
                rs.getString("password"),
                rs.getString("phone"),
                rs.getInt("role_id"),
                rs.getString("token"),
                "",
                rs.getDate("created_at"),
                rs.getInt("gender"),
                rs.getDate("date_of_birth"),
                rs.getString("profile_picture"));
        Course s = new Course(rs.getInt("course_id"),
                rs.getInt("account_id"),
                rs.getString("title"),
                rs.getInt("rated_star"),
                rs.getDouble("price"),
                rs.getInt("total_register_number"));
        JsonObject mentor = new JsonObject();
        mentor.addProperty("account", gson.toJson(a));
        mentor.addProperty("course", gson.toJson(s));
        return mentor;
    }

    private JsonObject getMentee(ResultSet rs) throws SQLException {
        Gson gson = new Gson();
        Account a = new Account(rs.getInt("account_id"),
                rs.getString("last_name"),
                rs.getString("first_name"),
                rs.getString("email"),
                rs.getString("password"),
                rs.getString("phone"),
                rs.getInt("role_id"),
                rs.getString("token"),
                "",
                rs.getDate("created_at"),
                rs.getInt("gender"),
                rs.getDate("date_of_birth"),
                rs.getString("profile_picture"));
        JsonObject mentee = new JsonObject();
        mentee.addProperty("account", gson.toJson(a));
        return mentee;
    }
}
