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
            String query = "SELECT * FROM onlinelearning.blog;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Blog b = new Blog(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4), 
                        LocalDateTime.MAX,
                        rs.getString(6), 
                        rs.getDate(7), 
                        rs.getInt(8), 
                        rs.getInt(9),
                        rs.getString(10));
                list.add(b);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
