/*
* ContactController.java
*
* All Right Reserved
* Copyright (c) 2020 by duongvhhe130409
 */
package controller;

import dal.ContactDAO;
import dal.GallaryDAO;
import entity.Contact;
import entity.Gallary;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * HomeController.<br>
 *
 * <pre>
 * Class lấy dữ liệu từ database thông qua class ContactDAO, tạo và gửi request đến jsp
 * Trong class này sẽ tiến hành các xử lí dưới đây
 *
 *  . ProcessRequest.
 *
 * </pre>
 *
 * @author duongvhhe130409
 * @version 1.0
 */
public class ContactController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods. 
     * Lấy ra contact đầu tiên. Tạo và gửi request đến contact.jsp
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {

            GallaryDAO gallaryDB = new GallaryDAO();
            List<Gallary> gallaries = gallaryDB.getAll();

            ContactDAO cD = new ContactDAO();
            Contact c = cD.getContact();
            request.setAttribute("gallaries", gallaries);
            request.setAttribute("contact", c);
            request.getRequestDispatcher("contact.jsp").forward(request, response);
        } catch (IOException | SQLException | ServletException ex) {
             Logger.getLogger(ContactController.class.getName()).log(Level.SEVERE, null, ex);
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
