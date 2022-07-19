/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.common;

import dal.AccountDAO;
import model.Account;
import java.io.IOException;
import java.sql.Date;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class RegisterController extends HttpServlet {

   final DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MMM-dd");

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
        request.setCharacterEncoding("UTF-8");
        request.getRequestDispatcher("register.jsp").forward(request, response);
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
        AccountDAO dao = new AccountDAO();
        String firstname = request.getParameter("first_name");
        String lastname = request.getParameter("last_name");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String repass = request.getParameter("password_confirmation");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");

        if (!pass.equals(repass)) {
            response.sendRedirect("register.jsp");
        } else {
            Account checkaccount = dao.checkAccountExist(email);

            if (checkaccount == null) {
                Account newAccount = new Account();
                newAccount.setFirst_name(firstname);
                newAccount.setLast_name(lastname);
                newAccount.setEmail(email);
                newAccount.setPassword(pass);
                newAccount.setGender(Integer.parseInt(gender));
//                if (gender.equals("1")) {
//                    newAccount.setUser_title("Mr");
//                } else if(gender.equals("0")){
//                    newAccount.setUser_title("Mrs");
//                }
                newAccount.setDob(Date.valueOf(dob));
                dao.register(newAccount);
                HttpSession session = request.getSession();
                session.setAttribute("user", newAccount);
                session.setAttribute("email", email);
                session.setAttribute("password", pass);
                request.setAttribute("mess1", "Register Successfully!");
                request.getRequestDispatcher("home.jsp").forward(request, response);

            } else {

                request.setAttribute("mess2", "Register Failed");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
