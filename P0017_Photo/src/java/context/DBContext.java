/**
 * DBContext.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package context;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.naming.Context;
import javax.naming.InitialContext;

/**
 * DbContext<br>
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

    private String hostname;
    private String port;
    private String username;
    private String password;
    private String databaseName;

    /**
     * Constructor.<br>
     * Khởi tạo các giá trị để kết nối db
     */
    public DBContext() {
        try {
            InitialContext initialContext = new InitialContext();
            Context enviromentContext = (Context) initialContext.lookup("java:/comp/env");
            hostname = (String) enviromentContext.lookup("DB_HOSTNAME");
            port = (String) enviromentContext.lookup("DB_PORT");
            username = (String) enviromentContext.lookup("DB_USERNAME");
            password = (String) enviromentContext.lookup("DB_PASSWORD");
            databaseName = (String) enviromentContext.lookup("DB_DATABASE_NAME");
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
        }
    }
  

    /**
     * Hàm tạo db connection
     * @return database connection
     */
    public Connection getConnection() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = String.format("jdbc:sqlserver://%s:%s;databaseName=%s", hostname, port, databaseName);
            return DriverManager.getConnection(url, username, password);
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
            return null;
        }
    }

}
