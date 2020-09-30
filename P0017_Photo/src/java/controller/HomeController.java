/*
* HomeController.java
*
* All Right Reserved
* Copyright (c) by duongvhhe130409
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
 * Class lấy dữ liệu từ database thông qua class GalleryDAO,ContactDAO,tạo và gửi request đến jsp
 * Trong class này sẽ tiến hành các xử lí dưới đây
 *
 *  .doGet.
 *
 * </pre>
 *
 * @author duongvhhe130409
 * @version 1.0
 */
public class HomeController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        GallaryDAO gallaryDB = null;
        ContactDAO contactDB = null;
        try {
            gallaryDB = new GallaryDAO();
            contactDB = new ContactDAO();
            List<Gallary> gallaries = gallaryDB.getAll();
            Contact contact = contactDB.getContact();
            request.setAttribute("gallaries", gallaries);
            request.setAttribute("contact", contact);
            
            request.getRequestDispatcher("home.jsp").forward(request, response);

        } catch (IOException | SQLException | ServletException ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);

        } finally {
            if(gallaryDB != null) gallaryDB.close();
            if(contactDB != null) contactDB.close();
        }

    }

}
