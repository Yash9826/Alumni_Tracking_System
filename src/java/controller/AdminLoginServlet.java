/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.AdminDAO;
import dto.Admin;
import dto.Message;
import helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author yashc
 */
public class AdminLoginServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            
            
//            fetching data from form
            
            String email = request.getParameter("admin_email");
            
            String password = request.getParameter("admin_password");
            
          
            
            AdminDAO dao = new AdminDAO(ConnectionProvider.getConnection());
            Admin admin = dao.getAdminByEmailAndPassword(email, password);
            
             if(admin==null || admin.getEmail().equals("") || admin.getName().equalsIgnoreCase(""))
           {
               Message msg = new Message("Invalide Details ! Try with another","error","alert-danger");
                 HttpSession s = request.getSession();
                 s.setAttribute("msg", msg);
                 response.sendRedirect("adminLogin.jsp");
           }
            else
            {
                
                
                 
                 HttpSession session = request.getSession();
                 session.setAttribute("currentAdmin", admin);
                 
                 
                 response.sendRedirect("adminIndex.jsp");
            }

//              String adminTablePassword = admin.getPassword();
//              String adminTableName = admin.getName();
//              
//             if(adminTableName!=null && adminTablePassword!=null && !adminTableName.trim().equals("") && adminTablePassword.equals(password))
//     {
//                 
//                 
//                 HttpSession session = request.getSession();
//                 session.setAttribute("currentAdmin", admin);
//                 response.sendRedirect("adminIndex.jsp");
//     }
//             else
//             {
//                 out.println("Something get wrong....");
//             }
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
