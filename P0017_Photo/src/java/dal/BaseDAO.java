/**
 * BaseDAO.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package dal;


import context.DBContext;
import entity.IModel;
import java.sql.Connection;


/**
 * BaseDAO.<br>
 *
 * <pre>
 * Abstract class để kế thừa connection và dbcontext
 * </pre>
 *
 * @author duongvhhe130409
 * @version 1.0
 */
public abstract class BaseDAO<T extends IModel> {

    protected Connection connection;
    private final DBContext context;

    public BaseDAO() {
        context = new DBContext();
        connection = context.getConnection();
    }

    public void close() {
        try {
            if (connection != null) {
                connection.close();
            }
        } catch (Exception ex) {

        }
    }
}
