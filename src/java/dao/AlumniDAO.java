/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dto.Alumni;
import dto.Posting;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author yashc
 */
public class AlumniDAO {
   
    private Connection con;

    public AlumniDAO(Connection con) {
        this.con = con;
    }

    //    method to authentecate admin to login
    
    public Alumni getAlumniByEmailAndPassword(String email,String password)
    {
        Alumni alumni = null;
        
        try 
        {
            String q = "Select * from registered_alumni where email=? and password=?";
            PreparedStatement pd = this.con.prepareStatement(q);
            pd.setString(1, email);
            pd.setString(2, password);
            
            ResultSet rs =  pd.executeQuery();
            if(rs.next())
            {
                alumni = new Alumni();
//                data from db
                
//                set data to admin object
               alumni.setId(rs.getInt("aid"));
               alumni.setEmail(rs.getString("email"));
               alumni.setEnrollment(rs.getString("enrollment_no"));
               alumni.setRegistration(rs.getString("registration_no"));
               alumni.setYear(rs.getString("passout_year"));
               alumni.setOccupation(rs.getString("occupation"));
               alumni.setOrganisation(rs.getString("organisation"));
               alumni.setDesignation(rs.getString("designation"));
               
               alumni.setDateOfBirth(rs.getString("date_of_birth"));
               alumni.setPassword(rs.getString("password"));
               alumni.setContact(rs.getString("contact"));
               
               alumni.setImg(rs.getString("profile"));
               alumni.setRdate(rs.getTimestamp("rdate"));
               alumni.setName(rs.getString("name"));
        }
            }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        
        return alumni;
    
    }
    
    
     // updating admin etails
   public boolean updateAlumni(Alumni alumni)
    {
         boolean f = false;
        try 
        {
//            data->database
             String q = "update  registered_alumni set email=?, enrollment_no=?, registration_no=?, passout_year=?, occupation=?, organisation=?, designation=?, date_of_birth=?, password=?, contact=?, profile=?,name=? where aid=?";   
             PreparedStatement ps = this.con.prepareStatement(q);
             ps.setString(1, alumni.getEmail() );
             ps.setString(2, alumni.getEnrollment());
             ps.setString(3, alumni.getRegistration());
             ps.setString(4, alumni.getYear());
             ps.setString(5, alumni.getOccupation());
             ps.setString(6, alumni.getOrganisation());
             ps.setString(7, alumni.getDesignation());
             ps.setString(8, alumni.getDateOfBirth());
             ps.setString(9, alumni.getPassword());
             ps.setString(10, alumni.getContact());
             ps.setString(11, alumni.getImg());
             ps.setString(12, alumni.getName());
             ps.setInt(13, alumni.getId());
             
             
             ps.executeUpdate();
             f = true;  
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        

        System.out.println(f);
        return f;
    }
   
    //    method to insert job data to posting table
    
    public boolean savePost(Posting p)
    {
        boolean f = false;
        try 
        {
//            data->database
             String q = "insert into posting(name, description, ptype, link,salary, mode, locations, duration) values(?,?,?,?,?,?,?,?)";   
             PreparedStatement ps = this.con.prepareStatement(q);
             ps.setString(1, p.getName());
             ps.setString(2, p.getDesciption());
             ps.setString(3, p.getpType());
             ps.setString(4, p.getLink());
             ps.setString(5, p.getSalary());
             ps.setString(6, p.getMode());
             ps.setString(7, p.getLocations());
             ps.setString(8, p.getDuration());
             
             ps.executeUpdate();
            f = true;
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        
        return f;
        
    }
    
}
    
    
 