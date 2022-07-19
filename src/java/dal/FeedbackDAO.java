/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import model.Feedback;
import utils.DBContext;

/**
 *
 * @author dell
 */
public class FeedbackDAO {

    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public List<Feedback> getFeedbackByUser(int id) {
        List<Feedback> list = new ArrayList<>();
        try {
            String query = "SELECT feedback.id, feedback.a_id, account.first_name, account.last_name, feedback.feedback_time, feedback.how_find_this_site, feedback.rating, feedback.voting, feedback.comment \n"
                    + "from onlinelearning.feedback, onlinelearning.account\n"
                    + "where feedback.a_id = account.account_id\n"
                    + "and account.account_id = ?\n"
                    + "order by feedback.id desc;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Feedback f = new Feedback(
                        rs.getInt("id"),
                        rs.getInt("a_id"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("how_find_this_site"),
                        rs.getString("rating"),
                        rs.getString("voting"),
                        rs.getString("comment"),
                        rs.getDate("feedback_time"));
                list.add(f);
                System.out.println(f);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void addNewFeedback(String how_find_this_site, String rating, String comment, String voting, int a_id) {
        try {
            String query = "INSERT INTO `onlinelearning`.`feedback` (`a_id`, `feedback_time`, `how_find_this_site`, `rating`, `voting`, `comment`) VALUES (?, now(), ?, ?, ?, ?);";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, a_id);
            ps.setString(2, how_find_this_site);
            ps.setString(3, rating);
            ps.setString(4, voting);
            ps.setString(5, comment);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteFeedbackById(int a_id, String id) {
        try {
            String query = "delete from feedback\n"
                    + "where feedback.a_id = ?\n"
                    + "and feedback.id = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, a_id);
            ps.setString(2, id);
            ps.executeUpdate();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
