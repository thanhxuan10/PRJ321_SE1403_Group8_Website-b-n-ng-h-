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
public class Comment {
    private int cmId;
    private int uId;
    private int pId;
    private String cmContent;
    private Date cmDate;
    private Date cmTime;

    /**
     *
     */
    public Comment() {
    }

    /**
     *
     * @param cmId
     * @param uId
     * @param pId
     * @param cmContent
     * @param cmDate
     * @param cmTime
     */
    public Comment(int cmId, int uId, int pId, String cmContent, Date cmDate, Date cmTime) {
        this.cmId = cmId;
        this.uId = uId;
        this.pId = pId;
        this.cmContent = cmContent;
        this.cmDate = cmDate;
        this.cmTime = cmTime;
    }

    /**
     *
     * @return
     */
    public int getCmId() {
        return cmId;
    }

    /**
     *
     * @param cmId
     */
    public void setCmId(int cmId) {
        this.cmId = cmId;
    }

    /**
     *
     * @return
     */
    public int getuId() {
        return uId;
    }

    /**
     *
     * @param uId
     */
    public void setuId(int uId) {
        this.uId = uId;
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
    public String getCmContent() {
        return cmContent;
    }

    /**
     *
     * @param cmContent
     */
    public void setCmContent(String cmContent) {
        this.cmContent = cmContent;
    }

    /**
     *
     * @return
     */
    public Date getCmDate() {
        return cmDate;
    }

    /**
     *
     * @param cmDate
     */
    public void setCmDate(Date cmDate) {
        this.cmDate = cmDate;
    }

    /**
     *
     * @return
     */
    public Date getCmTime() {
        return cmTime;
    }

    /**
     *
     * @param cmTime
     */
    public void setCmTime(Date cmTime) {
        this.cmTime = cmTime;
    }
    
    
    
}
