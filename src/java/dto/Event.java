/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author yashc
 */
public class Event {
    
    private int eid;
    private String ename;
    private String elocation;
    private String edate;
    private String eimage;
    
//    constructor

    public Event() {
    }

    public Event(int eid, String ename, String elocation, String edate, String eimage) {
        this.eid = eid;
        this.ename = ename;
        this.elocation = elocation;
        this.edate = edate;
        this.eimage = eimage;
    }

    public Event(String ename, String elocation, String edate, String eimage) {
        this.ename = ename;
        this.elocation = elocation;
        this.edate = edate;
        this.eimage = eimage;
    }

//    getters and setters
    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getElocation() {
        return elocation;
    }

    public void setElocation(String elocation) {
        this.elocation = elocation;
    }

    public String getEdate() {
        return edate;
    }

    public void setEdate(String edate) {
        this.edate = edate;
    }

    public String getEimage() {
        return eimage;
    }

    public void setEimage(String eimage) {
        this.eimage = eimage;
    }
    
}
