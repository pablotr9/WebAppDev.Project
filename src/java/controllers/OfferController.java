package controllers;

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
public class OfferController extends HttpServlet {
    OfferDAO offerDAO = OfferDAO.getInstance();
    
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
            String description = request.getParameter("description");
            double price = Double.parseDouble(request.getParameter("price"));
            int userId = (int) request.getSession().getAttribute("userId");
            String category = request.getParameter("category");
            
            offerDAO.createOffer(title, description, price, userId, category);
            rd = request.getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        
    }
}
