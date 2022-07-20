/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.ajax.mentee;

import com.google.gson.JsonArray;
import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
@WebServlet(name = "Sort", urlPatterns = {"/admin/ajax/mentee/sort"})
public class Sort extends HttpServlet {


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
            int index = Integer.parseInt(request.getParameter("index"));
            boolean asc = Boolean.valueOf(request.getParameter("asc"));
            AccountDAO adao = new AccountDAO();
            JsonArray data = new JsonArray();
            switch (index) {
                case 0:
                    data = adao.getSortedListMentee0(asc);
                    break;
                case 1:
                    data = adao.getSortedListMentee1(asc);
                    break;
                case 2:
                    data = adao.getSortedListMentee2(asc);
                    break;
                default:
                    data = adao.getListMentee(1, 10);
                    break;
            }
            response.getWriter().print(data);
        } catch (SQLException ex) {
            Logger.getLogger(Sort.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
