/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.Entity;

/**
 *
 * @author HP
 */
public class BillDetail {
   
    private int pId;
    private int bdAmount;
    private double bdPrice;
    private int bId;

    /**
     *
     * @param bId
     * @param pId
     * @param bdAmount
     * @param bdPrice
     */
    public BillDetail(int bId, int pId, int bdAmount, double bdPrice) {
       this.bId = bId;
        this.pId = pId;
        this.bdAmount = bdAmount;
        this.bdPrice = bdPrice;
        
    }

    /**
     *
     * @return
     */
    public int getpId() {
        return pId;
    }

    /**
     *
     * @param pId
     */
    public void setpId(int pId) {
        this.pId = pId;
    }

    /**
     *
     * @return
     */
    public int getBdAmount() {
        return bdAmount;
    }

    /**
     *
     * @param bdAmount
     */
    public void setBdAmount(int bdAmount) {
        this.bdAmount = bdAmount;
    }

    /**
     *
     * @return
     */
    public double getBdPrice() {
        return bdPrice;
    }

    /**
     *
     * @param bdPrice
     */
    public void setBdPrice(double bdPrice) {
        this.bdPrice = bdPrice;
    }

    /**
     *
     * @return
     */
    public int getbId() {
        return bId;
    }

    /**
     *
     * @param bId
     */
    public void setbId(int bId) {
        this.bId = bId;
    }
    
    
}
