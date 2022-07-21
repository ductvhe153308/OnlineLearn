/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Lesson {
    private int id;
    private String subtitle;
    private String video;
    private boolean status;
    private int course_id;
    private int lesson_order;
    private String title;
    private Quiz_History quiz_history;
    
    public Lesson() {
    }
    public Lesson(int id,int lesson_order,String title,String subtitle, String video,int course_id) {
        this.id = id;
        this.lesson_order = lesson_order;
        this.title = title;
        this.subtitle = subtitle;
        this.video = video;
        this.course_id = course_id;
    }
    public Lesson(int id,String subtitle, String video,int course_id) {
        this.id = id;
        this.subtitle = subtitle;
        this.video = video;
        this.course_id = course_id;
    }
    
    public Lesson(String subtitle, String video,int course_id) {
        this.subtitle = subtitle;
        this.video = video;
        this.course_id = course_id;
    }
    
    public Lesson(int id, String subtitle, String video) {
        this.id = id;
        this.subtitle = subtitle;
        this.video = video;
    }

    public Quiz_History getQuiz_history() {
        return quiz_history;
    }

    public void setQuiz_history(Quiz_History quiz_history) {
        this.quiz_history = quiz_history;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    public int getLesson_order() {
        return lesson_order;
    }

    public void setLesson_order(int lesson_order) {
        this.lesson_order = lesson_order;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    
    
}
