/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.time.LocalDateTime;

/**
 *
 * @author Dell
 */
public class Course {

    private int course_id;
    private int aid;
    private String title;
    private int rated_star;
    private double price;
    private int sale_price_id;
    private String thumnail;
    private LocalDateTime updated_date;
    private String briefinfo;
    private String futuredflag;
    private String introduction;
    private String status;
    private int total_register_number;
    private String first_name;
    private String last_name;
    private String profile_picture;

    public Course() {
    }

    public Course(int course_id, String title, int rated_star, double price, String thumnail, String introduction, int total_register_number, String first_name, String last_name, String profile_picture, int aid) {
        this.course_id = course_id;
        this.title = title;
        this.rated_star = rated_star;
        this.price = price;
        this.thumnail = thumnail;
        this.introduction = introduction;
        this.total_register_number = total_register_number;
        this.first_name = first_name;
        this.last_name = last_name;
        this.profile_picture = profile_picture;
        this.aid = aid;
    }

    public Course(int course_id, int aid, String title, int rated_star, double price, int sale_price_id, int total_register_number) {
        this.course_id = course_id;
        this.aid = aid;
        this.title = title;
        this.rated_star = rated_star;
        this.price = price;
        this.sale_price_id = sale_price_id;
        this.total_register_number = total_register_number;
    }

    public Course(int course_id, int aid, String title, int rated_star, double price, int total_register_number) {
        this.course_id = course_id;
        this.aid = aid;
        this.title = title;
        this.rated_star = rated_star;
        this.price = price;
        this.total_register_number = total_register_number;
    }

    public Course(int course_id, int aid, String title, int rated_star, double price, String thumnail, String introduction, int total_register_number, String first_name, String last_name, String profile_picture) {
        this.course_id = course_id;
        this.aid = aid;
        this.title = title;
        this.rated_star = rated_star;
        this.price = price;
        this.thumnail = thumnail;
        this.introduction = introduction;
        this.total_register_number = total_register_number;
        this.first_name = first_name;
        this.last_name = last_name;
        this.profile_picture = profile_picture;
    }
    
    public Course(int course_id, int aid, String title, int rated_star, double price, String thumnail, String introduction, int total_register_number) {
        this.course_id = course_id;
        this.aid = aid;
        this.title = title;
        this.rated_star = rated_star;
        this.price = price;
        this.thumnail = thumnail;
        this.introduction = introduction;
        this.total_register_number = total_register_number;
    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
        this.course_id = course_id;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getRated_star() {
        return rated_star;
    }

    public void setRated_star(int rated_star) {
        this.rated_star = rated_star;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getSale_price_id() {
        return sale_price_id;
    }

    public void setSale_price_id(int sale_price_id) {
        this.sale_price_id = sale_price_id;
    }

    public String getThumnail() {
        return thumnail;
    }

    public void setThumnail(String thumnail) {
        this.thumnail = thumnail;
    }

    public LocalDateTime getUpdated_date() {
        return updated_date;
    }

    public void setUpdated_date(LocalDateTime updated_date) {
        this.updated_date = updated_date;
    }

    public String getBriefinfo() {
        return briefinfo;
    }

    public void setBriefinfo(String briefinfo) {
        this.briefinfo = briefinfo;
    }

    public String getFuturedflag() {
        return futuredflag;
    }

    public void setFuturedflag(String futuredflag) {
        this.futuredflag = futuredflag;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getTotal_register_number() {
        return total_register_number;
    }

    public void setTotal_register_number(int total_register_number) {
        this.total_register_number = total_register_number;
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

    public String getProfile_picture() {
        return profile_picture;
    }

    public void setProfile_picture(String profile_picture) {
        this.profile_picture = profile_picture;
    }

}
