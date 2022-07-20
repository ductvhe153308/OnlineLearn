/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import dal.AccountDAO;
import dal.CategoryDAO;
import dal.CourseDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import model.Category;

/**
 *
 * @author Dell
 */
@WebServlet(name = "AddMentorServlet", urlPatterns = {"/admin/mentor/add"})
public class AddMentorServlet extends HttpServlet {

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            CategoryDAO cdao = new CategoryDAO();
            ArrayList<Category> cs = cdao.getAllCategories();
            request.setAttribute("categories", cs);
            request.getRequestDispatcher("/admin/addmentor.jsp").forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AddMentorServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String course = request.getParameter("cname");
            int category_id = Integer.parseInt(request.getParameter("category"));
            String password = request.getParameter("password");
            AccountDAO adao = new AccountDAO();
            int added = adao.addMentor(fname, lname, phone, email, password);
            if (added > 0) {
                CourseDAO cdao = new CourseDAO();
                cdao.addNewCourse(course, category_id, added);
            }
            request.getRequestDispatcher("/admin/addmentor.jsp").include(request, response);
            if (added > 0) {
                response.getWriter().print("<script>AP.alertSuccess('Done!');</script>");
            } else {
                response.getWriter().print("<script>AP.alertError('Failed!');</script>");
            }
        } catch (SQLException ex) {
            Logger.getLogger(AddMentorServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
