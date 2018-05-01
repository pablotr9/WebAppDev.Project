    package controllers;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
    
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
 * @author Pablo
 */
public class LoginController extends HttpServlet {
UserDAO userDAO=UserDAO.getInstance();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
            //Array with errors
            ArrayList<String> errors = new ArrayList();
            
            String username = request.getParameter("uname");
            String password = request.getParameter("password");
            
            System.out.println(username);
            System.out.println(password);
            
            if(userDAO.isPasswordCorrect(username, password)){
                request.getSession().setAttribute("USER", username);
                int userId = userDAO.getUserId(username);
                request.getSession().setAttribute("userId", userId);
                RequestDispatcher rd = request.getRequestDispatcher("weblogged.jsp");
                rd.forward(request, response);
            } else {
                // does not exist
                errors.add("There was an error in your credentials,\n username or password are incorrect");
                request.setAttribute("errors", errors);
                RequestDispatcher rd = request.getRequestDispatcher("web.jsp");
                rd.forward(request, response);
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
