/**
 * DetailController.java
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
 * DetailController<br>
 * 
 * <pre>
 * Class tiến hành xử lý dữ liệu với database
 * Trong class này sẽ tiến hành các xử lí dưới đây.
 * 
 * Lấy ra bài theo id trong danh sách 5 tin gần đây
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
     * put data to servlet.<br>
     * 
     * <pre>
     * 
     * method receives id from jsp then get data from databse and put it to servlet
     * in case of method can't receive id ,handling exception.
     * 
     * Nhận id từ jsp, sau đó lấy dữ liệu từ database và đưa vào servlet
     * Hiện ra đầy đủ 1 bài viết
     * Trong trường hợp không thể nhận id, sẽ di chuyển đến trang 404
     * 
     *<pre>
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
     
        try {
            DBContext ct = new DBContext();
            String imgLink = ct.getImgLink();
            request.setAttribute("imgLink", imgLink);

            int id = Integer.parseInt(request.getParameter("id"));
            NewsDAO nd = new NewsDAO();
            News n = nd.getNewById(id);
         
            request.setAttribute("choice", n);

            News top1 = nd.getTop1News();
            request.setAttribute("top1", top1);

            List<News> list5 = nd.get5NewRecent();
            request.setAttribute("list5", list5);

            request.getRequestDispatcher("detail.jsp").forward(request, response);
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
        } catch (Exception ex) {
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
