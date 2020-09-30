/**
 * BaseDAO.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package dal;

import config.DbContext;
import java.sql.Connection;
import entity.IModel;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

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
public abstract class BaseDAO <T extends IModel>{
    protected Connection connection;
    private final DbContext context;
    public BaseDAO() {
        context = new DbContext();
        connection = context.getConnection();
    }
    
        public void close() {
        try {
            if (connection != null) {
                connection.close();
            }
        } catch (SQLException ex) {
               Logger.getLogger(BaseDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
