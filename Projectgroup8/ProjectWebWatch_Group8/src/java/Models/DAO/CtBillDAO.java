/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entity.Products;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author HP
 */
public class CtBillDAO {
     public Connection conn;

    public CtBillDAO() throws SQLException {
        DBConnection db = new DBConnection();
        this.conn = db.getConnection();
    }
     public boolean createBillDetail(int bId, int pId, int quantity) throws SQLException {

        ProductsDAO pDAO = new ProductsDAO();

        Products p = pDAO.getProducts(pId);

        if (p.getpAmount() < quantity) {
            return false;
        }

        double totalPrice = p.getpBprices()* quantity;

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
            }else{
               
                    return false;
                
            }
        

        return false;
    }
}
