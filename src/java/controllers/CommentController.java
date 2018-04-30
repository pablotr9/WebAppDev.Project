package controllers;

import dao.CommentDAO;
import dao.OfferDAO;
import dao.UserDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Checks if the username already exists. If exists the login page is reloaded.
 * If not the user is added in the database and the home page is reloaded
 */
//@WebServlet(name = "registrationController")
public class CommentController extends HttpServlet {
    CommentDAO commentDAO = CommentDAO.getInstance();
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            RequestDispatcher rd;
            String error ="";
            boolean hasErrors=false;
            
            String title = request.getParameter("title");
            String text = request.getParameter("text");
            int offerId = Integer.parseInt(request.getParameter("offerId"));
            int userId = (int) request.getSession().getAttribute("userId");
            
            commentDAO.createComment(title, text, offerId, userId);
            rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        
    }
}
