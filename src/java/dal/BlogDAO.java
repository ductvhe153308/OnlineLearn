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

    public int getBlogNumberPage() {
        try {
            String query = "select count(*) from onlinelearning.blog  ";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                int countPage = 0;
                countPage = total / 5;
                if (total % 5 != 0) {
                    countPage++;
                }
                return countPage;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public List<Blog> getAllBlogPaging(int index) {
        List<Blog> list = new ArrayList<>();
        try {
            String query = "SELECT blog.id,blog.detail,blog.title,blog.updated_date,blog.image,"
                    + "blog.created_date,blog.short_detail,account.first_name,account.last_name,account.profile_picture  "
                    + " FROM onlinelearning.blog,onlinelearning.account"
                    + " WHERE blog.account_id=account.account_id"
                    + " ORDER BY blog.id asc limit 5 offset ?;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 5);
            rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog(rs.getInt("id"),
                        rs.getString("detail"),
                        rs.getString("title"),
                        LocalDateTime.MAX,
                        rs.getString("image"),
                        rs.getDate("created_date"),
                        rs.getString("short_detail"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("profile_picture"));
                list.add(b);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Blog> getAllBlog() {
        List<Blog> list = new ArrayList<>();
        try {
            String query = "SELECT blog.id,blog.detail,blog.title,blog.updated_date,blog.image,blog.created_date,blog.short_detail,account.first_name,account.last_name,account.profile_picture\n"
                    + "FROM onlinelearning.blog,onlinelearning.account\n"
                    + "WHERE blog.account_id=account.account_id\n"
                    + "ORDER BY blog.created_date desc;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog(rs.getInt("id"),
                        rs.getString("detail"),
                        rs.getString("title"),
                        LocalDateTime.MAX,
                        rs.getString("image"),
                        rs.getDate("created_date"),
                        rs.getString("short_detail"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("profile_picture"));
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
                    + "order by blog.created_date desc limit 3;";
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
                Blog b = new Blog(rs.getInt("id"),
                        rs.getString("detail"),
                        rs.getString("title"),
                        LocalDateTime.MAX,
                        rs.getString("image"),
                        rs.getDate("created_date"),
                        rs.getString("short_detail"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("profile_picture"));
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
                Blog b = new Blog(rs.getInt("id"),
                        rs.getString("detail"),
                        rs.getString("title"),
                        LocalDateTime.MAX,
                        rs.getString("image"),
                        rs.getDate("created_date"),
                        rs.getString("short_detail"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("profile_picture"));
                list.add(b);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void addNewBlog(String title, String shortDetail, String detail, int blog_category, int author) {
        try {
            String query = "INSERT INTO `onlinelearning`.`blog` (`detail`, `account_id`, `title`, `updated_date`, `created_date`, `short_detail`,`blog_category_id`) "
                    + "VALUES (?, ?, ?, now(), now(), ?,?);";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, detail);
            ps.setInt(2, author);
            ps.setString(3, title);
            ps.setString(4, shortDetail);
            ps.setInt(5, blog_category);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void editBlog(String title, String shortDetail, String detail, int blog_category, int id) {
        try {
            String query = "update onlinelearning.blog set blog.title=?,blog.updated_date=now(),blog.short_detail=?,blog.detail=?,blog.blog_category_id=?\n"
                    + "where blog.id=?;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, title);
            ps.setString(2, shortDetail);
            ps.setString(3, detail);
            ps.setInt(4, blog_category);
            ps.setInt(5, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteBlog(int id) {
        try {
            String query = "DELETE FROM `onlinelearning`.`blog` WHERE (`id` = ?);";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Blog> getBlogBySearchName(int index, String searchName) {
        List<Blog> list = new ArrayList<>();
        try {
            String query = "SELECT blog.id,blog.detail,blog.title,blog.updated_date,blog.image,\n"
                    + "blog.created_date,blog.short_detail,account.first_name,account.last_name,account.profile_picture \n"
                    + "FROM onlinelearning.blog,onlinelearning.account\n"
                    + "WHERE blog.account_id=account.account_id\n"
                    + "and blog.title like ?\n"
                    + "ORDER BY blog.id asc limit 4 offset ?;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + searchName + "%");
            ps.setInt(2, (index - 1) * 4);
            rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog(rs.getInt("id"),
                        rs.getString("detail"),
                        rs.getString("title"),
                        LocalDateTime.MAX,
                        rs.getString("image"),
                        rs.getDate("created_date"),
                        rs.getString("short_detail"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("profile_picture"));
                list.add(b);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int getNumberPageBlogBySearch(String searchName) {
        try {
            String query = "SELECT count(*)\n"
                    + "FROM onlinelearning.blog,onlinelearning.account\n"
                    + "where blog.account_id = account.account_id \n"
                    + "and blog.title like ?\n"
                    + "order by blog.id asc";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + searchName + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                int countPage = 0;
                countPage = total / 4;
                if (total % 4 != 0) {
                    countPage++;
                }
                return countPage;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
}
