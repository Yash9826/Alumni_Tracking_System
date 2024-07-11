/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.sql.*;
public class Admin {
    
    private int id;
    private String name;
    private String email;
    private String contact;
    private String password;
    private Timestamp rdate;

//    constrctor
    
    public Admin(int id, String name, String email, String contact, String password, Timestamp rdate) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.contact = contact;
        this.password = password;
        this.rdate = rdate;
    }

    public Admin(int id, String name, String email, String contact, String password) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.contact = contact;
        this.password = password;
    }

    public Admin(int id, String name, String email, String contact, Timestamp rdate) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.contact = contact;
        this.rdate = rdate;
    }

    public Admin(String name, String email, String contact, String password, Timestamp rdate) {
        this.name = name;
        this.email = email;
        this.contact = contact;
        this.password = password;
        this.rdate = rdate;
    }

    public Admin() {
    }

    public Admin(String name, String email, String contact, String password) {
        this.name = name;
        this.email = email;
        this.contact = contact;
        this.password = password;
    }
    
    
//    getters and setters

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Timestamp getRdate() {
        return rdate;
    }

    public void setRdate(Timestamp rdate) {
        this.rdate = rdate;
    }

    @Override
    public String toString() {
        return "Admin{" + "id=" + id + ", name=" + name + ", email=" + email + ", contact=" + contact + ", password=" + password + ", rdate=" + rdate + '}';
    }
    
    
}
