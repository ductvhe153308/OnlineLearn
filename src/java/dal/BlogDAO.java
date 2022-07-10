/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import model.Blog;
import utils.DBContext;

/**
 *
 * @author ADMIN
 */
public class BlogDAO {

    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public List<Blog> getAllBlog() {
        List<Blog> list = new ArrayList<>();
        try {
            String query = "SELECT blog.id,blog.detail,blog.title,blog.updated_date,blog.image,blog.created_date,blog.short_detail,account.first_name,account.last_name,account.profile_picture\n"
                    + "FROM onlinelearning.blog,onlinelearning.account\n"
                    + "where blog.account_id=account.account_id\n"
                    + "order by blog.created_date desc;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        LocalDateTime.MAX,
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10));
                list.add(b);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Blog> getLatestBlog() {
        List<Blog> list = new ArrayList<>();
        try {
            String query = "select blog.id,blog.title,blog.image,blog.created_date from blog \n"
                    + "order by blog.created_date desc limit 5;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4));
                list.add(b);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Blog getBlogByID(int id) {
        try {
            String query = "SELECT blog.id,blog.detail,blog.title,blog.updated_date,blog.image,blog.created_date,blog.short_detail,account.first_name,account.last_name,account.profile_picture\n"
                    + "FROM onlinelearning.blog,onlinelearning.account\n"
                    + "where blog.id= ?\n"
                    + "and blog.account_id=account.account_id;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        LocalDateTime.MAX,
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10));
                return b;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Blog> getBlogByAuthor(int aid) {
        List<Blog> list = new ArrayList<>();
        try {
            String query = "SELECT blog.id,blog.detail,blog.title,blog.updated_date,blog.image,blog.created_date,blog.short_detail,account.first_name,account.last_name,account.profile_picture\n"
                    + "FROM onlinelearning.blog,onlinelearning.account\n"
                    + "where blog.account_id=account.account_id\n"
                    + "and account.account_id= ?\n"
                    + "order by blog.created_date desc ;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, aid);
            rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        LocalDateTime.MAX,
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10));
                list.add(b);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    
    public void addNewBlog(String title,String shortDetail, String detail, int author) {
        List<Blog> list = new ArrayList<>();
        try {
            String query = "INSERT INTO `onlinelearning`.`blog` (`detail`, `account_id`, `title`, `updated_date`, `created_date`, `short_detail`) "
                    + "VALUES (?, ?, ?, now(), now(), ?);";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, detail);
            ps.setInt(2, author);
            ps.setString(3, title);
            ps.setString(4, shortDetail);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
