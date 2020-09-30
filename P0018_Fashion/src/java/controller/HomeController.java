/**
 * HomeController.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package controller;

import dal.PostDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import entity.PostModel;
import java.util.List;

/**
 * HomeController.<br>
 *
 * <pre>
 * Class lấy dữ liệu từ database Thông qua class PostDAO và đẩy dữ liệu lên view để hiển thị lên trình duyệt
 * Trong class này sẽ tiến hành các xử lí dưới đây.
 *
 * DoGet
 *
 * </pre>
 *
 * @author duongvhhe130409
 * @version 1.0
 */
public class HomeController extends HttpServlet {

    /**
     * Hiển thị các bài viết theo id truyền vào
     *
     * doGet
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        try {
            PostDAO user_db = new PostDAO();
            List<PostModel> model = (ArrayList<PostModel>) user_db.getTop(4);
            req.setAttribute("posts", model);
            req.getRequestDispatcher("home.jsp").forward(req, resp);
        } catch (SQLException ex) {
            Logger.getLogger(HomeController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
