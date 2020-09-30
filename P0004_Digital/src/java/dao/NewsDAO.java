/**
 * NewsDAO.java
 * All Rights Reserved.
 * Copyright(c) by duongvhhe130409  
 */
package dao;

import context.DBContext;
import entity.News;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * NewsDAO<br>
 * 
 * <pre>
 * Class dùng các câu query để lấy dữ liệu từ database
 * Trong class này sẽ tiến hành các xử lí dưới đây.
 * 
 * 
 * get top 1 news order by timePost
 * get news by id
 * get list Top 5 news recent
 * count news when search
 * search news by title
 * </pre>
 * 
 * 
 * @author duongvhhe130409
 * @version 1.0
 *
 */
public class NewsDAO {
    /**
     * Lấy ra bài báo mới nhất tính theo thời gian
     * <pre>
     *Lấy ra bài báo đầu tiên theo id.

     * </pre>
     *
     * @param id
     * @return a new
     */
    public News getTop1News() throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
       
            String query = "{call getTop1 (1)}";
            conn = db.getConnection();
            cs = conn.prepareCall(query);
            rs = cs.executeQuery();

            while (rs.next()) {
                News d = new News(
                        rs.getInt("ID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("image"),
                        rs.getString("author"),
                        rs.getDate("timePost"),
                        rs.getString("shortDes"));
                return d;
            }
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(rs, cs, conn);
        }
        return null;
    }
    /**
     * get new by id
     * <pre>
     * Truyền vào id và tìm bài báo có id trùng với id truyền vào.
     *
     * </pre>
     *
     * @param id int
     * @return a new
     */
    public News getNewById(int id) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            String query = "{call getNewById (?)}";
            conn = db.getConnection();
            cs = conn.prepareCall(query);
            cs.setInt(1, id);
            rs = cs.executeQuery();
            while (rs.next()) {
                News d = new News(rs.getInt("ID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("image"),
                        rs.getString("author"),
                        rs.getDate("timePost"),
                        rs.getString("shortDes"));
                return d;
            }
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(rs, cs, conn);
        }
        return null;
    }
    /**
     * get top 5 news recent
     * <pre>
     * Lấy ra 5 bài báo gần nhất.
     * </pre>
     *
     * @param id
     * @return a list of new
     */
    public List<News> get5NewRecent() throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        CallableStatement cs = null;
        ResultSet rs = null;
        try {
            List<News> list = new ArrayList<>();
            String query = "{call get5Newst (5)}";
            conn = db.getConnection();
            cs = conn.prepareCall(query);
            rs = cs.executeQuery();
            while (rs.next()) {
                News d = new News(rs.getInt("ID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("image"),
                        rs.getString("author"),
                        rs.getDate("timePost"),
                        rs.getString("shortDes"));
                list.add(d);
            }
            return list;
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(rs, cs, conn);
        }
    }
    /**
     * Hiện thi ra danh sách có từ khóa khớp với từ tìm kiếm
     * <pre>
     * Tìm kiếm theo tiêu đề nhập vào , và trả về danh sách các bài báo thỏa mãn. 
     * </pre>
     *
     * @param pageIndex int
     * @param pageSize int
     * @param  txt string
     * @return a list of news
     */
    public List<News> searchNewByTxt(String txt, int index, int size) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        CallableStatement cs  = null;
        ResultSet rs = null;
        try {
            List<News> list = new ArrayList<>();     
            String query = "{call search_by_text(?,?,?)}";
            conn = db.getConnection();
            cs = conn.prepareCall(query);
            cs.setString(1, '%' + txt + "%");
            cs.setInt(2, index);
            cs.setInt(3, size);
            rs = cs.executeQuery();
            while (rs.next()) {
                News d = new News(rs.getInt("ID"),
                        rs.getString("title"),
                        rs.getString("description"),
                        rs.getString("image"),
                        rs.getString("author"),
                        rs.getDate("timePost"),
                        rs.getString("shortDes"));
                list.add(d);
            }
            return list;
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(rs, cs, conn);
        }
    }
    /**
     * Lấy ra số lượng bài báo khớp với từ tìm kiếm
     * <pre>
     * Đếm số bài báo thỏa mãn tiêu đề nhập vào.   
     * </pre>
     *
     * @param  txt string
     * @return a number of news
     */
    public int countNewThenSearch(String txt) throws Exception {
        DBContext db = new DBContext();
        Connection conn = null;
        CallableStatement cs  = null;
        ResultSet rs = null;
        try {
            String query = "{call count_txt(?)}";
            conn = db.getConnection();
            cs = conn.prepareCall(query);
            cs.setString(1, "%" + txt + "%");
            rs = cs.executeQuery();
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
            }
            return count;
        } catch (Exception e) {
            throw e;
        } finally {
            db.closeConnection(rs, cs, conn);
        }
    }
}
