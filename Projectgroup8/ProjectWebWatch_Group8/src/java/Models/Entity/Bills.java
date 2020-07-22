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
    private int bId;
    private int uId;
    private String bStatus;
    private String bNote;
    private String bAddress;
    private String bName;
    private String bPhone;
    private double bTotal;
    private Date bDate;

    public Bills() {
    }
    
    

    public Bills(int bId, int uId, String bStatus, String bNote, String bAddress, String bName, String bPhone, double bTotal, Date bDate) {
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

    public int getbId() {
        return bId;
    }

    public void setbId(int bId) {
        this.bId = bId;
    }

    public int getuId() {
        return uId;
    }

    public void setuId(int uId) {
        this.uId = uId;
    }

    public String getbStatus() {
        return bStatus;
    }

    public void setbStatus(String bStatus) {
        this.bStatus = bStatus;
    }

    public String getbNote() {
        return bNote;
    }

    public void setbNote(String bNote) {
        this.bNote = bNote;
    }

    public String getbAddress() {
        return bAddress;
    }

    public void setbAddress(String bAddress) {
        this.bAddress = bAddress;
    }

    public String getbName() {
        return bName;
    }

    public void setbName(String bName) {
        this.bName = bName;
    }

    public String getbPhone() {
        return bPhone;
    }

    public void setbPhone(String bPhone) {
        this.bPhone = bPhone;
    }

    public double getbTotal() {
        return bTotal;
    }

    public void setbTotal(double bTotal) {
        this.bTotal = bTotal;
    }

    public Date getbDate() {
        return bDate;
    }

    public void setbDate(Date bDate) {
        this.bDate = bDate;
    }
    
    
}
