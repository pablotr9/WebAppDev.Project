package controllers;

import dao.ApplicationDAO;
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
public class ApplicationController extends HttpServlet {
    ApplicationDAO applicationDAO = ApplicationDAO.getInstance();
    
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
            System.out.println("jejeje" + request.getParameter("description"));
            
            String title = request.getParameter("title");
            String description = request.getParameter("description");
            int offerId = Integer.parseInt(request.getParameter("offerId"));
            int userId = (int) request.getSession().getAttribute("userId");
            System.out.println(title);
            System.out.println(description);
            System.out.println(offerId);
            System.out.println(userId);
            
            
            applicationDAO.createApplication(title, description, userId, offerId);
            rd = request.getRequestDispatcher("viewoffers.jsp");
            rd.forward(request, response);
        
    }
}
