/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.time.LocalDateTime;

/**
 *
 * @author ADMIN
 */
public class Blog {
    private int id;
    private String detail;
    private int account_id;
    private String title;
    private LocalDateTime updated_date;
    private String image;
    private Date created_date;
    private int comment_id;
    private int blog_category_id;
    private String short_detail;
    private String first_name;
    private String last_name;
    private String profile_picture;
    
    public Blog() {
    }
    
    public Blog(int id, String title,String image, Date created_date) {
        this.id = id;
        this.title = title;
        this.image = image;
        this.created_date = created_date;
    }
    
    public Blog(int id, String detail, int account_id, String title, LocalDateTime updated_date, String image, Date created_date, int comment_id, int blog_category_id, String short_detail) {
        this.id = id;
        this.detail = detail;
        this.account_id = account_id;
        this.title = title;
        this.updated_date = updated_date;
        this.image = image;
        this.created_date = created_date;
        this.comment_id = comment_id;
        this.blog_category_id = blog_category_id;
        this.short_detail = short_detail;
    }

    public Blog(int id, String detail, String title, LocalDateTime updated_date, String image, Date created_date, String short_detail, String first_name, String last_name, String profile_picture) {
        this.id = id;
        this.detail = detail;
        this.title = title;
        this.updated_date = updated_date;
        this.image = image;
        this.created_date = created_date;
        this.short_detail = short_detail;
        this.first_name = first_name;
        this.last_name = last_name;
        this.profile_picture = profile_picture;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public int getAccount_id() {
        return account_id;
    }

    public void setAccount_id(int account_id) {
        this.account_id = account_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public LocalDateTime getUpdated_date() {
        return updated_date;
    }

    public void setUpdated_date(LocalDateTime updated_date) {
        this.updated_date = updated_date;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getCreated_date() {
        return created_date;
    }

    public void setCreated_date(Date created_date) {
        this.created_date = created_date;
    }

    public int getComment_id() {
        return comment_id;
    }

    public void setComment_id(int comment_id) {
        this.comment_id = comment_id;
    }

    public int getBlog_category_id() {
        return blog_category_id;
    }

    public void setBlog_category_id(int blog_category_id) {
        this.blog_category_id = blog_category_id;
    }

    public String getShort_detail() {
        return short_detail;
    }

    public void setShort_detail(String short_detail) {
        this.short_detail = short_detail;
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
