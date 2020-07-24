/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.DAO;

import Models.Entity.Products;
import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;
import java.sql.SQLException;
import java.util.HashMap;
import Models.DAO.*;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import until.*;

/**
 *
 * @author HP
 */
public class ProductsDAO {

    /**
     *
     */
    public Connection conn;

    /**
     * ham ket noi database
     * @throws SQLException
     */
    public ProductsDAO() throws SQLException {
        DBConnection db = new DBConnection();
        this.conn = db.getConnection();
    }

    /**
     * ham lay tat ca cac san pham
     * @return
     */
    public ResultSet getAllProducts() {
        String sql = "select * from product ";
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
     * ham lay tat ca cac san pham theo pId
     * 
     * @param pId
     * @return
     */
    public Products getProducts(int pId) {
        String sql = "select * from product where pId=? ";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, pId);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                Products p = new Products(
                        rs.getInt("pId"),
                        rs.getString("pName"),
                        rs.getDouble("pBprices"),
                        rs.getInt("pAmount"),
                        rs.getDouble("pIprices"),
                        rs.getString("pGender"),
                        rs.getString("pGuarantee"),
                        rs.getDouble("pDiscount"),
                        rs.getString("pDescription"),
                        rs.getDate("pDate"),
                        rs.getString("pImage"),
                        rs.getInt("pStatus"));
                /*rs.getString("Image"));*/
                return p;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }
    
    /**
     * ham lay tat ca cac san pham tra ve resultset
     * @param pId
     * @return
     */
    public ResultSet getInfoProducts(int pId) {
        String sql = "select * from product where pId=? ";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, pId);
            ResultSet rs = pst.executeQuery();

           return rs;
           
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    /**
     * ham insert product
     * @param p
     * @return
     */
    public boolean insertProducts(Products p) {
        try {
//            String sql = "insert into product(pName, pBprices, pAmount, pIprices, pGender, pGuarantee, pDiscount,pDescription, pDate) values(?,?,?,?,?,?,?,?,?)";
            String sql = "INSERT INTO `product`(`pName`, `pBprices`, `pAmount`, `pIprices`, `pGender`, `pGuarantee`, `pDiscount`, `pDescription`, `pDate`,`pImage`, `pStatus`) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, p.getpName());
            pst.setDouble(2, p.getpBprices());
            pst.setInt(3, p.getpAmount());
            pst.setDouble(4, p.getpIprices());
            pst.setString(5, p.getpGender());
            pst.setString(6, p.getpGuarantee());
            pst.setDouble(7, p.getpDiscount());
            pst.setString(8, p.getpDescription());
            pst.setDate(9, (Date) p.getpDate());
            pst.setString(10, p.getpImage());
            pst.setInt(11, p.getpStatus());
            return pst.execute();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }

    /**
     * ham update product
     * @param p
     * @return
     */
    public int updateProducts(Products p) {
        try {
            String sql = "update product set pName=?, pBprices=?, pAmount=?, pIprices=?, pGender=?, pGuarantee=?, pDiscount=?,pDescription=?, pDate=?, pImage=? where pId=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, p.getpName());
            pst.setDouble(2, p.getpBprices());
            pst.setInt(3, p.getpAmount());
            pst.setDouble(4, p.getpIprices());
            pst.setString(5, p.getpGender());
            pst.setString(6, p.getpGuarantee());
            pst.setDouble(7, p.getpDiscount());
            pst.setString(8, p.getpDescription());
            pst.setDate(9, (Date) p.getpDate());
            pst.setString(10, p.getpImage());
            pst.setInt(11, p.getpId());
            return pst.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    /**
     * ham xoa san pham
     * @param pId
     * @return
     */
    public int deleteProducts(int pId) {
        try {
            String sql = "delete from product where pId=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, pId);
            return pst.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    /**
     * ham thay doi trang thai san pham
     * @param pStatus
     * @param pId
     * @return
     */
    public int updateStatus(int pStatus, int pId) {
        try {
            String sql = "update product set pStatus=? where pId=?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, pStatus);
            pst.setInt(2, pId);
           
            return pst.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }
    
    /**
     * ham lay top 10 san pham co doanh thu cao
     * @return
     */
    public HashMap<Integer, Long> getTop10() {
        HashMap<Integer, Long> products = new HashMap<>();
        
        try {
            CtBillDAO cbd = new CtBillDAO();
            ResultSet rs = cbd.getAllBills();
            
            while(rs.next()) {
                int key = rs.getInt("pId");
                long total = (long) rs.getDouble("bdPrice");
                
                if(products.get(key) == null) {
                    products.put(key, total);
                } else {
                    total += products.get(key);
                    products.put(key, total);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        Sort sort = new Sort();
        HashMap<Integer, Long> newList = sort.sortHashMapByValues(products);
        return newList;
    }
    
    
}
