/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entity.User;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HP
 */
public class UserDAO {

    /**
     *
     */
    public Connection conn;

    /**
     * ham ket noi databse
     * @throws SQLException
     */
    public UserDAO() throws SQLException {
        DBConnection db = new DBConnection();
        this.conn = db.getConnection();
    }

    /**
     * ham lay tat ca user
     * @return
     */
    public ResultSet getAllUser() {
        String sql = "select * from user";
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
     * ham lay tat ca theo id
     * @param uId
     * @return
     */
    public User getUser(int uId) {
        String sql = "select * from user where uId=?";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, uId);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                User p = new User(
                        rs.getInt("uId"),
                        rs.getString("uName"),
                        rs.getString("uPass"),
                        rs.getString("uEmail"),
                        rs.getString("uPhone"),
                        rs.getString("uAddress"),
                        rs.getDate("uBirthday"),
                        rs.getInt("uStatus"),
                        rs.getString("uGender")
                );
                return p;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    /**
     * ham insert user 
     * @param u
     * @return
     */
    public boolean insertUsers(User u) {
        try {
            String sql = "insert into user(uName, uPass, uEmail, uPhone, uAddress, uBirthday, uStatus, uGender) values(?,MD5(?),?,?,?,?,?,?)";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, u.getuName());
            pst.setString(2, u.getuPass());
            pst.setString(3, u.getuEmail());
            pst.setString(4, u.getuPhone());
            pst.setString(5, u.getuAddress());
            pst.setDate(6, (Date) u.getuBirthday());
            pst.setInt(7, u.getuStatus());
            pst.setString(8, u.getuGender());
            return pst.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }

    /**
     * ham sua user
     * @param u
     * @return
     */
    public int updateUsers(User u) {
        try {
            String sql = "UPDATE `user` SET `uName`=?,`uPass`=?,`uEmail`=?,`uPhone`=?,`uAddress`=?,`uBirthday`=?,`uStatus`=?,`uGender`=? WHERE `uId`=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, u.getuName());
            pst.setString(2, u.getuPass());
            pst.setString(3, u.getuEmail());
            pst.setString(4, u.getuPhone());
            pst.setString(5, u.getuAddress());
            pst.setDate(6, (Date) u.getuBirthday());
            pst.setInt(7, u.getuStatus());
            pst.setString(8, u.getuGender());
            pst.setInt(9, u.getuId());
            return pst.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    /**
     * ham xoa user
     * @param uId
     * @return
     */
    public int deleteUsers(int uId) {
        try {
            String sql = "delete from user where uId=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, uId);
            return pst.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    /**
     * ham login user
     * @param uEmail
     * @param uPass
     * @return
     */
    public int login(String uEmail, String uPass) {
        String sql = "select uId from user where uEmail=? and uPass=MD5(?)";
        PreparedStatement pst;
        try {
            pst = conn.prepareStatement(sql);

            pst.setString(1, uEmail);
            pst.setString(2, uPass);
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                return rs.getInt("uId");
            }
            
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return -1;

    }

    /**
     * ham tim password
     * @param uPass
     * @return
     */
    public int searchPass(String uPass) {
        String sql = "select uId from user where uPass=MD5(?)";
        PreparedStatement pst;
        try {
            pst = conn.prepareStatement(sql);

            pst.setString(1, uPass);
            
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                return rs.getInt("uId");
            }
            
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;

    }

    /**
     * ham thay doi trang thai nguoi dung
     * @param uStatus
     * @param uId
     * @return
     */
    public int updateStatus(int uStatus,int uId) {
        try {
            String sql = "update user set uStatus=? where uId=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, uStatus);
            pst.setInt(2, uId);
           
            return pst.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    /**
     *
     * @param u
     * @param uId
     * @return
     */
    public int updatePass(User u, int uId) {
        try {
            String sql = "update user set uPass=MD5(?) where uId=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, u.getuPass());
            pst.setInt(2, uId);
            return pst.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }
}
