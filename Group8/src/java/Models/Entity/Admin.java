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
public class Admin {
    private int aId;
    private String aName;
    private String aPass;
    private String aEmail;
    private String aPhone;
    private String aAddress;
    private Date aBirthday;
    private int aStatus;
    private String aGender;
    
    public Admin(){
        
    }

    public Admin(int aId, String aName, String aPass, String aEmail, String aPhone, String aAddress, Date aBirthday, int aStatus, String aGender) {
        this.aId = aId;
        this.aName = aName;
        this.aPass = aPass;
        this.aEmail = aEmail;
        this.aPhone = aPhone;
        this.aAddress = aAddress;
        this.aBirthday = aBirthday;
        this.aStatus = aStatus;
        this.aGender = aGender;
    }

    public int getaId() {
        return aId;
    }

    public void setaId(int aId) {
        this.aId = aId;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName;
    }

    public String getaPass() {
        return aPass;
    }

    public void setaPass(String aPass) {
        this.aPass = aPass;
    }

    public String getaEmail() {
        return aEmail;
    }

    public void setaEmail(String aEmail) {
        this.aEmail = aEmail;
    }

    public String getaPhone() {
        return aPhone;
    }

    public void setaPhone(String aPhone) {
        this.aPhone = aPhone;
    }

    public String getaAddress() {
        return aAddress;
    }

    public void setaAddress(String aAddress) {
        this.aAddress = aAddress;
    }

    public Date getaBirthday() {
        return aBirthday;
    }

    public void setaBirthday(Date aBirthday) {
        this.aBirthday = aBirthday;
    }

    public int getaStatus() {
        return aStatus;
    }

    public void setaStatus(int aStatus) {
        this.aStatus = aStatus;
    }

    public String getaGender() {
        return aGender;
    }

    public void setaGender(String aGender) {
        this.aGender = aGender;
    }
    
    
}
