/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Emilio
 */
public class RegistrationController extends HttpServlet {
    UserDAO userDAO=UserDAO.getInstance();
   
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            RequestDispatcher rd;
            String error ="";
            boolean hasErrors=false;
            String username = request.getParameter("uname");
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            String password = request.getParameter("password");
            String rpassword = request.getParameter("rpassword");
            String email=request.getParameter("email");
            String address=request.getParameter("address");
           //Ewrsdf ejej
           System.out.println(username);
           System.out.println(name);
           System.out.println(surname);
           System.out.println(password);
           System.out.println(rpassword);
           System.out.println(email);
           System.out.println(address);
           
            if(userDAO.userExists(username)){
                hasErrors=true;
                error="Username already exists";
            }
            if(hasErrors){
                request.setAttribute("ERRORS", error);
                rd = request.getRequestDispatcher("web.jsp");
                rd.forward(request, response);
            }
            
            else{
            userDAO.createUser(username, password, email, name, surname, address);
            rd = request.getRequestDispatcher("web.jsp");
            rd.forward(request, response);
            }
       
     
    }
}