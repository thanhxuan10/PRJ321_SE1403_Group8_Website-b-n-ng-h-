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
    private int aId;//stored id of admin
    private String aName;//stored name of admin
    private String aPass;//stored password of admin
    private String aEmail;//stored email of admin
    private String aPhone;//stored phone number of admin
    private String aAddress;//stored address of admin
    private Date aBirthday;//stored birthday of admin
    private int aStatus;//stored status of admin
    private String aGender;//stored gender of admin
    
    /**
     *
     */
    public Admin(){
        
    }

    /**
     * take out value we have been call before
     * @param aId
     * @param aName
     * @param aPass
     * @param aEmail
     * @param aPhone
     * @param aAddress
     * @param aBirthday
     * @param aStatus
     * @param aGender
     */
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

    /**
     *
     * @return getaId
     */
    public int getaId() {
        return aId;
    }

    /**
     *
     * @param aId setaId
     */
    public void setaId(int aId) {
        this.aId = aId;
    }

    /**
     *
     * @return getaName
     */
    public String getaName() {
        return aName;
    }

    /**
     *
     * @param aName setaName
     */
    public void setaName(String aName) {
        this.aName = aName;
    }

    /**
     *
     * @return getaPass
     */
    public String getaPass() {
        return aPass;
    }

    /**
     *
     * @param aPass setaPass
     */
    public void setaPass(String aPass) {
        this.aPass = aPass;
    }

    /**
     *
     * @return getaEmail
     */
    public String getaEmail() {
        return aEmail;
    }

    /**
     *
     * @param aEmail setaEmail
     */
    public void setaEmail(String aEmail) {
        this.aEmail = aEmail;
    }

    /**
     *
     * @return getaPhone
     */
    public String getaPhone() {
        return aPhone;
    }

    /**
     *
     * @param aPhone setaPhone
     */
    public void setaPhone(String aPhone) {
        this.aPhone = aPhone;
    }

    /**
     *
     * @return getaAddress
     */
    public String getaAddress() {
        return aAddress;
    }

    /**
     *
     * @param aAddress setaAddress
     */
    public void setaAddress(String aAddress) {
        this.aAddress = aAddress;
    }

    /**
     *
     * @return getaBirthday
     */
    public Date getaBirthday() {
        return aBirthday;
    }

    /**
     *
     * @param aBirthday setaBirthday
     */
    public void setaBirthday(Date aBirthday) {
        this.aBirthday = aBirthday;
    }

    /**
     *
     * @return getaStatus
     */
    public int getaStatus() {
        return aStatus;
    }

    /**
     *
     * @param aStatus setaStatus
     */
    public void setaStatus(int aStatus) {
        this.aStatus = aStatus;
    }

    /**
     *
     * @return getaGender
     */
    public String getaGender() {
        return aGender;
    }

    /**
     *
     * @param aGender setaGender
     */
    public void setaGender(String aGender) {
        this.aGender = aGender;
    }
    
    
}
