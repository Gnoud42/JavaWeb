/**
 * PhotoDAO.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package dal;

import entity.IModel;
import entity.Photo;
import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * PhotoDAO<br>
 *
 * <pre>
 * Class dùng các câu query để lấy dữ liệu từ database
 * Trong class này sẽ tiến hành các xử lí dưới đây.
 *
 *  getPhotoByGallaryId.
 *
 * </pre>
 *
 *
 * @author duongvhhe130409
 * @version 1.0
 *
 */
public class PhotoDAO extends BaseDAO<IModel>{

    /**
     * getPhotoByGallaryId.<br>
     * Lấy ra danh sách photo có gallary_id trùng với gallary_id truyền vào
     *
     * @param id
     * @return
     * @throws SQLException
     */
    public List<Photo> getPhotoByGallaryId(int id) throws SQLException {
        List<Photo> photo = new ArrayList<>();
        String sql = "{call getPhotoByGallaryId (?)}";
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            cs = connection.prepareCall(sql);
            cs.setInt(1, id);
            rs = cs.executeQuery();
            while (rs.next()) {
                Photo pt = new Photo(
                        rs.getInt("id"),
                        rs.getInt("gallary_id"),
                        rs.getString("path"));
                photo.add(pt);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PhotoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (cs != null) {
                cs.close();
            }
            if (rs != null) {
                rs.close();
            }
        }
        return photo;

    }

}
