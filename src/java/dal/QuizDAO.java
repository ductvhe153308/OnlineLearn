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
import model.Quiz_History;

import utils.DBContext;

/**
 *
 * @author admin
 */
public class QuizDAO {

    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public Quiz getQuiz(int id) {
        Quiz quiz = new Quiz();
        try {
            this.conn = new DBContext().getConnection();
            ps = conn.prepareStatement(""
                    + "SELECT qz.Id , qz.description\n"
                    + "FROM onlinelearning.quiz AS qz ,\n"
                    + "onlinelearning.lesson AS ls \n"
                    + "where qz.lesson_id = ls.id \n"
                    + "and qz.id=?");
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                quiz.setQuizId(rs.getInt("Id"));
                quiz.setDescription(rs.getString("description"));
                List<Choice> choices = getChoices(rs.getInt("Id"));
                quiz.setChoices(choices);

            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return quiz;
    }

    public Quiz getQuizFirst(int id) {
        Quiz quiz = new Quiz();

        try {
            this.conn = new DBContext().getConnection();
            ps = conn.prepareStatement(""
                    + "SELECT qz.Id , qz.description\n"
                    + " FROM onlinelearning.quiz AS qz ,\n"
                    + " onlinelearning.lesson AS ls \n"
                    + " where qz.lesson_id = ls.id \n"
                    + " and ls.id=? order by qz.Id asc limit 1 ");
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {

                quiz.setQuizId(rs.getInt("Id"));
                quiz.setDescription(rs.getString("description"));
                List<Choice> choices = getChoices(rs.getInt("Id"));
                quiz.setChoices(choices);

            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return quiz;
    }

    public List<Quiz> getQuiz1(int id) {
        List<Quiz> quiz = new ArrayList();

        try {
            this.conn = new DBContext().getConnection();
            ps = conn.prepareStatement(""
                    + "SELECT qz.Id , qz.description\n"
                    + " FROM onlinelearning.quiz AS qz ,\n"
                    + " onlinelearning.lesson AS ls \n"
                    + " where qz.lesson_id = ls.id \n"
                    + " and ls.id=? order by qz.Id asc ");
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                Quiz q = new Quiz();
                q.setQuizId(rs.getInt("Id"));
                q.setDescription(rs.getString("description"));

                quiz.add(q);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return quiz;
    }

    public List<Choice> getChoices(int id) {
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

    public void setResult(int acId, int quizId, int user_select, int is_correct_answer, int lesson_id) {
        try {
            String query = "INSERT INTO `onlinelearning`.`result` \n"
                    + "(acId,quizId, user_select, is_correct_answer, lessonId) \n"
                    + "VALUES (?,?, ?, ?, ?);";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, acId);
            ps.setInt(2, quizId);
            ps.setInt(3, user_select);
            ps.setInt(4, is_correct_answer);
            ps.setInt(5, lesson_id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getMark(int id, int aId) {
        try {
            String query = "SELECT count(*) FROM onlinelearning.result \n"
                    + "where acId = ? and lessonId = ?\n"
                    + " and result.user_select = result.is_correct_answer\n"
                    + "order by result.id desc limit 5";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, aId);
            ps.setInt(2, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int getQuizNumberPage(int id) {
        try {
            String query = "select count(*) from onlinelearning.quiz where quiz.lesson_id = ?  ";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<Integer> getCorrectChoiceIdList(int id) {
        List<Integer> Id = new ArrayList<>();

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement("select choice.id  \n"
                    + "from onlinelearning.choice \n"
                    + "inner join onlinelearning.quiz \n"
                    + "on  choice.quiz_id = quiz.id \n"
                    + "where choice.is_correct_answer =1 and quiz.lesson_id = ?;");
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Id.add(rs.getInt("id"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return Id;
    }

    public List<Integer> getQuizIdListbyLesson(int id) {
        List<Integer> Id = new ArrayList<>();

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement("select quiz.id  \n"
                    + "from  onlinelearning.quiz \n"
                    + "where  quiz.lesson_id = ?;;");
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Id.add(rs.getInt("id"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return Id;
    }

    public List<Quiz_History> getQuizHistory(int id) {
        List<Quiz_History> quizH = new ArrayList<>();

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement("SELECT history_quiz_mark.id,history_quiz_mark.mark,history_quiz_mark.status \n"
                    + "FROM onlinelearning.history_quiz_mark where history_quiz_mark.lesID = ?;");
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Quiz_History qh = new Quiz_History();
                qh.setId( rs.getInt("id"));   
                qh.setMark(rs.getInt("mark"));
                qh.setStatus(rs.getInt("status"));
                quizH.add(qh);

            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return quizH;
    }

    public static void main(String[] args) {
        QuizDAO dao = new QuizDAO();
        List<Quiz_History> quiz = dao.getQuizHistory(1);
        for(Quiz_History qh : quiz){
            System.out.println(qh.getMark());
        }
        

//        System.out.println(n);
//        for (Quiz o : quiz) {
//
//            List<Choice> choice = dao.getChoices(o.getQuizId());
//            for (Choice c : choice) {
//                if (c.getIsCorrectAnswer() == 1) {
//                    o.setAnswer(c.getChoiceId());
//                }
//
//            }
//            o.setChoices(choice);
//
//        }
//        int firtId = quiz.get(0).getQuizId();
//
////        for (Quiz o : quiz) {
////
////            System.out.println(o);
////            System.out.println(o.getAnswer());
////
////        }
//        List<Integer> intt = dao.getQuizIdListbyLesson(1);
//        for (Integer o : intt) {
//
//            System.out.println(o);
//
//        }
//
//        System.out.println(intt.get(3));
    }
}
