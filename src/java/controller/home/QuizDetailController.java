/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.home;

import dal.QuizDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Choice;
import model.Quiz;

/**
 *
 * @author admin
 */
public class QuizDetailController extends HttpServlet {

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
        HttpSession session = request.getSession(true);
PrintWriter out = response.getWriter();
         int id =2;
        
        QuizDAO dao =new QuizDAO();
        List<Quiz> quiz = dao.getQuiz1(id);
        int num = dao.getQuizNumberPage(id);
        for(Quiz o :quiz){
           
            List<Choice> choice = dao.getChoices(o.getQuizId());
            o.setChoices(choice);    
        }
        int firtId =quiz.get(0).getQuizId();
        //b2 set data
        request.setAttribute("quiz", quiz);
        request.setAttribute("firtId", firtId);
        
        request.getRequestDispatcher("quiz.jsp").forward(request, response);

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
        int sellect1 = Integer.parseInt(request.getParameter("choice1"));
        int sellect2 = Integer.parseInt(request.getParameter("choice2"));
        int sellect3 = Integer.parseInt(request.getParameter("choice3"));
        int sellect4 = Integer.parseInt(request.getParameter("choice4"));
        int sellect5 = Integer.parseInt(request.getParameter("choice5"));
        
        response.getWriter().write("<h3>"+sellect1+"</h3>");
        response.getWriter().write("<h3>"+sellect2+"</h3>");
        response.getWriter().write("<h3>"+sellect3+"</h3>");
        response.getWriter().write("<h3>"+sellect4+"</h3>");
        response.getWriter().write("<h3>"+sellect5+"</h3>");
        
        
        
//        boolean finish = false;
//        HttpSession session = request.getSession();
//        int id = Integer.parseInt( request.getParameter("id"));
//        int select = Integer.parseInt(request.getParameter("choice"));
//        int currentQuiz = Integer.parseInt(request.getParameter("currentQuiz"));
//        QuizDAO dao = new QuizDAO();
//        
//        String action = request.getParameter("action");
//        
//         Quiz quiz =(Quiz)request.getSession().getAttribute("quiz");	
//         
//        if (select == quiz.getQuizId()) {
//            
//            quiz.setIsSelected(select);
//            
//        } 
//        if ("Next".equals(action)) {
//            currentQuiz++;
//            dao.getChoices(currentQuiz);
//            Quiz q = dao.getQuiz(currentQuiz);
//            session.setAttribute("quiz", q);
//        } else if ("Previous".equals(action)) {
//            
//            currentQuiz--;
//            dao.getChoices(currentQuiz);
//            Quiz q = dao.getQuiz(currentQuiz);
//            session.setAttribute("quiz", q);
//
//        } else if ("Finish Exam".equals(action) ) {
//            finish = true;
////            int result = quiz.calculateResult(quiz, dao.getQuizNumberPage());
////            request.setAttribute("result", result);
////            request.getRequestDispatcher("home.jsp").forward(request, response);
//
//        }
        
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
