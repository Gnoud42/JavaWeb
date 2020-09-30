/**
 * SearchController.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package controller;

import context.DBContext;
import dao.NewsDAO;
import entity.News;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * SearchController<br>
 *
 * <pre>
 * Class thực hiện việc tìm kiếm bài báo theo tiêu đề
 * Trong class này sẽ tiến hành các xử lí dưới đây.
 *
 *
 * Lấy ra danh sách tìm kiếm được theo tiêu đề
 * Lấy ra 5 bài gần đây
 * </pre>
 *
 *
 * @author duongvhhe130409
 * @version 1.0
 *
 */

public class SearchController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods. Lấy tiêu đề đã nhầm vào ô tìm kiếm , tiến hành tìm kiếm và phân
     * trang
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
            String txt = request.getParameter("searchByTxt");
            String pageIndex = request.getParameter("index");
            if (pageIndex == null) {
                pageIndex = "1";
            }
            int index = Integer.parseInt(pageIndex);
            NewsDAO newsdao = new NewsDAO();
            int total = newsdao.countNewThenSearch(txt);
            int size = 3;
            int maxPage = total / size;
            if (total % size != 0) {
                maxPage++;
            }
            List<News> listSearchByTxt = newsdao.searchNewByTxt(txt, index, size);
            request.setAttribute("list", listSearchByTxt);
            request.setAttribute("maxPage", maxPage);
            request.setAttribute("txt", txt);
            request.setAttribute("index", index);

     
            DBContext ct = new DBContext();
            String imgLink = ct.getImgLink();
            request.setAttribute("linkImg", imgLink);


            News top1 = newsdao.getTop1News();
            request.setAttribute("top1", top1);
            
            List<News> list5 = newsdao.get5NewRecent();
            request.setAttribute("list5", list5);
            
            request.getRequestDispatcher("search.jsp").forward(request, response);
        } catch (Exception e) {
            System.err.println(e.getMessage());
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
