/*
* ContactDAO.java
*
* All Right Reserved
* Copyright (c) by duongvhhe130409
 */
package dal;

import entity.Contact;
import entity.IModel;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * ContactDAO.<br>
 *
 * <pre>
 * Trong class này sẽ tiến hành các xử lí dưới đây
 *
 *  .getContact.
 *
 * </pre>
 *
 * @author duongvhhe130409
 * @version 1.0
 */
public class ContactDAO extends BaseDAO<IModel> {

    /**
     * getContact.<br>
     * Lấy ra contact đầu tiên.
     *
     * @return a contact.
     */
    public Contact getContact() throws SQLException {
        Contact c = new Contact();
        String sql = "{call getContact (1)}";
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            cs = connection.prepareCall(sql);
            rs = cs.executeQuery();
            if (rs.next()) {
                c.setId(rs.getInt("id"));
                c.setAddress(rs.getString("address"));
                c.setCity(rs.getString("city"));
                c.setCountry(rs.getString("country"));
                c.setPhone(rs.getString("phone"));
                c.setEmail(rs.getString("email"));
                c.setAbout(rs.getString("about"));
            }
        } catch (SQLException ex) {
             Logger.getLogger(ContactDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            if(cs != null) cs.close();
            if(rs != null) rs.close();
        }
        return c;

    }

}
