/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.Entity;

import java.util.Date;

/**
 *
 * @author HP
 */
public class Products {
    private int pId;
    private String pName;
    private double pBprices;
    private int pAmount;
    private double pIprices;
    private String pGender;
    private String pGuarantee;
    private String pDiscount;
    private String pDescription;
    private Date pDate;
    public Products(){
        
    }

    public Products(int pId, String pName, double pBprices, int pAmount, double pIprices, String pGender, String pGuarantee, String pDiscount, String pDescription, Date pDate) {
        this.pId = pId;
        this.pName = pName;
        this.pBprices = pBprices;
        this.pAmount = pAmount;
        this.pIprices = pIprices;
        this.pGender = pGender;
        this.pGuarantee = pGuarantee;
        this.pDiscount = pDiscount;
        this.pDescription = pDescription;
        this.pDate= pDate;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public double getpBprices() {
        return pBprices;
    }

    public void setpBprices(double pBprices) {
        this.pBprices = pBprices;
    }

    public int getpAmount() {
        return pAmount;
    }

    public void setpAmount(int pAmount) {
        this.pAmount = pAmount;
    }

    public double getpIprices() {
        return pIprices;
    }

    public void setpIprices(double pIprices) {
        this.pIprices = pIprices;
    }

    public String getpGender() {
        return pGender;
    }

    public void setpGender(String pGender) {
        this.pGender = pGender;
    }

    public String getpGuarantee() {
        return pGuarantee;
    }

    public void setpGuarantee(String pGuarantee) {
        this.pGuarantee = pGuarantee;
    }

    public String getpDiscount() {
        return pDiscount;
    }

    public void setpDiscount(String pDiscount) {
        this.pDiscount = pDiscount;
    }

    public String getpDescription() {
        return pDescription;
    }

    public void setpDescription(String pDescription) {
        this.pDescription = pDescription;
    }

    public Date getpDate() {
        return pDate;
    }

    public void setpDate(Date pDate) {
        this.pDate = pDate;
    }
    
    
}
