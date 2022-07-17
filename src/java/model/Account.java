/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author admin
 */
public class Account {

    private int aid;
    private String first_name;
    private String last_name;
    private String address;
    private String email;
    private String password;
    private String phone;
    private int role_id;
    private String token;
    private int enabled;
    private String user_title;
    private Date created_at;
    private int gender;
    private Date dob;
    private String pfp;
    private int count;

    public Account() {
    }
    
    public Account(int aid, String email, String password, String pfp,int role_id, String first_name, String last_name, int enabled) {
        this.aid = aid;
        this.email = email;
        this.password = password;
        this.pfp = pfp;
        this.role_id = role_id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.enabled = enabled;
    }
    
    public Account(String first_name, String last_name, int count) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.count = count;
    }

    public Account(int aid, String first_name, String last_name, String pfp) {
        this.aid = aid;
        this.first_name = first_name;
        this.last_name = last_name;
        this.pfp = pfp;
    }

    public Account(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public Account(int aid, String email, String first_name, String last_name, String phone) {
        this.aid = aid;
        this.email = email;
        this.first_name = first_name;
        this.last_name = last_name;
        this.phone = phone;
    }

    public Account(int aid, String email, String password) {
        this.aid = aid;
        this.email = email;
        this.password = password;
    }

    public Account(String first_name, String last_name, String email, String password, String phone) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.password = password;
        this.phone = phone;
    }

    public Account(int aid, String first_name, String last_name, String email, String password, String phone) {
        this.aid = aid;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.password = password;
        this.phone = phone;
    }

    public Account(int aid, String first_name, String last_name, String email, String password, String phone, int role_id) {
        this.aid = aid;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.role_id = role_id;
    }

    public Account(int aid, String first_name, String last_name, String email, String password, String phone, int role_id, String token, String user_title, Date created_at, int gender, Date dob, String pfp) {

        this.aid = aid;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.role_id = role_id;
        this.token = token;
        this.user_title = user_title;
        this.created_at = created_at;
        this.gender = gender;
        this.dob = dob;
        this.pfp = pfp;
    }
    public Account(int aid, String first_name, String last_name, String email, String password, String phone, int role_id, String token, int enabled, Date created_at, int gender, Date dob, String pfp) {
        this.aid = aid;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.role_id = role_id;
        this.token = token;
        this.enabled = enabled;
        this.created_at = created_at;
        this.gender = gender;
        this.dob = dob;
        this.pfp = pfp;
    }

   

    public Account(int aid, String first_name, String last_name, String phone, int role_id,int gender, String pfp) {
        this.aid = aid;
        this.first_name = first_name;
        this.last_name = last_name;
        this.phone = phone;
        this.role_id = role_id;
        this.gender = gender;
        this.pfp = pfp;
    }
    
    public Account(int aid, String first_name, String last_name, String email, String phone, int gender, Date dob, String pfp) {
        this.aid = aid;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.phone = phone;
        this.gender = gender;
        this.dob = dob;
        this.pfp = pfp;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUser_title() {
        return user_title;
    }

    public void setUser_title(String user_title) {
        this.user_title = user_title;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public String getPfp() {
        return pfp;
    }

    public void setPfp(String pfp) {
        this.pfp = pfp;
    }

    public int getEnabled() {
        return enabled;
    }

    public void setEnabled(int enabled) {
        this.enabled = enabled;
    }

    @Override
    public String toString() {
        return "Account{" + "aid=" + aid + "| fullname=" + first_name + " " + last_name + "| email=" + email + "| password=" + password + "| phone=" + phone + "| role_id=" + role_id + "| token=" + token + "| enabled=" + enabled + "| user_title=" + user_title + "| created_at=" + created_at + "| gender=" + gender + "| dob=" + dob + "| pfp=" + pfp + "| count=" + count + '}';
    }

}
