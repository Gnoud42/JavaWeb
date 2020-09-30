/**
 * OverviewController.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package controller;

import dal.PostDAO;
import entity.Paging;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import entity.PostModel;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * OverviewController.<br>
 *
 * <pre>
 * Class lấy dữ liệu từ database Thông qua class PostDAO và đẩy dữ liệu lên view để hiển thị lên trình duyệt
 * Trong class này sẽ tiến hành các xử lí dưới đây.
 *
 * </pre>
 *
 * @author duongvhhe130409
 * @version 1.0
 */
public class OverviewController extends HttpServlet {

    /**
     * Chuyển data dưới dạng Date thành format Tháng Năm Ví dụ 31/01/2019 =>
     * JANUARY 2019
     * <pre>
     *
     * </pre>
     */
    private String getDateString(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        String month = calendar.getDisplayName(Calendar.MONTH, Calendar.LONG, Locale.getDefault());
        int year = calendar.get(Calendar.YEAR);
        String year2 = String.valueOf(year);
        String result = month + " " + year2;
        result = result.toUpperCase();
        return result;
    }
        /**
     * Hiển thị tiêu đề các bài viết và gộp nhóm theo thời gian của bài viết
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
        int pageNumber, pageSize = 3;
        try {
            pageNumber = Integer.parseInt(req.getParameter("page"));
        } catch (NumberFormatException ex) {
            pageNumber = 1;

        }
        PostDAO db = new PostDAO();
        try {
            List<PostModel> posts = (ArrayList<PostModel>) db.getPost(pageNumber, pageSize);
            
            Map<String, ArrayList<PostModel>> postMap = new LinkedHashMap<>();
            for (PostModel post : posts) {
                String keys = getDateString(post.getPublicDate());
                ArrayList<PostModel> values = postMap.get(keys);
                if (values == null) {
                    values = new ArrayList<>();
                }
                values.add(post);
                postMap.put(keys, values);
            }

            req.setAttribute("postMap", postMap);
            Paging paging = new Paging(pageNumber, db.getCount(), pageSize);
            if (pageNumber > paging.getLastPage()) {
                req.getRequestDispatcher("404.jsp").forward(req, resp);
                return;
            }

            req.setAttribute("last", paging.getLastPage());
            req.setAttribute("current", paging.getCurrentPage());
            req.setAttribute("previous", paging.getPreviousPage());
            req.setAttribute("next", paging.getNextPage());

            req.getRequestDispatcher("overview.jsp").forward(req, resp);
        } catch (SQLException ex) {
            Logger.getLogger(OverviewController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
