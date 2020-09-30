/**
 * PostDAO.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409
 */
package dal;

import entity.IModel;
import entity.Info;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import entity.PostModel;
import java.sql.CallableStatement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * PostDAO<br>
 *
 * <pre>
 * Class dùng các câu query để lấy dữ liệu từ database
 * Trong class này sẽ tiến hành các xử lí dưới đây.
 *
 *
 * get Posts.
 * get Count.
 * get Top.
 * get PostByID
 *
 * </pre>
 *
 *
 * @author duongvhhe130409
 * @version 1.0
 *
 */
public class PostDAO extends BaseDAO<IModel> {

    /**
     * Lấy ra các bài viết
     * <pre>
     *
     * </pre>
     *
     * @param pageNumber
     * @param pageSize
     * @return
     * @throws SQLException
     */
    public List<PostModel> getPost(int pageNumber, int pageSize) throws SQLException {
        String sql = "{call getPosts (?, ?)}";
        CallableStatement call = null;
        ResultSet rs = null;
        List<PostModel> result = new ArrayList<>();
        try {
            call = connection.prepareCall(sql);
            call.setInt(1, pageNumber);
            call.setInt(2, pageSize);
            rs = call.executeQuery();
            while (rs.next()) {
                PostModel model = new PostModel();
                model.setId(rs.getInt("id"));
                model.setTitle(rs.getString("title"));
                model.setAvatar(rs.getString("avatar"));
                model.setPublicDate(rs.getDate("public_date"));
                model.setContent(rs.getString("content"));
                model.setLike(rs.getInt("like"));
                model.setComment(rs.getInt("comment"));
                model.setShortdes(rs.getString("shortdes"));
                result.add(model);

            }
            return result;
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (call != null) {
                call.close();
            }
            if (rs != null) {
                rs.close();
            }
        }
        return null;

    }

    /**
     * Đếm số bài viết
     * <pre>
     * Đếm tổng số các viết
     * </pre>
     *
     * @return
     * @throws java.sql.SQLException
     */
    public int getCount() throws SQLException {
        String sql = "{call getCount}";
        CallableStatement call = null;
        ResultSet rs = null;
        try {
            call = connection.prepareCall(sql);
            rs = call.executeQuery();
            if (rs.next()) {
                return rs.getInt("count");
            }

        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (call != null) {
                call.close();
            }
            if (rs != null) {
                rs.close();
            }
        }
        return 0;
    }

    /**
     * Lấy ra số lượng bài viết
     * <pre>
     * Lấy ra số lượng bài viết theo tham số truyền vào
     * </pre>
     *
     * @param top
     * @return result
     * @throws java.sql.SQLException
     */
    public List<PostModel> getTop(int top) throws SQLException {
        String sql = "{call getTop (?)}";
        CallableStatement call = null;
        ResultSet rs = null;
        List<PostModel> result = new ArrayList<>();
        try {
            call = connection.prepareCall(sql);
            call.setInt(1, top);
            rs = call.executeQuery();
            while (rs.next()) {
                PostModel data = new PostModel(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("avatar"),
                        rs.getDate("public_date"),
                        rs.getString("content"),
                        rs.getString("shortdes")
                );
                result.add(data);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (call != null) {
                call.close();
            }
            if (rs != null) {
                rs.close();
            }
        }
        return result;

    }

 
    /**
     * Hiển thị bài viết
     * <pre>
     * get post by id
     * Lấy ra bài viết theo id truyền vào
     *
     * @param id int
     * @return data
     * </pre>
     *
     * @throws java.sql.SQLException
     */
    public PostModel getPostById(int id) throws SQLException {
        String sql = "{call getPostById (?)}";
        CallableStatement call = null;
        ResultSet rs = null;
        try {
            call = connection.prepareCall(sql);
            call.setInt(1, id);
            rs = call.executeQuery();
            if (rs.next()) {
                PostModel data = new PostModel(
                        rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("avatar"),
                        rs.getDate("public_date"),
                        rs.getString("content"),
                        rs.getString("shortdes")
                );

                return data;
            }
        } catch (SQLException ex) {
            Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (call != null) {
                call.close();
            }
            if (rs != null) {
                rs.close();
            }

        }
        return null;
    }
    
    public void addInfo(Info data) throws SQLException{
       String sql = "{call addInfo (?,?,?)}";
        CallableStatement statement = null;
        ResultSet rs = null;
        try {
            statement = connection.prepareCall(sql);
            statement.setString(1, data.getName());
            statement.setString(2, data.getEmail());
            statement.setString(3, data.getMessage());
            
            statement.executeUpdate();
        } catch (SQLException ex) {
             Logger.getLogger(PostDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            if(statement != null) statement.close();
            if(rs != null) rs.close();
        }
    }

}
