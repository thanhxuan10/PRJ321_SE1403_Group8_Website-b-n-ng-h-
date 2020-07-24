/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entity.Bills;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author HP
 */
public class BillDAO {
    public Connection conn;
    public BillDAO() throws SQLException {
        DBConnection db = new DBConnection();
        this.conn = db.getConnection();
    }
    /**
     * tao ham tao bill
     * @param uId
     * @param bNote
     * @param bAddress
     * @param bName
     * @param bPhone
     * @return
     * @throws SQLException 
     */
    public int createBill(int uId, String bNote, String bAddress, String bName, String bPhone) throws SQLException {
        
        String sql = "Insert into bill(uId, bNote, bAddress, bName, bPhone, bTotal) values(?,?,?,?,?,?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, uId);
        ps.setString(2, bNote);
        ps.setString(3, bAddress);
        ps.setString(4, bName);
        ps.setString(5, bPhone);
        ps.setDouble(6, 0 );
        

        ps.execute();
        
        sql = "select max(`bId`) from `bill`";
        PreparedStatement ps2 = conn.prepareStatement(sql);
    
        ResultSet rs = ps2.executeQuery();
        if(rs.next()) {
            return rs.getInt(1);
        } else {
            return 0;
        }
    }
    /**
     * tao ham update bill va total price
     * @param bId
     * @return
     * @throws SQLException 
     */

    public int updateBillTotalPrice(int bId) throws SQLException {
        double total = 0;
        String sql = "select * from `billdetail` where `bId` = ?";
        PreparedStatement ps1 = conn.prepareStatement(sql);
        ps1.setInt(1, bId);
        ResultSet rs = ps1.executeQuery();
        while(rs.next()) {
            total += rs.getDouble("bdPrice");
        }
        double newTotal = total;
        sql = "update `bill` set `bTotal` = ? where `bId` = ?";
        PreparedStatement ps2 = conn.prepareStatement(sql);
        ps2.setDouble(1, newTotal);
        ps2.setInt(2, bId);
        
        return ps2.executeUpdate();
    }
    /**
     * ta ham lay tat ca cac bill
     * @return 
     */
    public ResultSet getAllBill() {
        String sql = "select * from bill";
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
     * tao ham xoa bill
     * @param bId
     * @return 
     */
    public int deleteBill(int bId) {
        try {
            String sql = "delete from bill where bId=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, bId);
            
            return pst.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }
    /**
     * tao ham lay bill theo bId
     * @param bId
     * @return 
     */
    public Bills getBill(int bId) {
        String sql = "select * from bill where bId=?";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, bId);
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                Bills b = new Bills(
                        rs.getInt("bId"),
                        rs.getInt("uId"),
                        rs.getInt("bStatus"),
                        rs.getString("bNote"),
                        rs.getString("bAddress"),
                        rs.getString("bName"),
                        rs.getString("bPhone"),
                        rs.getDouble("bTotal"),
                         rs.getDate("bDate"));
                return b;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    /**
     * tao ham lay bill theo user
     * @param uId
     * @return 
     */
    public Bills getBillUser(int uId) {
        String sql = "select * from bill where uId=?";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, uId);
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                Bills b = new Bills(
                        rs.getInt("bId"),
                        rs.getInt("uId"),
                        rs.getInt("bStatus"),
                        rs.getString("bNote"),
                        rs.getString("bAddress"),
                        rs.getString("bName"),
                        rs.getString("bPhone"),
                        rs.getDouble("bTotal"),
                         rs.getDate("bDate"));
                return b;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    /**
     * tao ham lay bill theo user
     * @param uId
     * @return 
     */
    public ResultSet getuserBill(int uId) {
        String sql = "select * from bill where uId=?";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, uId);
            ResultSet rs = pst.executeQuery();
            
           return rs;
           
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    /**
     * tao ham update bill
     * @param b
     * @return 
     */
    public int updateBill(Bills b) {
        try {
            String sql = "update bill set bStatus=?, bNote=?, bAddress=?, bName=?, bPhone=?, bDate=? where bId=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, b.getbStatus());
            pst.setString(2, b.getbNote());
            pst.setString(3, b.getbAddress());
            pst.setString(4, b.getbName());
            pst.setString(5, b.getbPhone());
            pst.setDate(6, (Date) b.getbDate());
            pst.setInt(7, b.getbId());
            return pst.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }
    /**
     * tao ham update status bill
     * @param bStatus
     * @param bId
     * @return 
     */
    public int updateStatus(int bStatus, int bId) {
        try {
            String sql = "update bill set bStatus=? where bId=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, bStatus);
            pst.setInt(2, bId);
           
            return pst.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }
}
