/*
* GallaryController.java
*
* All Right Reserved
* Copyright (c) by duongvhhe130409
 */
package controller;

import dal.GallaryDAO;
import dal.PhotoDAO;
import entity.Gallary;
import entity.Photo;
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
 * Class lấy dữ liệu từ database thông qua class GalleryDAO,PhotoDAO, tạo và gửi request đến jsp
 * Trong class này sẽ tiến hành các xử lí dưới đây
 *
 *  . ProcessRequest.
 *
 * </pre>
 *
 * @author duongvhhe130409
 * @version 1.0
 */
public class GallaryController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     * Lấy ra 1 gallary có id trùng với id nhận về.
     * Lấy ra danh sách tất cả các gallery.
     * Lấy ra danh sách photo có gallery id trùng với id nhận về.
     * 
     * Tạo và gửi request đến gallary.jsp.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            GallaryDAO gallaryDB = new GallaryDAO();
            PhotoDAO photoDB = new PhotoDAO();
            String id = request.getParameter("id");
            int galleryID = Integer.parseInt(id);

            Gallary gallary = gallaryDB.getOneGallaryByID(galleryID);
            
            if(gallary == null) {
                request.getRequestDispatcher("error.jsp").forward(request, response);
                return ;
            }
            
            List<Gallary> gallaries = gallaryDB.getAll();
            List<Photo> photos = photoDB.getPhotoByGallaryId(galleryID);

            request.setAttribute("gallary", gallary);
            request.setAttribute("photos", photos);
            request.setAttribute("gallaries", gallaries);
            request.setAttribute("id", galleryID);

            request.getRequestDispatcher("gallary.jsp").forward(request, response);
        } catch (IOException | NumberFormatException | SQLException | ServletException e) {
            request.getRequestDispatcher("error.jsp").forward(request, response);

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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(GallaryController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(GallaryController.class.getName()).log(Level.SEVERE, null, ex);
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
