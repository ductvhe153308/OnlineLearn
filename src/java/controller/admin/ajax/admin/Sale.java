/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin.ajax.admin;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
@WebServlet(name = "Sale", urlPatterns = {"/ajax/admin/sale"})
public class Sale extends HttpServlet {

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
        JsonObject data = new JsonObject();
        String labels[] = {"\"Jul\"", "\"Aug\"", "\"Sep\"", "\"Oct\"", "\"Nov\"", "\"Dec\"", "\"Jan\"", "\"Feb\"", "\"Mar\"", "\"Apr\"", "\"May\"", "\"Jun\""};
        int receiveds[] = {70, 150, 80, 180, 150, 175, 200, 60, 200, 120, 190, 60};
        int pendings[] = {23, 48, 10, 8, 50, 60, 20, 80, 100, 43, 150, 100};
        String slabels = String.join(", ", labels);
        String sreceiveds = String.join(", ",  Arrays.stream(receiveds)
                                .mapToObj(String::valueOf)
                                .toArray(String[]::new));
        String spendings = String.join(", ",  Arrays.stream(pendings)
                                .mapToObj(String::valueOf)
                                .toArray(String[]::new));
        data.addProperty("labels", "["+slabels+"]");
        data.addProperty("receiveds", "["+sreceiveds+"]");
        data.addProperty("pendings", "["+spendings+"]");
        response.getWriter().print(data);
    }
}
