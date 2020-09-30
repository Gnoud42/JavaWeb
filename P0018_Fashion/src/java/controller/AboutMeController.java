/**
 * AboutMeController.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * AboutMeController<br>
 * 
 * <pre>
 * Class tiến hành xử lý dữ liệu với database
 * Trong class này sẽ tiến hành các xử lí dưới đây.
 * 
 * hiển thị trang aboutme
 * 
 * </pre>
 * 
 * 
 * @author duongvhhe130409
 * @version 1.0
 *
 */
public class AboutMeController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     * 
     * doGet
     * 
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
   
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("aboutme.jsp").forward(request, response);
    }

  
}
