/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entity.Admin;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author HP
 */
public class AdminDAO {

    /**
     *
     */
    public Connection conn;

    /**
     * tao ham ket noi database 
     * @throws SQLException
     */
    public AdminDAO() throws SQLException {
        DBConnection db = new DBConnection();
        this.conn = db.getConnection();
    }

    /**
     * tao ham lay tat ca cac admin
     * @return
     */
    public ResultSet getAllAdmin() {
        String sql = "select * from admin";
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
     * tao ham lay tat ca cac admin theo aId
     * @param aId
     * @return
     */
    public Admin getAdmin(int aId) {
        String sql = "select * from user where uId=?";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, aId);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                Admin p = new Admin(
                        rs.getInt("aId"),
                        rs.getString("aName"),
                        rs.getString("aPass"),
                        rs.getString("aEmail"),
                        rs.getString("aPhone"),
                        rs.getString("aAddress"),
                        rs.getDate("aBirthday"),
                        rs.getInt("aStatus"),
                        rs.getString("aGender")
                );
                return p;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

   
    

    /**
     * tao ham de login phia admin
     * @param aEmail
     * @param aPass
     * @return
     */
    public boolean loginAdmin(String aEmail, String aPass) {
        String sql = "select * from admin where aEmail=? and aPass=?";
        PreparedStatement pst;
        try {
            pst = conn.prepareStatement(sql);

            pst.setString(1, aEmail);
            pst.setString(2, aPass);
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                return true;
            }
            
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;

    }
}
