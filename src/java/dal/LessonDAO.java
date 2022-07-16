/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
            String query = "SELECT videodetail.link, videodetail.subtitle,course.course_id\n"
                    + "FROM onlinelearning.videodetail,onlinelearning.lesson,onlinelearning.course\n"
                    + "WHERE course.course_id = ?\n"
                    + "AND lesson.courseId = course.course_id\n"
                    + "AND lesson.videoId = videodetail.id;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Lesson lesson = new Lesson(rs.getString("subtitle"), rs.getString("link"), rs.getInt("course_id"));
                return lesson;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
