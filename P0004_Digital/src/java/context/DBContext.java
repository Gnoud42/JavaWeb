package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 * DBContext<br>
 *
 * <pre>
 * Class mở kết nối đến sqlServer
 * Trong class này sẽ tiến hành các xử lí dưới đây
 *
 *
 * </pre>
 *
 *
 * @author duongvhhe130409
 * @version 1.0
 *
 */
public class DBContext {

    InitialContext initial;
    Context context;
    String dbname, serverName, portNumber, image, username, password;

    public DBContext() {

        /**
         * Constructor.<br>
         * Mở kết nối tới SQLServer Trường hợp gặp lỗi thực hiện exception.
         */
        try {
            initial = new InitialContext();
            Object obj = initial.lookup("java:comp/env");
            context = (Context) obj;
            serverName = context.lookup("serverName").toString();
            dbname = context.lookup("dbName").toString();
            portNumber = context.lookup("portNumber").toString();
            image = context.lookup("image").toString();
            username = context.lookup("username").toString();
            password = context.lookup("password").toString();
        } catch (Exception e) {
        }

    }

    public Connection getConnection() throws ClassNotFoundException, SQLException {
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbname;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, username, password);

    }

    public void closeConnection(ResultSet rs, PreparedStatement ps, Connection con) throws SQLException {
        if (rs != null && !rs.isClosed()) {
            rs.close();
        }
        if (ps != null && !ps.isClosed()) {
            ps.close();
        }
        if (con != null && !con.isClosed()) {
            con.close();
        }
    }

       /**
     * format string
     * <pre>
     *   return image
     *  
     * </pre>
     * 
     */
    public String getImgLink() throws Exception {
        return image;
    }
}
