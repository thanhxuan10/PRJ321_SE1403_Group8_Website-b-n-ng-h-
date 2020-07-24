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
    private int pId; //stored id of product
    private String pName;//stored name of product
    private double pBprices;//stored Bprice of product
    private int pAmount;//stored amount of product
    private int pStatus;//stored status of product
    private double pIprices;//stored Iprice of product
    private String pGender;//stored gender of product
    private String pGuarantee;//stored guarantee of product
    private double pDiscount;//stored discount of product
    private String pDescription;//stored description of product
    private Date pDate;//stored date of product
    private String pImage;//stored image of product
//    private String Image;

    /**
     *
     */
    public Products(){
        
    }

    /**
     * take out value of product we have been call before
     * @param pId
     * @param pName
     * @param pBprices
     * @param pAmount
     * @param pIprices
     * @param pGender
     * @param pGuarantee
     * @param pDiscount
     * @param pDescription
     * @param pDate
     * @param pImage
     * @param pStatus
     */
    public Products(int pId, String pName, double pBprices, int pAmount, double pIprices, String pGender, String pGuarantee, double pDiscount, String pDescription, Date pDate, String pImage, int pStatus) {
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
        this.pImage = pImage;
       this.pStatus=pStatus;
    }

    /**
     *
     * @return getpStatus
     */
    public int getpStatus() {
        return pStatus;
    }

    /**
     *
     * @param pStatus setpStatus
     */
    public void setpStatus(int pStatus) {
        this.pStatus = pStatus;
    }
    
    /**
     *
     * @return getpImage
     */
    public String getpImage() {
        return pImage;
    }

    /**
     *
     * @param pImage setpImage
     */
    public void setpImage(String pImage) {
        this.pImage = pImage;
    }
    
    /**
     *
     * @return getpId
     */
    public int getpId() {
        return pId;
    }

    /**
     *
     * @param pId setpId
     */
    public void setpId(int pId) {
        this.pId = pId;
    }

    /**
     *
     * @return getpName
     */
    public String getpName() {
        return pName;
    }

    /**
     *
     * @param pName setpName
     */
    public void setpName(String pName) {
        this.pName = pName;
    }

    /**
     *
     * @return getpBprices
     */
    public double getpBprices() {
        return pBprices;
    }

    /**
     *
     * @param pBprices setpBprices
     */
    public void setpBprices(double pBprices) {
        this.pBprices = pBprices;
    }

    /**
     *
     * @return getpAmount
     */
    public int getpAmount() {
        return pAmount;
    }

    /**
     *
     * @param pAmount setpAmount
     */
    public void setpAmount(int pAmount) {
        this.pAmount = pAmount;
    }

    /**
     *
     * @return getpIprices
     */
    public double getpIprices() {
        return pIprices;
    }

    /**
     *
     * @param pIprices setpIprices
     */
    public void setpIprices(double pIprices) {
        this.pIprices = pIprices;
    }

    /**
     *
     * @return getpGender
     */
    public String getpGender() {
        return pGender;
    }

    /**
     *
     * @param pGender setpGender
     */
    public void setpGender(String pGender) {
        this.pGender = pGender;
    }

    /**
     *
     * @return getpGuarantee
     */
    public String getpGuarantee() {
        return pGuarantee;
    }

    /**
     *
     * @param pGuarantee setpGuarantee
     */
    public void setpGuarantee(String pGuarantee) {
        this.pGuarantee = pGuarantee;
    }

    /**
     *
     * @return getpDiscount
     */
    public double getpDiscount() {
        return pDiscount;
    }

    /**
     *
     * @param pDiscount setpDiscount
     */
    public void setpDiscount(double pDiscount) {
        this.pDiscount = pDiscount;
    }

    /**
     *
     * @return getpDescription
     */
    public String getpDescription() {
        return pDescription;
    }

    /**
     *
     * @param pDescription setpDescription
     */
    public void setpDescription(String pDescription) {
        this.pDescription = pDescription;
    }

    /**
     *
     * @return getpDate
     */
    public Date getpDate() {
        return pDate;
    }

    /**
     *
     * @param pDate setpDate
     */
    public void setpDate(Date pDate) {
        this.pDate = pDate;
    }

//    public String getImage() {
//        return Image;
//    }
//
//    public void setImage(String Image) {
//        this.Image = Image;
//    }
//    
    
}
