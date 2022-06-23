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
import model.Question;
import utils.DBContext;

/**
 *
 * @author admin
 */
public class QuizDAO {
    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    public Quiz getQuiz(int id) throws ClassNotFoundException  {
        Quiz quiz = new Quiz();

        quiz.setQuizType(getQuizType(id));
        quiz.setQuestions(getTenRandomQuestions(id));
        for (int i=0; i < quiz.getQuestions().size(); i++) {
            int questionId = quiz.getQuestions().get(i).getQuestionId();
            quiz.getQuestions().get(i).setChoices(getChoices(questionId));
        }
        return quiz;
    }
    public List<Question> getQuestions(int id) throws ClassNotFoundException {
        List<Question> questions = new ArrayList<>();
       
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement("SELECT qu.Id AS QuestionId, qu.Description AS QuestionDescription FROM quizdb.quiztype AS qt INNER JOIN quizdb.question AS qu ON qt.Id=Fk_QuizTypeId_Question WHERE qt.Id=?");
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Question qu = new Question();
                qu.setQuestionId(rs.getInt("QuestionId"));
                qu.setDescription(rs.getString("QuestionDescription"));
                questions.add(qu);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            try {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return questions;
    }
}
