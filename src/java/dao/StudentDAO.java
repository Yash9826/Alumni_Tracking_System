/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import dto.Alumni;
import dto.Student;
import java.sql.*;
/**
 *
 * @author yashc
 */
public class StudentDAO {
    
    private Connection con;

    public StudentDAO(Connection con) {
        this.con = con;
    }
    
    //    method to authentecate admin to login
    
    public Student getStudentByEmailAndPassword(String email,String password)
    {
        Student st = null;
        
        try 
        {
            String q = "Select * from student where email=? and password=?";
            PreparedStatement pd = this.con.prepareStatement(q);
            pd.setString(1, email);
            pd.setString(2, password);
            
            ResultSet rs =  pd.executeQuery();
            if(rs.next())
            {
                st = new Student();
//                data from db
                
//                set data to admin object
               
               st.setName(rs.getString("name"));
               st.setEmail(rs.getString("email"));
               st.setEnrollment(rs.getString("enrollment"));
               st.setRegistration(rs.getString("registration"));
               st.setYear(rs.getString("year"));
               st.setPassword(rs.getString("password"));
               
        }
            }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        
        return st;
    
    }
    
    
}
