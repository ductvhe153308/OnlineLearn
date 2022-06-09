/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.home;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DELL
 */
@WebServlet(name = "RecoverController", urlPatterns = {"/recover"})
public class RecoverController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RecoverController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RecoverController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

     @Override

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Get uid, if uid null, get email
        String uid = request.getParameter("uid");

        request.setAttribute("verified", 0);
        //Check if uid is present
        if (uid != null) {
            VerificationToken vt = accDb.getAccountToken(uid);
            long now = Timestamp.valueOf(LocalDateTime.now()).getTime();
            if (vt != null) {
                if (vt.getExpiry() > now) {
                    Account a = accDb.getAccountByID(vt.getUid());
                    request.setAttribute("aid", a.getAid());
                    request.setAttribute("oldPassword", a.getPassword());
                    request.setAttribute("verified", 1);
                } else {
                    request.setAttribute("expired", 1);
                }
            }
        }

        request.getRequestDispatcher("reset_password.jsp").forward(request, response);

        String toAddress = request.getParameter("email");
        //Get email to send link
        try {
            if (toAddress != null) {
                int expiry_time = Integer.parseInt(getInitParameter("expiry"));
                String token = Function.generateRandomTokenWithExpiry(8, expiry_time);
                accDb.updateVerificationTokenByEmail(toAddress, token);
                String url = "http://localhost:8080/WebApplication2/resetpw?uid=" + token;
                String message = "A Reset Password request was made with this email. You can access <a href=\"" + url + "\">this link</a> to reset your password. This link will only be available for "+expiry_time+" minutes.";
                Function.sendEmail(toAddress, "Reset Password", message);
            }
        } catch (UnsupportedEncodingException e) {
            request.setAttribute("failed", 1);
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
            String aid = request.getParameter("aid");
            String password = request.getParameter("new_password");
            
            Account acc = new Account();
            acc.setAid(Integer.parseInt(aid));
            acc.setPassword(password);
            
            accDb.changeAccountPassword(acc);
            accDb.updateVerificationTokenByID(Integer.parseInt(aid), null);
            
            response.sendRedirect("login_controller");
        } catch (Exception e) {
            
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}
