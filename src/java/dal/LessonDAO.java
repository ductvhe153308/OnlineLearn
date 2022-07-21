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
import model.Lesson;
import utils.DBContext;

/**
 *
 * @author ADMIN
 */
public class LessonDAO {

    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public Lesson getLessonByID(int id) {
        try {
            String query = "SELECT lesson.id,videodetail.link, videodetail.subtitle,course.course_id\n"
                    + "FROM onlinelearning.videodetail,onlinelearning.lesson,onlinelearning.course\n"
                    + "WHERE lesson.id = ?\n"
                    + "AND lesson.courseId = course.course_id\n"
                    + "AND lesson.videoId = videodetail.id;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Lesson lesson = new Lesson(rs.getInt("id"), rs.getString("subtitle"), rs.getString("link"), rs.getInt("course_id"));
                return lesson;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
     public Lesson getTitleLesson(int id) {
        try {
            String query = "SELECT lesson.id,lesson.courseId,lesson.title FROM onlinelearning.lesson where lesson.id = ?;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Lesson lesson = new Lesson();
                lesson.setSubtitle(rs.getString("title"));
                lesson.setCourse_id(rs.getInt("courseId"));
                lesson.setId(rs.getInt("id"));
                return lesson;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    } 

    public List<Lesson> getLessonList(int id) {
        List<Lesson> list = new ArrayList<>();
        try {
            String query = "SELECT lesson.id,lesson.lesson_order,lesson.title,videodetail.link, videodetail.subtitle,course.course_id\n"
                    + "FROM onlinelearning.videodetail,onlinelearning.lesson,onlinelearning.course\n"
                    + "WHERE course.course_id = ?\n"
                    + "AND lesson.courseId = course.course_id\n"
                    + "AND lesson.videoId = videodetail.id;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Lesson lesson = new Lesson(rs.getInt("id"),
                        rs.getInt("lesson_order"),
                         rs.getString("title"),
                         rs.getString("subtitle"),
                         rs.getString("link"),
                         rs.getInt("course_id"));
                list.add(lesson);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    public static void main(String[] args) {
        LessonDAO dao = new LessonDAO();
        Lesson ls = dao.getTitleLesson(2);
        System.out.println(ls.getSubtitle());
    }
}
