/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models.Entity;

import java.sql.Date;

/**
 *
 * @author HP
 */
public class Bills {
    private int bId;//stored id of bill
    private int uId;//stored id of user
    private int bStatus;//stored status of bill
    private String bNote;//stored note of bill
    private String bAddress;//stored address of bill
    private String bName;//stored name of bill
    private String bPhone;//stored phone number of bill
    private double bTotal;//stored total of bill
    private Date bDate;//stored date of bill

    /**
     *
     */
    public Bills() {
    }
    
    /**
     * take out value we have been call before
     * @param bId
     * @param uId
     * @param bStatus
     * @param bNote
     * @param bAddress
     * @param bName
     * @param bPhone
     * @param bTotal
     * @param bDate
     */
    public Bills(int bId, int uId, int bStatus, String bNote, String bAddress, String bName, String bPhone, double bTotal, Date bDate) {
        this.bId = bId;
        this.uId = uId;
        this.bStatus = bStatus;
        this.bNote = bNote;
        this.bAddress = bAddress;
        this.bName = bName;
        this.bPhone = bPhone;
        this.bTotal = bTotal;
        this.bDate = bDate;
    }

    /**
     *
     * @return getbId
     */
    public int getbId() {
        return bId;
    }

    /**
     *
     * @param bId setbId
     */
    public void setbId(int bId) {
        this.bId = bId;
    }

    /**
     *
     * @return getuId
     */
    public int getuId() {
        return uId;
    }

    /**
     *
     * @param uId setuId
     */
    public void setuId(int uId) {
        this.uId = uId;
    }

    /**
     *
     * @return getbStatus
     */
    public int getbStatus() {
        return bStatus;
    }

    /**
     *
     * @param bStatus setbStatus
     */
    public void setbStatus(int bStatus) {
        this.bStatus = bStatus;
    }

    /**
     *
     * @return getbNote
     */
    public String getbNote() {
        return bNote;
    }

    /**
     *
     * @param bNote setbNote
     */
    public void setbNote(String bNote) {
        this.bNote = bNote;
    }

    /**
     *
     * @return getbAddress
     */
    public String getbAddress() {
        return bAddress;
    }

    /**
     *
     * @param bAddress setbAddress
     */
    public void setbAddress(String bAddress) {
        this.bAddress = bAddress;
    }

    /**
     *
     * @return getbName
     */
    public String getbName() {
        return bName;
    }

    /**
     *
     * @param bName setbName
     */
    public void setbName(String bName) {
        this.bName = bName;
    }

    /**
     *
     * @return getbPhone
     */
    public String getbPhone() {
        return bPhone;
    }

    /**
     *
     * @param bPhone setbPhone
     */
    public void setbPhone(String bPhone) {
        this.bPhone = bPhone;
    }

    /**
     *
     * @return getbTotal
     */
    public double getbTotal() {
        return bTotal;
    }

    /**
     *
     * @param bTotal setbTotal
     */
    public void setbTotal(double bTotal) {
        this.bTotal = bTotal;
    }

    /**
     *
     * @return getbDate
     */
    public Date getbDate() {
        return bDate;
    }

    /**
     *
     * @param bDate setbDate
     */
    public void setbDate(Date bDate) {
        this.bDate = bDate;
    }
    
    
}
