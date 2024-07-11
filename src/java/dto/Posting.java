/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;
import java.sql.*;
/**
 *
 * @author yashc
 */
public class Posting {
    
    private int id;
    private String name;
    private String desciption;
    private String pType;
    private String link;
    private String salary;
    private String mode;
    private String locations;
    private String duration;
    private Timestamp rDate;

    public Posting(String name, String desciption, String pType, String link, String salary, String mode, String locations, String duration) {
        this.name = name;
        this.desciption = desciption;
        this.pType = pType;
        this.link = link;
        this.salary = salary;
        this.mode = mode;
        this.locations = locations;
        this.duration = duration;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesciption() {
        return desciption;
    }

    public void setDesciption(String desciption) {
        this.desciption = desciption;
    }

    public String getpType() {
        return pType;
    }

    public void setpType(String pType) {
        this.pType = pType;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public String getLocations() {
        return locations;
    }

    public void setLocations(String locations) {
        this.locations = locations;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public Timestamp getrDate() {
        return rDate;
    }

    public void setrDate(Timestamp rDate) {
        this.rDate = rDate;
    }

    public Posting(int id, String name, String desciption, String pType, String link, String salary, String mode, String locations, String duration, Timestamp rDate) {
        this.id = id;
        this.name = name;
        this.desciption = desciption;
        this.pType = pType;
        this.link = link;
        this.salary = salary;
        this.mode = mode;
        this.locations = locations;
        this.duration = duration;
        this.rDate = rDate;
    }
    
    
}
