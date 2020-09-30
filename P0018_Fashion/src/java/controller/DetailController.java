/**
 * DetailController.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package controller;

import dal.PostDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import entity.PostModel;

/**
 * DetailController<br>
 *
 * <pre>
 * Class tiến hành xử lý dữ liệu với database
 * Trong class này sẽ tiến hành các xử lí dưới đây.
 *
 * processRequest.
 * 
 * Lấy ra bài theo id
 *
 * </pre>
 *
 *
 * @author duongvhhe130409
 * @version 1.0
 *
 */
public class DetailController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * Controller phụ trách hiển thị detail bài viết
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        int id;
        try {
            id = Integer.parseInt(request.getParameter("id"));

        } catch (NumberFormatException e) {
            response.sendRedirect("404");
            return;
        }
        PostDAO db = new PostDAO();
        PostModel post = db.getPostById(id);
        if (post == null) {
            response.sendRedirect("404");
            return;
        }
        request.setAttribute("post", post);
        request.getRequestDispatcher("detail.jsp").forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(DetailController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(DetailController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
