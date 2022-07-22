/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Course;
import model.MyCourse;
import utils.DBContext;

/**
 *
 * @author Dell
 */
public class CourseDAO {

    private Connection conn = null;
    private PreparedStatement ps = null;
    private ResultSet rs = null;

    public ArrayList<Course> getAllCourseBySomeMentor(ArrayList<Account> mentors) {
        ArrayList<Course> courses = new ArrayList<>();
        StringBuilder ids = new StringBuilder();
        mentors.forEach((a) -> {
            ids.append(a.getAid()).append(",");
        });
        ids.deleteCharAt(ids.length() - 1);
        try {
            String query = "select * from course where aid in (?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, ids.toString());
            rs = ps.executeQuery();
            while (rs.next()) {
                Course a = new Course(rs.getInt("course_id"),
                        rs.getInt("aid"),
                        rs.getString("title"),
                        rs.getInt("rated_star"),
                        rs.getDouble("price"),
                        rs.getInt("total_register_number"));
                courses.add(a);
            }
            System.out.println(rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return courses;
    }

//    public List<Course> getAllCourse() {
//        List<Course> list = new ArrayList<>();
//        try {
//            String query = "SELECT course.course_id,course.title,course.rated_star,course.price,course.thumbnail,course.introduction,course.total_register_number,account.first_name,account.last_name,account.profile_picture\n"
//                    + "FROM onlinelearning.course,onlinelearning.account\n"
//                    + "where course.aid = account.account_id;";
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                Course c = new Course(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getInt(3),
//                        rs.getDouble(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getInt(7),
//                        rs.getString(8),
//                        rs.getString(9),
//                        rs.getString(10));
//                list.add(c);
//            }
//            return list;
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return null;
//    }
    public List<Course> getTopRatedCourse(int index) {
        List<Course> list = new ArrayList<>();
        try {
            String query = "SELECT course.course_id,course.title,course.rated_star,"
                    + "course.price,course.thumbnail,course.introduction,"
                    + "course.total_register_number,account.first_name,"
                    + "account.last_name,account.profile_picture, course.aid "
                    + "FROM onlinelearning.course,onlinelearning.account "
                    + "where course.aid = account.account_id and course.rated_star=5"
                    + " order by course.course_id asc limit 4 offset ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 4);
            rs = ps.executeQuery();
            while (rs.next()) {
                Course c = new Course(rs.getInt("course_id"),
                        rs.getString("title"),
                        rs.getInt("rated_star"),
                        rs.getDouble("price"),
                        rs.getString("thumbnail"),
                        rs.getString("introduction"),
                        rs.getInt("total_register_number"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("profile_picture"),
                        rs.getInt("aid")
                );
                list.add(c);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int pageRateCourse() {
        try {
            String query = "SELECT count(*)\n"
                    + "FROM onlinelearning.course\n"
                    + "where  course.rated_star=5;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
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

    public List<Course> getCourseTrending() {
        List<Course> list = new ArrayList<>();
        try {
            String query = "SELECT course.course_id,course.title,course.rated_star,course.price,"
                    + "course.thumbnail,course.introduction,course.total_register_number,account.first_name,"
                    + "account.last_name,account.profile_picture, course.aid\n"
                    + "FROM onlinelearning.course,onlinelearning.account\n"
                    + "where course.aid = account.account_id \n"
                    + "order by course.total_register_number desc limit 4;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Course c = new Course(rs.getInt("course_id"),
                        rs.getString("title"),
                        rs.getInt("rated_star"),
                        rs.getDouble("price"),
                        rs.getString("thumbnail"),
                        rs.getString("introduction"),
                        rs.getInt("total_register_number"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("profile_picture"),
                        rs.getInt("aid")
                );
                list.add(c);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int getNumberPage() {
        try {
            String query = "select count(*) from onlinelearning.course ";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
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

    public List<Course> getAllCoursePaging(int index) {
        List<Course> list = new ArrayList<>();
        try {
            String query = "SELECT course.course_id,course.title,course.rated_star,course.price,"
                    + "course.thumbnail,course.introduction,course.total_register_number,"
                    + "account.first_name,account.last_name,account.profile_picture, course.aid \n"
                    + "FROM onlinelearning.course,onlinelearning.account\n"
                    + "where course.aid = account.account_id \n"
                    + "order by course.course_id asc limit 4 offset ?;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 4);
            rs = ps.executeQuery();
            while (rs.next()) {
                Course c = new Course(rs.getInt("course_id"),
                        rs.getString("title"),
                        rs.getInt("rated_star"),
                        rs.getDouble("price"),
                        rs.getString("thumbnail"),
                        rs.getString("introduction"),
                        rs.getInt("total_register_number"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("profile_picture"),
                        rs.getInt("aid")
                );
                list.add(c);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Course> getCourseByMentor(int aid) {
        List<Course> list = new ArrayList<>();
        try {
            String query = "select course.course_id, aid, title, rated_star, price, thumbnail, introduction, total_register_number, account.first_name, account.last_name, account.profile_picture \n"
                    + "from onlinelearning.course, onlinelearning.account \n"
                    + "where account.account_id = course.aid \n"
                    + "and aid = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, aid);
            rs = ps.executeQuery();
            while (rs.next()) {
                Course c = new Course(rs.getInt("course_id"),
                        rs.getInt("aid"),
                        rs.getString("title"),
                        rs.getInt("rated_star"),
                        rs.getDouble("price"),
                        rs.getString("thumbnail"),
                        rs.getString("introduction"),
                        rs.getInt("total_register_number"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("profile_picture")
                );
                list.add(c);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public Course getCourse(int course_id) throws SQLException {
        Course c = null;
        try {
            String query = "select course_id, aid, title, rated_star, price, thumbnail, introduction,"
                    + " total_register_number from course where course_id = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, course_id);
            rs = ps.executeQuery();
            while (rs.next()) {
                c = new Course(rs.getInt("course_id"),
                        rs.getInt("aid"),
                        rs.getString("title"),
                        rs.getInt("rated_star"),
                        rs.getDouble("price"),
                        rs.getString("thumbnail"),
                        rs.getString("introduction"),
                        rs.getInt("total_register_number"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            rs.close();
            ps.close();
            conn.close();
        }
        return c;
    }

    public void addMyCourse(int cid, int aid) {
        try {
            String query = "INSERT INTO `onlinelearning`.`mycourse` (`from_date`, `to_date`, `last_access`, `cid`, `accid1`, `status`)"
                    + " VALUES (now(), NOW() + INTERVAL 7 DAY, now(), ?, ?, 0);";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, cid);
            ps.setInt(2, aid);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<MyCourse> getMyCourse(int accid1) {
        List<MyCourse> list = new ArrayList<>();
        try {
            String query = "SELECT course.course_id,course.title,course.rated_star,course.thumbnail,course.introduction,course.total_register_number,\n"
                    + "account.first_name,account.last_name,account.profile_picture,\n"
                    + "mycourse.from_date,mycourse.to_date,mycourse.last_access,mycourse.status,course.price\n"
                    + "FROM onlinelearning.course,onlinelearning.account,onlinelearning.mycourse\n"
                    + "WHERE accid1= ?\n"
                    + "AND course.aid = account.account_id\n"
                    + "AND course.course_id = mycourse.cid\n"
                    + "AND mycourse.status = 0;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, accid1);
            rs = ps.executeQuery();
            while (rs.next()) {
                MyCourse c = new MyCourse(rs.getInt("course_id"),
                        rs.getString("title"),
                        rs.getInt("rated_star"),
                        rs.getString("thumbnail"),
                        rs.getString("introduction"),
                        rs.getInt("total_register_number"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("profile_picture"),
                        rs.getDate("from_date"),
                        rs.getDate("to_date"),
                        rs.getDate("last_access"),
                        rs.getBoolean("status"),
                        rs.getDouble("price"));
                list.add(c);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<MyCourse> getMyAccomplishment(int aid) {
        List<MyCourse> list = new ArrayList<>();
        try {
            String query = "SELECT course.course_id,course.title,course.rated_star,course.thumbnail,course.introduction,course.total_register_number,\n"
                    + "account.first_name,account.last_name,account.profile_picture,\n"
                    + "mycourse.from_date,mycourse.to_date,mycourse.last_access,mycourse.status,course.price\n"
                    + "FROM onlinelearning.course,onlinelearning.account,onlinelearning.mycourse\n"
                    + "WHERE accid1= ?\n"
                    + "AND course.aid = account.account_id\n"
                    + "AND course.course_id = mycourse.cid\n"
                    + "AND mycourse.status = 1;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, aid);
            rs = ps.executeQuery();
            while (rs.next()) {
                MyCourse c = new MyCourse(rs.getInt("course_id"),
                        rs.getString("title"),
                        rs.getInt("rated_star"),
                        rs.getString("thumbnail"),
                        rs.getString("introduction"),
                        rs.getInt("total_register_number"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("profile_picture"),
                        rs.getDate("from_date"),
                        rs.getDate("to_date"),
                        rs.getDate("last_access"),
                        rs.getBoolean("status"),
                        rs.getDouble("price"));
                list.add(c);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<MyCourse> getMyPurchase(int aid) {
        List<MyCourse> list = new ArrayList<>();
        try {
            String query = "SELECT course.course_id,course.title,course.rated_star,course.thumbnail,course.introduction,course.total_register_number,\n"
                    + "account.first_name,account.last_name,account.profile_picture,\n"
                    + "mycourse.from_date,mycourse.to_date,mycourse.last_access,mycourse.status,course.price\n"
                    + "FROM onlinelearning.course,onlinelearning.account,onlinelearning.mycourse\n"
                    + "WHERE accid1= ?\n"
                    + "AND course.aid = account.account_id\n"
                    + "AND course.course_id = mycourse.cid";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, aid);
            rs = ps.executeQuery();
            while (rs.next()) {
                MyCourse c = new MyCourse(rs.getInt("course_id"),
                        rs.getString("title"),
                        rs.getInt("rated_star"),
                        rs.getString("thumbnail"),
                        rs.getString("introduction"),
                        rs.getInt("total_register_number"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("profile_picture"),
                        rs.getDate("from_date"),
                        rs.getDate("to_date"),
                        rs.getDate("last_access"),
                        rs.getBoolean("status"),
                        rs.getDouble("price"));
                list.add(c);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void addNewCourse(String course, int category_id, int mentor_id) throws SQLException {
        try {
            String query = "INSERT INTO `course` (`aid`, `title`, `rated_star`, `price`, `total_register_number`, `course_category_id`) "
                    + "VALUES (?,?,0,0,0,?);";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, mentor_id);
            ps.setString(2, course);
            ps.setInt(3, category_id);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        } finally {
            ps.close();
            conn.close();
        }
    }

    public List<Course> getCourseBySearchName(int index, String searchName) {
        List<Course> list = new ArrayList<>();
        try {
            String query = "SELECT course.course_id,course.title,course.rated_star,course.price,\n"
                    + "course.thumbnail,course.introduction,course.total_register_number,\n"
                    + "account.first_name,account.last_name,account.profile_picture, course.aid \n"
                    + "FROM onlinelearning.course,onlinelearning.account\n"
                    + "where course.aid = account.account_id \n"
                    + "and course.title like ?\n"
                    + "order by course.course_id asc limit 4 offset ?;";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + searchName + "%");
            ps.setInt(2, (index - 1) * 4);
            rs = ps.executeQuery();
            while (rs.next()) {
                Course c = new Course(rs.getInt("course_id"),
                        rs.getString("title"),
                        rs.getInt("rated_star"),
                        rs.getDouble("price"),
                        rs.getString("thumbnail"),
                        rs.getString("introduction"),
                        rs.getInt("total_register_number"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("profile_picture"),
                        rs.getInt("aid")
                );
                list.add(c);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int getNumberPageBySearch(String searchName) {
        try {
            String query = "SELECT count(*)\n"
                    + "FROM onlinelearning.course,onlinelearning.account\n"
                    + "where course.aid = account.account_id \n"
                    + "and course.title like ?\n"
                    + "order by course.course_id asc";
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

    public List<Course> getCourseByCategoryName(int index, String category_name) {
        List<Course> list = new ArrayList<>();
        try {
            String query = "select course.course_id,course.title,course.rated_star,course.price ,thumbnail,course.introduction,course.total_register_number,\n"
                    + "account.first_name,account.last_name,account.profile_picture, course.aid\n"
                    + "FROM onlinelearning.course,onlinelearning.account, onlinelearning.coursecategory\n"
                    + "where course.aid = account.account_id\n"
                    + "and course.course_category_id = coursecategory.id\n"
                    + "and coursecategory.name = ?\n"
                    + "order by course.course_id asc limit 4 offset ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, category_name);
            ps.setInt(2, (index - 1) * 4);
            rs = ps.executeQuery();
            while (rs.next()) {
                Course c = new Course(rs.getInt("course_id"),
                        rs.getString("title"),
                        rs.getInt("rated_star"),
                        rs.getDouble("price"),
                        rs.getString("thumbnail"),
                        rs.getString("introduction"),
                        rs.getInt("total_register_number"),
                        rs.getString("first_name"),
                        rs.getString("last_name"),
                        rs.getString("profile_picture"),
                        rs.getInt("aid")
                );
                list.add(c);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public int getNumberPageBySearchCategory(String category_name) {
        try {
            String query = "SELECT count(*)\n"
                    + "FROM onlinelearning.course,onlinelearning.account, onlinelearning.coursecategory\n"
                    + "where course.aid = account.account_id\n"
                    + "and course.course_category_id = coursecategory.id\n"
                    + "and coursecategory.name = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, category_name);
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

    public static void main(String[] args) {
        CourseDAO dao = new CourseDAO();

        List<Course> list = dao.getCourseByCategoryName(1, "Design");
        for (Course o : list) {
            System.out.println(o);
        }
    }
}
