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
import model.Lesson;

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
            ps = conn.prepareStatement("SELECT c.Id , c.answer ,\n"
                    + " c.is_correct_answer  FROM onlinelearning.choice AS c \n"
                    + "INNER JOIN onlinelearning.quiz AS qu \n"
                    + "ON qu.Id=c.quiz_id  where qu.id = ?;");
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Choice c = new Choice();
                c.setChoiceId(rs.getInt("Id"));
                c.setDescription(rs.getString("answer"));
                c.setIsCorrectAnswer(rs.getInt("is_correct_answer"));
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

    public void updatemark(int mark, int attemp, int status, int lesID, int acc_id) {
        try {
            String query = "INSERT INTO onlinelearning.history_quiz_mark\n"
                    + "(mark, attemp, status, lesID,acc_id) VALUES \n"
                    + "(?,?,?,?,?);";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, mark);
            ps.setInt(2, attemp);
            ps.setInt(3, status);
            ps.setInt(4, lesID);
            ps.setInt(5, acc_id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int getAttemp(int id, int aId) {
        try {
            String query = "SELECT count(*) FROM onlinelearning.history_quiz_mark\n"
                    + " where history_quiz_mark.lesID = ? \n"
                    + " and history_quiz_mark.acc_id = ?;";
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

    public int getMark(int id, int aId) {
        try {
            String query = "select count(*) from (SELECT * FROM onlinelearning.result \n"
                    + "where acId = ? and lessonId = ?\n"
                    + " order by result.id desc limit 5) as quizresult\n"
                    + " where quizresult.user_select = quizresult.is_correct_answer;";
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

    public Quiz_History getQuizHistory(int id, int aid) {
        Quiz_History quizH = new Quiz_History();

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement("SELECT history_quiz_mark.id,\n"
                    + "history_quiz_mark.mark,\n"
                    + "history_quiz_mark.attemp ,\n"
                    + "history_quiz_mark.status ,\n"
                    + "history_quiz_mark.lesID\n"
                    + " FROM onlinelearning.history_quiz_mark \n"
                    + " where history_quiz_mark.acc_id = ? \n"
                    + " and history_quiz_mark.lesID = ?\n"
                    + " and history_quiz_mark.mark = ( SELECT max(history_quiz_mark.mark)\n"
                    + " FROM onlinelearning.history_quiz_mark \n"
                    + " where history_quiz_mark.acc_id = ? \n"
                    + " and history_quiz_mark.lesID = ?)\n"
                    + "  order by history_quiz_mark.attemp desc limit 1;");
            ps.setInt(1, aid);
            ps.setInt(2, id);
            ps.setInt(3, aid);
            ps.setInt(4, id);
            rs = ps.executeQuery();
            while (rs.next()) {

                quizH.setId(rs.getInt("id"));
                quizH.setMark(rs.getInt("mark"));
                quizH.setAttemp(rs.getInt("attemp"));
                quizH.setStatus(rs.getInt("status"));
                quizH.setLesson_id(rs.getInt("lesID"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return quizH;
    }

    public static void main(String[] args) {
        QuizDAO dao = new QuizDAO();
//        LessonDAO lessonDAO = new LessonDAO();
//        List<Lesson> list = lessonDAO.getLessonList(42);
//
//        for (Lesson lt : list) {
//            Quiz_History quizH = dao.getQuizHistory(lt.getId(), 41);
//            lt.setQuiz_history(quizH);
////                  
//        }
//        for (Lesson lt : list) {
//            System.out.println(lt);
//
//        }
        Quiz_History quiz = dao.getQuizHistory(1, 41);
        System.out.println(quiz.getMark());
    }
}
