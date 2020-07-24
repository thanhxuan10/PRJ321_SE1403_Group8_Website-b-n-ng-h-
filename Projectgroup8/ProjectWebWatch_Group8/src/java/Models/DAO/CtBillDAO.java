/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entity.BillDetail;
import Models.Entity.Products;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;

/**
 *
 * @author HP
 */
public class CtBillDAO {

    /**
     *
     */
    public Connection conn;

    /**
     * tao ham ket noi database
     * @throws SQLException
     */
    public CtBillDAO() throws SQLException {
        DBConnection db = new DBConnection();
        this.conn = db.getConnection();
    }

    /**
     * ham tao bill detail
     * @param bId
     * @param pId
     * @param quantity
     * @return
     * @throws SQLException
     */
    public boolean createBillDetail(int bId, int pId, int quantity) throws SQLException {

        ProductsDAO pDAO = new ProductsDAO();

        Products p = pDAO.getProducts(pId);

        if (p.getpAmount() < quantity) {
            return false;
        }

        double totalPrice = p.getpBprices() * quantity;

        String sql = "insert into `billdetail`(bId, pId, bdAmount, bdPrice) values(?,?,?,?)";

        PreparedStatement ps1 = conn.prepareStatement(sql);
        ps1.setInt(1, bId);
        ps1.setInt(2, pId);
        ps1.setInt(3, quantity);
        ps1.setDouble(4, totalPrice);

        ps1.execute();
        if (p.getpAmount() > 0) {

            sql = "update `product` set `pAmount` = ? where `pId` = ?";

            int newQuantity = p.getpAmount() - quantity;

            PreparedStatement ps2 = conn.prepareStatement(sql);
            ps2.setInt(1, newQuantity);
            ps2.setInt(2, pId);

            if (ps2.executeUpdate() > 0) {
                return true;
            }
        } else {

            return false;

        }

        return false;
    }

    /**
     * ham lay tat ca theo bId
     * @param bId
     * @return
     */
    public BillDetail getCtBill(int bId) {
        String sql = "select * from billdetail where bId=?";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, bId);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                BillDetail b = new BillDetail(
                        rs.getInt("bId"),
                        rs.getInt("pId"),
                        rs.getInt("bdAmount"),
                        rs.getDouble("bdPrice"));
                return b;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    /**
     * ham lay tat ca tra ve result set
     * @param bId
     * @return
     */
    public ResultSet getBills(int bId) {
        String sql = "select * from billdetail where bId=?";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, bId);
            ResultSet rs = pst.executeQuery();

            return rs;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    /**
     * ham lay tat ca cac bill
     * @return
     */
    public ResultSet getAllBills() {
        String sql = "select * from billdetail ";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();

            return rs;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
}
