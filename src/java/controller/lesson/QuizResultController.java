/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.lesson;

import dal.LessonDAO;
import dal.QuizDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Account;
import model.Lesson;
import model.Quiz_History;

/**
 *
 * @author admin
 */
public class QuizResultController extends HttpServlet {

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
//        int id =Integer.parseInt(request.getParameter("id"));

//         
        

        try {
            
            Account a = (Account) request.getSession().getAttribute("user");
            if(a!=null){
            QuizDAO dao = new QuizDAO();
            int id = Integer.parseInt(request.getParameter("id"));
//            int id = 42;
            LessonDAO lessonDAO = new LessonDAO();
            List<Lesson> list = lessonDAO.getLessonList(id);

            for (Lesson lt : list) {
                Quiz_History quizH = dao.getQuizHistory(lt.getId(), a.getAid());
                lt.setQuiz_history(quizH);
            }
            request.setAttribute("id", id);
            request.setAttribute("list", list);
            request.getRequestDispatcher("quiz-result.jsp").forward(request, response);}
            else{ response.sendRedirect("account");}
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

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
        processRequest(request, response);
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
        processRequest(request, response);
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
