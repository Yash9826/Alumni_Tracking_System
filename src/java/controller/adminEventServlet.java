/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.AdminDAO;
import dto.Event;
import dto.Message;
import file.FileHandling;
import helper.ConnectionProvider;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author yashc
 */
@MultipartConfig
public class adminEventServlet extends HttpServlet {

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
           
           
            String ename = request.getParameter("event_name");
            String elocation = request.getParameter("event_location");
            String edate = request.getParameter("event_date");
//            String eimage = request.getParameter("event_image");
           Part eimage = request.getPart("event_image");
            
           
            
            Event event = new Event(ename, elocation, edate, eimage.getSubmittedFileName());
            AdminDAO dao = new AdminDAO(ConnectionProvider.getConnection());
            
            
            
             if(dao.saveEvent(event))
            {
                   //out.println("done");
                HttpSession session = request.getSession();
                session.setAttribute("getEvent", event);
                
                out.println("done");
                String path = request.getRealPath("/")+"pic"+File.separator+event.getEimage();
                //FileHandling.deleteFile(path);
                if(FileHandling.saveFile(eimage.getInputStream() , path))
                {
                    //System.out.println("File Done doen");
                }
                //response.sendRedirect("adminIndex.jsp");
            }
          
            else
            {
               out.println("error");
                 //response.sendRedirect("adminEvent.jsp");
                // System.out.println("File not donne");
            }
            
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
