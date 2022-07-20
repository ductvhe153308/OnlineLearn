/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.ajax.admin;

import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
@WebServlet(name = "Status", urlPatterns = {"/ajax/admin/status"})
public class Status extends HttpServlet {


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
            int aid = Integer.parseInt(request.getParameter("aid"));
            int enabled = Integer.parseInt(request.getParameter("enabled"));
            AccountDAO adao = new AccountDAO();
            int change = adao.updateStatus(aid, enabled);
            if (change <= 0) {
                response.getWriter().print("DB_ERROR");
            }else{
                response.getWriter().print("Success");
            }
        } catch (Exception e) {
        }
    }

}
