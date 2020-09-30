/**
 * HomeController.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package controller;

import context.DBContext;
import dao.NewsDAO;
import entity.News;
import java.io.IOException;
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
 * Class lấy dữ liệu từ database Thông qua class NewsDao và đẩy dữ liệu lên view để hiển thị lên trình duyệt
 * Trong class này sẽ tiến hành các xử lí dưới đây.
 *
 </pre>
 * 
 * @author duongvhhe130409
 * @version 1.0
 */
public class HomeController extends HttpServlet {
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     * Lấy dữ liệu từ database và đưa vào servlet
     * lấy ra bài báo mới nhất và top 5 bài báo gần đây
     * 
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try {

            DBContext dbc = new DBContext();
            String imgLink = dbc.getImgLink();
            request.setAttribute("imgLink", imgLink);

            NewsDAO newsDAO = new NewsDAO();
            News top1 = newsDAO.getTop1News();         
            request.setAttribute("top1", top1);

            List<News> list5 = newsDAO.get5NewRecent();
            request.setAttribute("list5", list5);

            request.getRequestDispatcher("home.jsp").forward(request, response);
        } catch (Exception e) {
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
        } catch (Exception ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (Exception ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
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
