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
import model.Question;
import model.QuestionChoice;
import model.Quiz;
import model.QuizType;
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
             rs = ps.executeQuery();
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
    public List<Question> getTenRandomQuestions(int id) throws ClassNotFoundException {
        List<Question> questions = new ArrayList<>();
        
        try {
            this.conn = new DBContext().getConnection();
            ps = conn.prepareStatement("" +
                    "SELECT qu.Id AS QuestionId, qu.Description AS QuestionDescription " +
                    "FROM quiztype AS qt INNER JOIN question AS qu ON qt.Id=Fk_QuizTypeId_Question " +
                    "WHERE qt.Id=? " +
                    "ORDER BY RAND() LIMIT 10");
            ps.setInt(1,id);
             rs = ps.executeQuery();
            int count = 1;
            while (rs.next()) {
               
                Question qu = new Question();
                qu.setQuestionId(rs.getInt("QuestionId"));
                qu.setId(count);
                qu.setQuestion(rs.getString("QuestionDescription"));
                List<Choice> choices = getChoices(rs.getInt("QuestionId"));
                for (int i = 0; i <choices.size(); i++) {
                    if (i == 0) qu.getOptions().get(0).replace("a", choices.get(i).getDescription());
                    if (i == 1) qu.getOptions().get(0).replace("b", choices.get(i).getDescription());
                    if (i == 2) qu.getOptions().get(0).replace("c", choices.get(i).getDescription());
                    if (i == 3) qu.getOptions().get(0).replace("d", choices.get(i).getDescription());
                    if (choices.get(i).getIsAnswer() == 1) qu.setAnswer(choices.get(i).getDescription());
                }
                questions.add(qu);
                count++;
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
    public List<Choice> getChoices(int id) throws ClassNotFoundException  {
        List<Choice> choices = new ArrayList<>();
        
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement("SELECT c.Id AS ChoiceId, c.Description AS ChoiceDescription, c.IsAnswer AS ChoiceIsAnswer FROM quizdb.choice AS c INNER JOIN quizdb.question AS qu ON qu.Id=c.Fk_QuestionId_Choice  where qu.id = ?;");
            ps.setInt(1,id);
             rs = ps.executeQuery();
            while (rs.next()) {
                Choice c = new Choice();
                c.setChoiceId(rs.getInt("ChoiceId"));
                c.setDescription(rs.getString("ChoiceDescription"));
                c.setIsAnswer(rs.getInt("ChoiceIsAnswer"));
                choices.add(c);
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
        return choices;
    }
    public QuizType getQuizType(int id) throws ClassNotFoundException {
        QuizType quizType = new QuizType();
        
        try {
            this.conn = new DBContext().getConnection();
            ps = conn.prepareStatement("SELECT * FROM quizdb.quiztype WHERE Id=?");
            ps.setInt(1, id);

             rs = ps.executeQuery();
            if (rs.next()) {
                quizType.setQuizTypeId(rs.getInt("Id"));
                quizType.setName(rs.getString("Name"));
                quizType.setDescription(rs.getString("Description"));
                quizType.setImageUrl(rs.getString("ImageURL"));
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

        return quizType;
    }
    public List<QuizType> getQuizTypes() throws ClassNotFoundException {
        List<QuizType> quizTypes = new ArrayList<>();
        
        try {
            conn =  new DBContext().getConnection();
            ps = conn.prepareStatement("SELECT * FROM quizdb.quiztype");

             rs = ps.executeQuery();
            while (rs.next()) {
                QuizType qt = new QuizType();
                qt.setQuizTypeId(rs.getInt("Id"));
                qt.setName(rs.getString("Name"));
                qt.setDescription(rs.getString("Description"));
                qt.setImageUrl(rs.getString("ImageURL"));

                quizTypes.add(qt);
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
        return quizTypes;
    }
//    public Quiz Json(int id) throws ClassNotFoundException {
//        Quiz quiz = new Quiz();
//        quiz.setQuizType(getQuizType(id));
//        List<Question> questions = getTenRandomQuestions(id);
//
//        for (int i=0; i < questions.size(); i++) {
//            int questionId = questions.get(i).getQuestionId();
//            List<Choice> choices;
//            choices = getChoices(questionId);
//            Gson gson = new Gson();
//            JsonArray jarray = gson.toJsonTree(choices).getAsJsonArray();
//            System.out.println(jarray);
//            JsonObject jsonObject = new JsonObject();
//            jsonObject.add("choices", jarray);
//
//            questions.get(i).setChoicesJson(jsonObject.get("choices").toString());
//        }
//
//        Gson gson = new Gson();
//        JsonArray jarray = gson.toJsonTree(questions).getAsJsonArray();
//        System.out.println(jarray);
//        JsonObject jsonObject = new JsonObject();
//        jsonObject.add("questions", jarray);
//        quiz.setQuestionsJson(jsonObject.get("questions").toString());
//
//
//        return quiz;
//    }
    public List<QuestionChoice> getTenRandomQuestionsWithChoices(int id) throws ClassNotFoundException {
        List<QuestionChoice> questions = new ArrayList<>();
        
        try {
            this.conn = new DBContext().getConnection();
            ps = conn.prepareStatement("SELECT qu.Id AS QuestionId, qu.Description AS QuestionDescription, c.Id AS ChoiceId, c.Description AS ChoiceDescription, c.IsAnswer AS ChoiceIsAnswer FROM quizdb.quiztype AS qt INNER JOIN quizdb.question AS qu ON qt.Id=Fk_QuizTypeId_Question INNER JOIN quizdb.choice AS c ON qu.Id=c.Fk_QuestionId_Choice WHERE qt.Id=? ORDER BY RAND() LIMIT 50");
            ps.setInt(1,id);
            rs = ps.executeQuery();
            while (rs.next()) {
                QuestionChoice qu = new QuestionChoice();
                qu.setQuestionId(rs.getInt("QuestionId"));
                qu.setQuestionDescription(rs.getString("QuestionDescription"));
                qu.setChoiceId(rs.getInt("ChoiceId"));
                qu.setChoiceDescription(rs.getString("ChoiceDescription"));
                qu.setChoiceIsAnswer(rs.getInt("ChoiceIsAnswer"));
                qu.setIsSelected(0);
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
