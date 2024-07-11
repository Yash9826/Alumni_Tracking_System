/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author yashc
 */
public class Course {
    private String cid;
    private String cname;

    public Course(String cid, String cname) {
        this.cid = cid;
        this.cname = cname;
    }

    public Course(String cname) {
        this.cname = cname;
    }
    
    
//    getters and setters

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }
    
}
