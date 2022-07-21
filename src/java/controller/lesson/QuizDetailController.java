/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.lesson;

import dal.QuizDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
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

         int id =Integer.parseInt(request.getParameter("id"));
        
        QuizDAO dao =new QuizDAO();
        List<Quiz> quiz = dao.getQuiz1(id);
        int num = dao.getQuizNumberPage(id);
        for(Quiz o :quiz){
           
            List<Choice> choice = dao.getChoices(o.getQuizId());
            o.setChoices(choice);   
            o.setLesson_id(id);
        }
        int firtId =quiz.get(0).getQuizId();
        //b2 set data
        
        request.setAttribute("quiz", quiz);
        request.setAttribute("firtId", firtId);
        
        request.getRequestDispatcher("quiz-detail.jsp").forward(request, response);

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
        Account a = (Account) request.getSession().getAttribute("user");
       
        int sellect1 = Integer.parseInt(request.getParameter("choice1"));
        int sellect2 = Integer.parseInt(request.getParameter("choice2"));
        int sellect3 = Integer.parseInt(request.getParameter("choice3"));
        int sellect4 = Integer.parseInt(request.getParameter("choice4"));
        int sellect5 = Integer.parseInt(request.getParameter("choice5"));
        
        
       int id =Integer.parseInt(request.getParameter("id"));
        
        QuizDAO dao =new QuizDAO();
        List<Integer> intt1 = dao.getQuizIdListbyLesson(id);
        List<Integer> intt2 = dao.getCorrectChoiceIdList(id);
        dao.setResult(a.getAid(), intt1.get(0), sellect1, intt2.get(0), id);
        dao.setResult(a.getAid(), intt1.get(1), sellect2, intt2.get(1), id);
        dao.setResult(a.getAid(), intt1.get(2), sellect3, intt2.get(2), id);
        dao.setResult(a.getAid(), intt1.get(3), sellect4, intt2.get(3), id);
        dao.setResult(a.getAid(), intt1.get(4), sellect5, intt2.get(4), id);
        int mark = dao.getMark(id,a.getAid()) *2;
        int status;
        if(mark >= 8){
            status = 1;
        }else{status = 0;}
        int attemp = dao.getAttemp(id, a.getAid())+1;
        
        dao.updatemark(mark, attemp, status, id, a.getAid());
        response.sendRedirect("quiz-result.jsp");
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
