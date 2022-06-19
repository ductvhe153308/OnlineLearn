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
    
    public Account checkLogin(String email,String password){
        try {
            String query = "select * from account where email = ? and password = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,email);
            ps.setString(2,password);
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
    
    public int resetPassword(String newPassword,String email){
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
    public JsonArray getListMentor(int page, int num_objs){
        JsonArray mentors = new JsonArray();
        try {
            String query = "select a.account_id, a.last_name, a.first_name, a.profile_picture, c.title, c.rated_star, c.price, c.total_register_number  "
                        + " from account a, course c "
                        + " where a.roll_id = 1 and a.account_id = c.aid"
                        + " Limit ? , ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1,(page-1)*num_objs);
            ps.setInt(2,num_objs);
            rs = ps.executeQuery();
            Account a;
            Course s;
            JsonObject mentor;
            Gson gson = new Gson();
            while (rs.next()) {
                a = new Account(rs.getInt("account_id"), 
                        rs.getString("last_name"),
                        rs.getString("first_name"),
                        rs.getString("profile_picture"));
                s = new Course(rs.getInt("course_id"),
                        rs.getInt("aid"),
                        rs.getString("title"), 
                        rs.getInt("rated_star"),
                        rs.getDouble("price"),
                        rs.getInt("total_register_number"));
                mentor = new JsonObject();
                mentor.addProperty("account",gson.toJson(a));
                mentor.addProperty("course",gson.toJson(s));
                mentors.add(mentor);
            }
            System.out.println(rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        mentors = new JsonArray();
        JsonObject mentor;
        mentor= new JsonObject();
        mentor.addProperty("account", new Gson().toJson(new Account(1, "sfsfd", "sfsdf", "sdfsdf")));
        mentor.addProperty("course", new Gson().toJson(new Course(1, 1, "dasdas", 4, 34.5, 123)));
        mentors.add(mentor);
        mentor= new JsonObject();
        mentor.addProperty("account", new Gson().toJson(new Account(1, "sfsfd", "sfsdf", "sdfsdf")));
        mentor.addProperty("course", new Gson().toJson(new Course(1, 1, "dasdas", 4, 34.5, 123)));
        mentors.add(mentor);
        mentor= new JsonObject();
        mentor.addProperty("account", new Gson().toJson(new Account(1, "sfsfd", "sfsdf", "sdfsdf")));
        mentor.addProperty("course", new Gson().toJson(new Course(1, 1, "dasdas", 4, 34.5, 123)));
        mentors.add(mentor);
        mentor= new JsonObject();
        mentor.addProperty("account", new Gson().toJson(new Account(1, "sfsfd", "sfsdf", "sdfsdf")));
        mentor.addProperty("course", new Gson().toJson(new Course(1, 1, "dasdas", 4, 34.5, 123)));
        mentors.add(mentor);
        mentor= new JsonObject();
        mentor.addProperty("account", new Gson().toJson(new Account(1, "sfsfd", "sfsdf", "sdfsdf")));
        mentor.addProperty("course", new Gson().toJson(new Course(1, 1, "dasdas", 4, 34.5, 123)));
        mentors.add(mentor);
        return mentors;
    }
}
