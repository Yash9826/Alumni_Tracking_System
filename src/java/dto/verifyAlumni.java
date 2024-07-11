/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dto;

/**
 *
 * @author yashc
 */
public class verifyAlumni {
    
   private int id;
   private String erollment;
   private String year;

    public verifyAlumni() {
    }

    public verifyAlumni(String erollment, String year) {
        this.erollment = erollment;
        this.year = year;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getErollment() {
        return erollment;
    }

    public void setErollment(String erollment) {
        this.erollment = erollment;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    @Override
    public String toString() {
        return "verifyAlumni{" + "id=" + id + ", erollment=" + erollment + ", year=" + year + '}';
    }
   
   
}
