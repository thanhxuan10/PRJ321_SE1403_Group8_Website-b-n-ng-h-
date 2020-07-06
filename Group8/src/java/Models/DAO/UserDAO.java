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

    public Connection conn;

    public UserDAO() throws SQLException {
        DBConnection db = new DBConnection();
        this.conn = db.getConnection();
    }

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
                        rs.getString("pAddress"),
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

    public boolean insertUsers(User u) {
        try {
            String sql = "insert into user(uName, uPass, uEmail, uPhone, uAddress, uBirthday, uStatus, uGender) values(?,?,?,?,?,?,?,?)";
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

    public int updateUsers(User u) {
        try {
            String sql = "insert into user(uName, uPass, uEmail, uPhone, uAddress, uBirthday, uStatus, uGender) values(?,?,?,?,?,?,?)";
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

    public boolean login(String uName, String uPass) {
        String sql = "select * from user where uName=? and uPass=?";
        PreparedStatement pst;
        try {
            pst = conn.prepareStatement(sql);

            pst.setString(1, uName);
            pst.setString(2, uPass);
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
