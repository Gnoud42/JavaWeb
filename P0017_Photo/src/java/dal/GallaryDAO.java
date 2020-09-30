/**
 * GallaryDAO.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package dal;

import entity.Gallary;
import entity.IModel;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * GalleryDAO.<br>
 *
 * <pre>
 * Trong class này sẽ tiến hành các xử lí dưới đây
 *
 *  . getAll.
 *  . getOneGallaryByID.
 *
 * </pre>
 *
 * @author duongvhhe130409
 * @version 1.0
 */
public class GallaryDAO extends BaseDAO<IModel> {

    /**
     * getAll.<br>
     * Lất ra danh sách tất cả gallary
     *
     * @return list gallary
     * @throws SQLException
     */
    public List<Gallary> getAll() throws SQLException {
        List<Gallary> list = new ArrayList<>();
        String sql = "{call getAllGallary}";
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            cs = connection.prepareCall(sql);
            rs = cs.executeQuery();
            while (rs.next()) {
                Gallary gl = new Gallary(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getString("cover"),
                        rs.getString("shortdes")
                );
                list.add(gl);
            }
        } catch (SQLException ex) {
            Logger.getLogger(GallaryDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (cs != null) {
                cs.close();
            }
            if (rs != null) {
                rs.close();
            }
        }
        return list;
    }

    /**
     * getOneGallaryByID.<br>
     * Lấy ra danh sách gallary có id trùng với id truyền vào.
     *
     * @param id
     * @return gallary
     * @throws SQLException
     */
    public Gallary getOneGallaryByID(int id) throws SQLException {
        String sql = "{call getOneGallaryByID (?)} ";
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            cs = connection.prepareCall(sql);
            cs.setInt(1, id);
            rs = cs.executeQuery();
            if (rs.next()) {
                Gallary gl = new Gallary(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("description"),
                        rs.getString("cover"),
                        rs.getString("shortdes")
                );
                return gl;
            }
        } catch (SQLException ex) {
            Logger.getLogger(GallaryDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (cs != null) {
                cs.close();
            }
            if (rs != null) {
                rs.close();
            }
        }
        return null;
    }
}
