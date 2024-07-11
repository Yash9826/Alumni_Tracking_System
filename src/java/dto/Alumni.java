/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

import java.sql.Timestamp;

/**
 *
 * @author yashc
 */
public class Alumni {

    private int id;
    private String name;
    private String email;
    private String enrollment;
    private String registration;
    private String year;
    private String occupation;
    private String organisation;
    private String designation;
    private String dateOfBirth;
    private String password;
    private String contact;
    private String img;
    private Timestamp rdate;

    public Alumni() {
    }

    public Alumni(String name, String email, String enrollment, String registration, String year, String occupation, String organisation, String designation, String dateOfBirth, String password, String contact, String img) {
        this.name = name;
        this.email = email;
        this.enrollment = enrollment;
        this.registration = registration;
        this.year = year;
        this.occupation = occupation;
        this.organisation = organisation;
        this.designation = designation;
        this.dateOfBirth = dateOfBirth;
        this.password = password;
        this.contact = contact;
        this.img = img;
    }

    public Alumni(int id, String name, String email, String enrollment, String registration, String year, String occupation, String organisation, String designation, String dateOfBirth, String password, String contact, Timestamp rdate) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.enrollment = enrollment;
        this.registration = registration;
        this.year = year;
        this.occupation = occupation;
        this.organisation = organisation;
        this.designation = designation;
        this.dateOfBirth = dateOfBirth;
        this.password = password;
        this.contact = contact;
        this.rdate = rdate;
    }

    public Alumni(int id, String name, String email, String enrollment, String registration, String year, String occupation, String organisation, String designation, String dateOfBirth, String password, String contact, String img, Timestamp rdate) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.enrollment = enrollment;
        this.registration = registration;
        this.year = year;
        this.occupation = occupation;
        this.organisation = organisation;
        this.designation = designation;
        this.dateOfBirth = dateOfBirth;
        this.password = password;
        this.contact = contact;
        this.img = img;
        this.rdate = rdate;
    }

    public Alumni(int id, String name, String email, String enrollment, String registration, String year, String occupation, String organisation, String designation, String dateOfBirth, String password, String contact, String img) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.enrollment = enrollment;
        this.registration = registration;
        this.year = year;
        this.occupation = occupation;
        this.organisation = organisation;
        this.designation = designation;
        this.dateOfBirth = dateOfBirth;
        this.password = password;
        this.contact = contact;
        this.img = img;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEnrollment() {
        return enrollment;
    }

    public void setEnrollment(String enrollment) {
        this.enrollment = enrollment;
    }

    public String getRegistration() {
        return registration;
    }

    public void setRegistration(String registration) {
        this.registration = registration;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getOrganisation() {
        return organisation;
    }

    public void setOrganisation(String organisation) {
        this.organisation = organisation;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Timestamp getRdate() {
        return rdate;
    }

    public void setRdate(Timestamp rdate) {
        this.rdate = rdate;
    }

    @Override
    public String toString() {
        return "Alumni{" + "name=" + name + ", email=" + email + ", enrollment=" + enrollment + ", registration=" + registration + ", year=" + year + ", occupation=" + occupation + ", organisation=" + organisation + ", designation=" + designation + ", dateOfBirth=" + dateOfBirth + ", password=" + password + ", contact=" + contact + ", img=" + img + '}';
    }

    
    

}
