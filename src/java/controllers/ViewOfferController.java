package controllers;

import dao.OfferDAO;
import dao.UserDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import model.Comment;
import model.Offer;

/**
 * Checks if the username already exists. If exists the login page is reloaded.
 * If not the user is added in the database and the home page is reloaded
 */
//@WebServlet(name = "registrationController")
public class ViewOfferController extends HttpServlet {
    OfferDAO offerDAO = OfferDAO.getInstance();
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Offer offer = new Offer();
            offer = offerDAO.getOffer(Integer.parseInt(request.getParameter("offerId")));
            request.setAttribute("Offer", offer);
            RequestDispatcher rd;
            rd = request.getRequestDispatcher("/viewoffer.jsp");
            rd.forward(request, response);
    }
}
