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
    private int bdId;
    private int pId;
    private int bdAmount;
    private double bdPrice;
    private int bId;
    
    public BillDetail(){
        
    }

    public BillDetail(int bdId, int pId, int bdAmount, double bdPrice, int bId) {
        this.bdId = bdId;
        this.pId = pId;
        this.bdAmount = bdAmount;
        this.bdPrice = bdPrice;
        this.bId = bId;
    }

    public int getBdId() {
        return bdId;
    }

    public void setBdId(int bdId) {
        this.bdId = bdId;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public int getBdAmount() {
        return bdAmount;
    }

    public void setBdAmount(int bdAmount) {
        this.bdAmount = bdAmount;
    }

    public double getBdPrice() {
        return bdPrice;
    }

    public void setBdPrice(double bdPrice) {
        this.bdPrice = bdPrice;
    }

    public int getbId() {
        return bId;
    }

    public void setbId(int bId) {
        this.bId = bId;
    }
    
    
}
