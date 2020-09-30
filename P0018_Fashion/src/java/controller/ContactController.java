/**
 * ContactController.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package controller;

import dal.PostDAO;
import entity.Info;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
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
 * .doPost
 *
 * hiển thị trang contact
 *
 * </pre>
 *
 *
 * @author duongvhhe130409
 * @version 1.0
 *
 */
public class ContactController extends HttpServlet {

    private boolean isEmpty(String input) {
        return input.trim().equals("");
    }

    /**
     * regex email
     */
    public static final Pattern VALID_EMAIL_ADDRESS_REGEX
            = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

    private boolean isEmailAddress(String input) {
        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(input);
        return matcher.find();
    }

    /**
     * Hiển thị trang contact
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("contact.jsp").forward(request, response);
    }

    /**
     * ContactController xử lý contact
     *
     * @param request
     * @param respone
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse respone) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("text");
        boolean success = true;

        List<String> errorList = new ArrayList<>();
        if (isEmpty(name)) {
            errorList.add("Name cant not empty!");
            success = false;
        }
        if (isEmpty(email)) {
            errorList.add("Email can not empty");
            success = false;

        }
        if (!isEmailAddress(email)) {
            errorList.add("Invalid email address");
            success = false;

        }
        if (isEmpty(message)) {
            errorList.add("Text can not empty");
            success = false;

        }
        if (success) {
            try {
                PostDAO db = new PostDAO();
                Info info = new Info();
                info = new Info(name, email, message);
                db.addInfo(info);
            } catch (SQLException ex) {
                Logger.getLogger(ContactController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        request.setAttribute("status", success ? "success" : "fails");
        request.setAttribute("error_list", errorList);
        request.getRequestDispatcher("contact.jsp").forward(request, respone);

    }

}
