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
import java.util.List;
import model.Choice;

import model.Quiz;

import utils.DBContext;

/**
 *
 * @author admin
 */
public class QuizDAO {

    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public List<Quiz> getQuiz(int id) {
        List<Quiz> quiz = new ArrayList<>();

        try {
            this.conn = new DBContext().getConnection();
            ps = conn.prepareStatement(""
                    + "SELECT qz.Id , qz.description\n"
                    + "FROM onlinelearning.quiz AS qz ,\n"
                    + "onlinelearning.lesson AS ls \n"
                    + "where qz.lesson_id = ls.id \n"
                    + "and ls.id=?");
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {

                Quiz qu = new Quiz();
                qu.setQuizId(rs.getInt("Id"));

                qu.setDescription(rs.getString("description"));
                List<Choice> choices = getChoices(rs.getInt("Id"));
                qu.setChoices(choices);
                quiz.add(qu);

            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return quiz;
    }

    public List<Choice> getChoices(int id)  {
        List<Choice> choices = new ArrayList<>();

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement("SELECT c.Id AS ChoiceId, c.answer AS ChoiceDescription,\n"
                    + " c.is_correct_answer AS ChoiceIsAnswer FROM onlinelearning.choice AS c \n"
                    + "INNER JOIN onlinelearning.quiz AS qu \n"
                    + "ON qu.Id=c.quiz_id  where qu.id = ?;");
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Choice c = new Choice();
                c.setChoiceId(rs.getInt("ChoiceId"));
                c.setDescription(rs.getString("ChoiceDescription"));
                c.setIsCorrectAnswer(rs.getInt("ChoiceIsAnswer"));
                choices.add(c);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } 
        return choices;
    }
    public static void main(String[] args) {
        QuizDAO dao = new QuizDAO();
       List<Quiz> quiz = dao.getQuiz(1);
       for(Quiz o : quiz){
           System.out.println(o);
       }
    }

}
