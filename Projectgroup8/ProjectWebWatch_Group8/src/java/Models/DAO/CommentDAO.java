/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entity.Comment;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author HP
 */
public class CommentDAO {

    /**
     *
     */
    public Connection conn;

    /**
     * tao ham ket noi database
     * @throws SQLException
     */
    public CommentDAO() throws SQLException {
        DBConnection db = new DBConnection();
        this.conn = db.getConnection();
    }

    /**
     * tao ham insert comment
     * @param c
     * @return
     */
    public boolean insertComment(Comment c) {
        try {
//            String sql = "insert into product(pName, pBprices, pAmount, pIprices, pGender, pGuarantee, pDiscount,pDescription, pDate) values(?,?,?,?,?,?,?,?,?)";
            String sql = "INSERT INTO `comment`(`uId`, `pId`, `cmContent`) VALUES (?,?,?)";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, c.getuId());
            pst.setInt(2, c.getpId());
            pst.setString(3, c.getCmContent());
            
            return pst.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }

    /**
     * tao ham lay tat ca comment
     * @return
     */
    public ResultSet getAllComment() {
        String sql = "select * from comment";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            return rs;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    /**
     * tao ham lay tat ca comment theo cmId
     * @param cmId
     * @return
     */
    public Comment getComment(int cmId) {
        String sql = "select * from comment where cmId=? ";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, cmId);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                Comment p = new Comment(
                        rs.getInt("cmId"),
                        rs.getInt("uId"),
                        rs.getInt("pId"),
                        rs.getString("cmContent"),
                        rs.getDate("cmDate"),
                        rs.getDate("cmTime")
                        );
                /*rs.getString("Image"));*/
                return p;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

}
