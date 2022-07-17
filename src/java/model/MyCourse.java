/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author ADMIN
 */
public class MyCourse {
    private int id;
    private Date from_date;
    private Date to_date;
    private Date last_access;
    private int cid;
    private int accid1;
    private String title;
    private String thumbnail;
    private String introduction;
    private int rated_star;
    private int total_register_number;
    private String first_name;
    private String last_name;
    private String profile_picture;
    private boolean status;
    private double price;
    
    public MyCourse() {
    }

    public MyCourse(int cid,String title,int rated_star,String thumbnail,String introduction,int total_register_number,String first_name,String last_name,String profile_picture,Date from_date,Date to_date,Date last_access,boolean status,double price) {
        this.cid = cid;
        this.title = title;
        this.rated_star = rated_star;
        this.thumbnail = thumbnail;
        this.introduction = introduction;
        this.total_register_number = total_register_number;
        this.first_name = first_name;
        this.last_name = last_name;
        this.profile_picture = profile_picture;
        this.from_date = from_date;
        this.to_date = to_date;
        this.last_access = last_access;
        this.status = status;
        this.price = price;
    }

    
    public MyCourse(int id, Date from_date, Date to_date, Date last_access, int cid, int accid1) {
        this.id = id;
        this.from_date = from_date;
        this.to_date = to_date;
        this.last_access = last_access;
        this.cid = cid;
        this.accid1 = accid1;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getFrom_date() {
        return from_date;
    }

    public void setFrom_date(Date from_date) {
        this.from_date = from_date;
    }

    public Date getTo_date() {
        return to_date;
    }

    public void setTo_date(Date to_date) {
        this.to_date = to_date;
    }

    public Date getLast_access() {
        return last_access;
    }

    public void setLast_access(Date last_access) {
        this.last_access = last_access;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getAccid1() {
        return accid1;
    }

    public void setAccid1(int accid1) {
        this.accid1 = accid1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public int getRated_star() {
        return rated_star;
    }

    public void setRated_star(int rated_star) {
        this.rated_star = rated_star;
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

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
      
}
