/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author dell
 */
public class Feedback {
    private int id;
    private int a_id;
    private String first_name;
    private String last_name;
    private String how_find_this_site;
    private String rating;
    private String voting;
    private String comment;
    private Date feedback_time;

    public Feedback() {
    }

    public Feedback(int a_id, String first_name, String last_name, String how_find_this_site, String rating, String voting, String comment, Date feedback_time) {
        this.a_id = a_id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.how_find_this_site = how_find_this_site;
        this.rating = rating;
        this.voting = voting;
        this.comment = comment;
        this.feedback_time = feedback_time;
    }

    public Feedback(int id, int a_id, String first_name, String last_name, String how_find_this_site, String rating, String voting, String comment, Date feedback_time) {
        this.id = id;
        this.a_id = a_id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.how_find_this_site = how_find_this_site;
        this.rating = rating;
        this.voting = voting;
        this.comment = comment;
        this.feedback_time = feedback_time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getA_id() {
        return a_id;
    }

    public void setA_id(int a_id) {
        this.a_id = a_id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getHow_find_this_site() {
        return how_find_this_site;
    }

    public void setHow_find_this_site(String how_find_this_site) {
        this.how_find_this_site = how_find_this_site;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getVoting() {
        return voting;
    }

    public void setVoting(String voting) {
        this.voting = voting;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Date getFeedback_time() {
        return feedback_time;
    }

    public void setFeedback_time(Date feedback_time) {
        this.feedback_time = feedback_time;
    }
    
}
