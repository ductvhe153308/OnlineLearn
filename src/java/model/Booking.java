/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Dell
 */
public class Booking {

    private int id;
    private Account mentee;
    private Account mentor;
    private Course course;
    private int booking_time;
    private int status;
    private int duration;

    public Booking() {
    }

    public Booking(int id, Account mentee, Account mentor, Course course, int booking_time, int status, int duration) {
        this.id = id;
        this.mentee = mentee;
        this.mentor = mentor;
        this.course = course;
        this.booking_time = booking_time;
        this.status = status;
        this.duration = duration;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Account getMentee() {
        return mentee;
    }

    public void setMentee(Account mentee) {
        this.mentee = mentee;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public int getBooking_time() {
        return booking_time;
    }

    public void setBooking_time(int booking_time) {
        this.booking_time = booking_time;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

}
