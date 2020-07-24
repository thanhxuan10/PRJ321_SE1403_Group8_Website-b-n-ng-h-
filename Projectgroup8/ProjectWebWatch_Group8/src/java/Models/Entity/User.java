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
public class User {
    private int uId;//stored id of user
    private String uName;//stored name of user
    private String uPass;//stored password of user
    private String uEmail;//stored email of user
    private String uPhone;//stored phone number of user
    private String uAddress;//stored address of user
    private Date uBirthday;//stored birthday of user
    private int uStatus;//stored status of user
    private String uGender;//stored gender of user

    /**
     *
     */
    public User(){
        
    }

    /**
     * take out the value we used to call before
     * @param uId user id
     * @param uName user name
     * @param uPass user password
     * @param uEmail user email
     * @param uPhone user phone number
     * @param uAddress user address
     * @param uBirthday user birthday
     * @param uStatus user status
     * @param uGender user gender
     */
    public User(int uId, String uName, String uPass, String uEmail, String uPhone, String uAddress, Date uBirthday, int uStatus, String uGender) {
        this.uId = uId;
        this.uName = uName;
        this.uPass = uPass;
        this.uEmail = uEmail;
        this.uPhone = uPhone;
        this.uAddress = uAddress;
        this.uBirthday = uBirthday;
        this.uStatus = uStatus;
        this.uGender = uGender;
    }

    /**
     *
     * @return get user id
     */
    public int getuId() {
        return uId;
    }

    /**
     *
     * @param uId set user id
     */
    public void setuId(int uId) {
        this.uId = uId;
    }

    /**
     *
     * @return get user name
     */
    public String getuName() {
        return uName;
    }

    /**
     *
     * @param uName set user name
     */
    public void setuName(String uName) {
        this.uName = uName;
    }

    /**
     *
     * @return get user password
     */
    public String getuPass() {
        return uPass;
    }

    /**
     *
     * @param uPass set user password
     */
    public void setuPass(String uPass) {
        this.uPass = uPass;
    }

    /**
     *
     * @return get user email
     */
    public String getuEmail() {
        return uEmail;
    }

    /**
     *
     * @param uEmail set user email
     */
    public void setuEmail(String uEmail) {
        this.uEmail = uEmail;
    }

    /**
     *
     * @return get user phone number
     */
    public String getuPhone() {
        return uPhone;
    }

    /**
     *
     * @param uPhone set user phone number
     */
    public void setuPhone(String uPhone) {
        this.uPhone = uPhone;
    }

    /**
     *
     * @return get user address
     */
    public String getuAddress() {
        return uAddress;
    }

    /**
     *
     * @param uAddress set user address
     */
    public void setuAddress(String uAddress) {
        this.uAddress = uAddress;
    }

    /**
     *
     * @return get user birthday
     */
    public Date getuBirthday() {
        return uBirthday;
    }

    /**
     *
     * @param uBirthday set user birthday
     */
    public void setuBirthday(Date uBirthday) {
        this.uBirthday = uBirthday;
    }

    /**
     *
     * @return get user status
     */
    public int getuStatus() {
        return uStatus;
    }

    /**
     *
     * @param uStatus set user status
     */
    public void setuStatus(int uStatus) {
        this.uStatus = uStatus;
    }

    /**
     *
     * @return get user gender
     */
    public String getuGender() {
        return uGender;
    }

    /**
     *
     * @param uGender set user gender
     */
    public void setuGender(String uGender) {
        this.uGender = uGender;
    }
    
    
}
