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
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Blog;
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
            String query = "select account.account_id,account.email,account.password,account.profile_picture,account.role_id, account.first_name, account.last_name, account.enabled \n"
                    + "from account where email = ? and password = ?;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account ac = new Account(rs.getInt("account_id"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("profile_picture"),
                        rs.getInt("role_id"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getInt("enabled")
                );
                return ac;
            }
            System.out.println(rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Account checkAccountExist(String email) {
        String query = "select * from onlinelearning.account where email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public void register(Account a) {
        String query = "INSERT INTO `onlinelearning`.`account` (`last_name`, `first_name`, `email`, `password`, `created_at`, `gender`, `date_of_birth`) "
                + "VALUES (?,?,?,?,?,?,?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, a.getLast_name());
            ps.setString(2, a.getFirst_name());
            ps.setString(3, a.getEmail());
            ps.setString(4, a.getPassword());
            ps.setString(5, LocalDateTime.now().toString());
            ps.setInt(6, a.getGender());
            ps.setString(7, a.getDob().toString());
            ps.executeUpdate();
        } catch (Exception e) {
        }
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

    public List<Account> getAllMentor() {
        List<Account> list = new ArrayList<>();
        try {
            String query = "SELECT account.account_id, account.last_name,account.first_name, account.email, account.phone, account.gender, account.date_of_birth, account.profile_picture  FROM onlinelearning.account where role_id = 2 ;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);

            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(
                        rs.getInt("account_id"),
                        rs.getString("last_name"),
                        rs.getString("first_name"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getInt("gender"),
                        rs.getDate("date_of_birth"),
                        rs.getString("profile_picture"));
                list.add(a);
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public List<Account> getAllMentorPaging(int index) {
        List<Account> list = new ArrayList<>();
        try {
            String query = "SELECT account.account_id, account.last_name,account.first_name, account.email, account.phone, account.gender, \n"
                    + "account.date_of_birth, account.profile_picture  \n"
                    + "FROM onlinelearning.account where role_id = 2 \n"
                    + "order by account.account_id asc limit 8 offset ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 8);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(
                        rs.getInt("account_id"),
                        rs.getString("last_name"),
                        rs.getString("first_name"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getInt("gender"),
                        rs.getDate("date_of_birth"),
                        rs.getString("profile_picture"));
                list.add(a);
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public List<Account> getTopRateMentorPaging(int index) {
        List<Account> list = new ArrayList<>();
        try {
            String query = "SELECT  account.account_id, account.last_name,account.first_name, account.email, account.phone, account.gender, \n"
                    + "account.date_of_birth, account.profile_picture \n"
                    + " FROM onlinelearning.account , onlinelearning.course\n"
                    + " where account.role_id =2 and account.account_id = course.aid  and course.rated_star = 5 limit 4 offset ?;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 8);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(
                        rs.getInt("account_id"),
                        rs.getString("last_name"),
                        rs.getString("first_name"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getInt("gender"),
                        rs.getDate("date_of_birth"),
                        rs.getString("profile_picture"));
                list.add(a);
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public int getTopRateMentorNumberPage() {
        try {
            String query = "SELECT  count(*)\n"
                    + " FROM onlinelearning.account , onlinelearning.course\n"
                    + " where account.role_id =2 and account.account_id = course.aid  and course.rated_star = 5 ;";
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

    public int getMentorNumberPage() {
        try {
            String query = "select count(*) from onlinelearning.account where role_id = 2 ";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                int countPage = 0;
                countPage = total / 8;
                if (total % 8 != 0) {
                    countPage++;
                }
                return countPage;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<Account> getMentorListByName(int index, String searchName) {
        List<Account> list = new ArrayList<>();
        try {
            String query = "SELECT account.account_id, account.last_name,account.first_name, account.email, account.phone, account.gender, account.date_of_birth, account.profile_picture  \n"
                    + "FROM onlinelearning.account \n"
                    + "where role_id = 2\n"
                    + "and account.last_name like ?\n"
                    + "or account.first_name like ?\n"
                    + "order by account.account_id asc limit 8 offset ?;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + searchName + "%");
            ps.setString(2, "%" + searchName + "%");
            ps.setInt(3, (index - 1) * 8);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(
                        rs.getInt("account_id"),
                        rs.getString("last_name"),
                        rs.getString("first_name"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getInt("gender"),
                        rs.getDate("date_of_birth"),
                        rs.getString("profile_picture"));
                list.add(a);
            }
        } catch (SQLException e) {

        }
        return list;
    }

    public int getMentorNumberPageByName(String searchName) {
        try {
            String query = "select count(*) from onlinelearning.account where role_id = 2 and account.last_name like ? or account.first_name like ? ";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + searchName + "%");
            ps.setString(2, "%" + searchName + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                int countPage = 0;
                countPage = total / 8;
                if (total % 8 != 0) {
                    countPage++;
                }
                return countPage;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

//    public static void main(String[] args) {
//        AccountDAO dao = new AccountDAO();
//        int n = dao.getMentorNumberPageByName("Nguyen");
//        System.out.println(n);
//        List<Account> list = dao.getMentorListByName(1, "Nguyen");
//        for (Account o : list) {
//            System.out.println(o);
//        }
//    }
    public Account getMentorByID(int id) throws SQLException {
        Account a = null;
        try {
            String query = "SELECT account.account_id, account.last_name, account.first_name, account.email, account.phone, account.gender, account.date_of_birth, account.profile_picture  FROM onlinelearning.account where role_id = 2 \n"
                    + "and account.account_id = ?;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                a = new Account(
                        rs.getInt("account_id"),
                        rs.getString("last_name"),
                        rs.getString("first_name"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getInt("gender"),
                        rs.getDate("date_of_birth"),
                        rs.getString("profile_picture"));
            }
        } catch (SQLException e) {

        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return a;
    }

    /**
     * Get an account by its id.
     *
     * @param id aid
     * @return Account
     * @throws SQLException
     */
    public Account getAccount(int id) throws SQLException {
        Account a = null;
        try {
            String query = "SELECT account.account_id, account.last_name, account.first_name, account.email, account.phone, account.gender, account.date_of_birth, account.profile_picture  FROM account where account_id = ?;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                a = new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getDate(7),
                        rs.getString(8));
            }
        } catch (SQLException e) {

        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return a;
    }

    /**
     *
     * @param page index of page
     * @param num_objs number of Mentor in page
     * @return JsonArray
     * @throws java.sql.SQLException
     */
    public JsonArray getListMentor(int page, int num_objs) throws SQLException {
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
        } catch (SQLException e) {

        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return mentors;
    }

    /**
     *
     * @param page index of page
     * @param num_objs number of Mentee in page
     * @return JsonArray
     * @throws java.sql.SQLException
     */
    public JsonArray getListMentee(int page, int num_objs) throws SQLException {
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
            JsonObject mentee;
            while (rs.next()) {
                mentee = getMentee(rs);
                mentees.add(mentee);
            }
        } catch (SQLException e) {

        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return mentees;
    }

    /**
     *
     * @param asc
     * @return
     * @throws SQLException
     */
    public JsonArray getSortedListMentee0(boolean asc) throws SQLException {
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
            JsonObject mentee;
            while (rs.next()) {
                mentee = getMentee(rs);
                mentees.add(mentee);
            }
            System.out.println(rs);
        } catch (SQLException e) {

        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return mentees;
    }

    /**
     *
     * @param asc
     * @return
     * @throws SQLException
     */
    public JsonArray getSortedListMentee1(boolean asc) throws SQLException {
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
            JsonObject mentee;
            while (rs.next()) {
                mentee = getMentee(rs);
                mentees.add(mentee);
            }
            System.out.println(rs);
        } catch (SQLException e) {

        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return mentees;
    }

    /**
     *
     * @param asc
     * @return
     * @throws SQLException
     */
    public JsonArray getSortedListMentee2(boolean asc) throws SQLException {
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
            JsonObject mentee;
            while (rs.next()) {
                mentee = getMentee(rs);
                mentees.add(mentee);
            }
            System.out.println(rs);
        } catch (SQLException e) {

        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return mentees;
    }

    /**
     *
     * @param asc
     * @return
     * @throws SQLException
     */
    public JsonArray getSortedListMentor0(boolean asc) throws SQLException {
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
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return mentors;
    }

    /**
     *
     * @param asc
     * @return
     * @throws SQLException
     */
    public JsonArray getSortedListMentor1(boolean asc) throws SQLException {
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
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return mentors;
    }

    /**
     *
     * @param asc
     * @return
     * @throws SQLException
     */
    public JsonArray getSortedListMentor2(boolean asc) throws SQLException {
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
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return mentors;
    }

    /**
     *
     * @param asc
     * @return
     * @throws SQLException
     */
    public JsonArray getSortedListMentor3(boolean asc) throws SQLException {
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

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return mentors;
    }

    /**
     *
     * @param rs
     * @return
     * @throws SQLException
     */
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
                rs.getInt("enabled"),
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

    /**
     *
     * @param rs
     * @return
     * @throws SQLException
     */
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
                rs.getInt("enabled"),
                rs.getDate("created_at"),
                rs.getInt("gender"),
                rs.getDate("date_of_birth"),
                rs.getString("profile_picture"));
        JsonObject mentee = new JsonObject();
        mentee.addProperty("account", gson.toJson(a));
        return mentee;
    }

    /**
     *
     * @return @throws SQLException
     */
    public Account getAdmin() throws SQLException {
        try {
            String query = "select * \n"
                    + "     from account \n"
                    + "     where `role_id` = 1\n";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt("account_id"),
                        rs.getString("last_name"),
                        rs.getString("first_name"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("phone"),
                        rs.getInt("role_id"),
                        rs.getString("token"),
                        rs.getInt("enabled"),
                        rs.getDate("created_at"),
                        rs.getInt("gender"),
                        rs.getDate("date_of_birth"),
                        rs.getString("profile_picture"));
            }

        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return null;
    }

    /**
     * Admin set account status for mentor / mentee
     *
     * @param aid account id
     * @param enabled is enabled.
     * @return Number row effect.
     */
    public int updateStatus(int aid, int enabled) throws SQLException {
        int c = 0;
        try {
            String query = "Update account set `enabled` = ? where account_id = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, enabled);
            ps.setInt(2, aid);
            c = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ps.close();
            conn.close();
        }
        return c;
    }

    /**
     * Check this email has been register yet.
     *
     * @param email
     * @return
     */
    public Account checkEmail(String email) throws SQLException {
        try {
            String query = "select * from account where email = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account a = new Account(rs.getInt("account_id"),
                        rs.getString("email"),
                        rs.getString("password"),
                        rs.getString("profile_picture")
                );
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return null;
    }

    /**
     *
     * @param fname
     * @param lname
     * @param phone
     * @param email
     * @param password
     * @return
     * @throws SQLException
     */
    public int addMentor(String fname, String lname, String phone, String email, String password) throws SQLException {
        Account a = checkEmail(email);
        if (a != null) {
            return 0;
        }
        int c = 0;
        try {
            String query = "INSERT INTO `account` (`last_name`, `first_name`, `email`, `password`, `created_at`, `role_id`, `enabled`, `phone`) "
                    + "VALUES (?,?,?,?,?,?,?,?);";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, lname);
            ps.setString(2, fname);
            ps.setString(3, email);
            ps.setString(4, password);
            ps.setDate(5, new Date(System.currentTimeMillis()));
            ps.setInt(6, 2);
            ps.setInt(7, 1);
            ps.setString(8, phone);
            ps.executeUpdate();
            rs = ps.getGeneratedKeys();
            if (rs.next()) {
                c = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("Error-" + e);
        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        System.out.println("Id: " + c);
        return c;
    }

    public void updateProfile(int id, String firstname, String lastname, String phone, Date dob) {

        String query = "UPDATE `onlinelearning`.`account` SET `last_name` = ?, `first_name` = ?, `phone` = ?, `date_of_birth` = ? WHERE account_id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, firstname);
            ps.setString(2, lastname);
            ps.setString(3, phone);
            ps.setString(4, dob.toString());
            ps.setInt(5, id);

            ps.executeUpdate();

        } catch (SQLException e) {
        }

    }

    /**
     *
     * @param fname
     * @param lname
     * @param phone
     * @param email
     * @param password
     * @return
     * @throws SQLException
     */
    public int addMentee(String fname, String lname, String phone, String email, String password) throws SQLException {
        Account a = checkEmail(email);
        if (a != null) {
            return 0;
        }
        int c = 0;
        try {
            String query = "INSERT INTO `account` (`last_name`, `first_name`, `email`, `password`, `created_at`, `role_id`, `enabled`, `phone`) "
                    + "VALUES (?,?,?,?,?,?,?,?);";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, lname);
            ps.setString(2, fname);
            ps.setString(3, email);
            ps.setString(4, password);
            ps.setDate(5, new Date(System.currentTimeMillis()));
            ps.setInt(6, 3);
            ps.setInt(7, 1);
            ps.setString(8, phone);
            ps.executeUpdate();
            c = 1;
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ps.close();
            conn.close();
        }
        return c;
    }

    /**
     * Count total of mentor and mentee.
     *
     * @return Int
     * @throws SQLException
     */
    public int countingMember() throws SQLException {
        int c = 0;
        try {
            String query = "select count(*) as 'total' from account where role_id = 2 or role_id = 3";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                c = rs.getInt("total");
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return c;
    }

    /**
     * Counting total of booking.
     *
     * @return Int
     * @throws SQLException
     */
    public int countingAppointment() throws SQLException {
        int c = 0;
        try {
            String query = "select count(*) as 'total' from booking";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                c = rs.getInt("total");
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return c;
    }

    /**
     * Counting total of rated star of course.
     *
     * @return Int
     * @throws SQLException
     */
    public int countingStar() throws SQLException {
        int c = 0;
        try {
            String query = "select sum(rated_star) as 'total' from course";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                c = rs.getInt("total");
            }
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return c;
    }
}
