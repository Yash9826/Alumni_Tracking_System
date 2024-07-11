
package dao;


import dto.Admin;
import dto.Alumni;
import dto.Course;
import dto.Event;
import dto.Gallary;
import dto.Posting;
import dto.Student;
import dto.verifyAlumni;
import java.sql.*;
import java.util.ArrayList;
import javax.servlet.annotation.MultipartConfig;


public class AdminDAO {
    
    private Connection con;

    public AdminDAO(Connection con) {
        this.con = con;
    }
    
//    method to insert data to database admin table
    
    public boolean saveAdmin(Admin admin)
    {
        boolean f = false;
        try 
        {
//           data->database
             String q = "insert into admin(name,email,contact,password) values(?,?,?,?)";   
             PreparedStatement ps = this.con.prepareStatement(q);
             ps.setString(1, admin.getName());
             ps.setString(2, admin.getEmail());
             ps.setString(3, admin.getContact());
             ps.setString(4, admin.getPassword());
             ps.executeUpdate();
             f = true;
             
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
//    method to authentecate admin to login
    
    public Admin getAdminByEmailAndPassword(String email,String password)
    {
        Admin admin = null;
        
        try 
        {
            String q = "Select * from admin where email=? and password=?";
            PreparedStatement pd = this.con.prepareStatement(q);
            pd.setString(1, email);
            pd.setString(2, password);
            
            ResultSet rs =  pd.executeQuery();
            if(rs.next())
            {
                admin = new Admin();
//                data from db
                String name = rs.getString("name");
                
//                set data to admin object
               admin.setId(rs.getInt("id"));
               admin.setName(name);
               admin.setEmail(rs.getString("email"));
               admin.setContact(rs.getString("contact"));
               admin.setPassword(rs.getString("password"));
               admin.setRdate(rs.getTimestamp("rdate"));
        }
            }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        
        return admin;
    
    }
    
//    fettching all details of addmin to show on viewaAdmin page
    
    public ArrayList<Admin> getAllAdmin()
    {
        ArrayList<Admin> list = new ArrayList<>();
        
        String q = "select * from admin";
     
        try 
        {
               
            Statement st = this.con.createStatement();
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) 
            {                
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String contact = rs.getString("contact");
                Timestamp rdate = rs.getTimestamp("rdate");
                
                Admin admin = new Admin(id, name, email, contact, rdate);
                list.add(admin);
            }
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        
        
        return list;
    }
    
   public boolean addCourse(Course c)
   {
//       System.out.println("At dao "+c.getCname());
       boolean f = false;
       try {
            String q = "insert into course(cname) values(?)";
            PreparedStatement pst =  this.con.prepareStatement(q);
            pst.setString(1, c.getCname());
              int i = pst.executeUpdate();
                if(i>0)
               {
                   f=true;
               }
//              String q = "insert into course(cname) values('"+c.getCname()+"')";
//              
//              Statement st = this.con.createStatement();
//              int i = st.executeUpdate(q);
//               if(i>0)
//               {
//                   f=true;
//               }
               
       } 
       catch (Exception e) {
           e.printStackTrace();
       }
       
       return f;
   }
   
//   method for saving events
   public boolean saveEvent(Event event)
    {
        boolean f = false;
        
       if(event.getEname()=="" || event.getElocation()=="" || event.getEdate()=="" || event.getEimage()=="")
       {
           return f;
       }
       else
       {
           try 
        {
           //            data->database
             String q = "insert into event(ename,elocation,edate,eimage) values(?,?,?,?)";   
             PreparedStatement ps = this.con.prepareStatement(q);
             ps.setString(1, event.getEname());
             ps.setString(2, event.getElocation());
               ps.setString(3, event.getEdate());
             ps.setString(4, event.getEimage());
            ps.executeUpdate();
            f = true;
       }
           catch (SQLException e) {
           e.printStackTrace();
       }
        } 
        
       
        return f;
    }
   
   //    fettching all details of addmin to show on viewaAdmin page
    
    public ArrayList<Event> getAllEvent()
    {
        ArrayList<Event> list = new ArrayList<>();
        
        String q = "select * from event";
     
        try 
        {
               
            Statement st = this.con.createStatement();
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) 
            {                
                int eid = rs.getInt("eid");
                String ename = rs.getString("ename");
                String elocation = rs.getString("elocation");
                String edate = rs.getString("edate");
                String eimage = rs.getString("eimage");
                
                Event event = new Event(eid, ename, elocation, edate, eimage);
                list.add(event);
            }
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        
        
        return list;
    }
    
   public boolean EditAdmin(Admin admin)
    {
        boolean f = false;
        try 
        {
//            data->database
             String q = "update  admin set name=?,email=?,contact=?,password=? where id=?";   
             PreparedStatement ps = this.con.prepareStatement(q);
             ps.setString(1, admin.getName());
             ps.setString(2, admin.getEmail());
               ps.setString(3, admin.getContact());
             ps.setString(4, admin.getPassword());
               ps.setInt(5, admin.getId()); 
            ps.executeUpdate();
            f = true;
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
   
   // updating admin etails
   public boolean updateAdmin(Admin admin)
    {
        boolean f = false;
        try 
        {
//            data->database
             String q = "update  admin set name=?,email=?,contact=?,password=? where aid=?";   
             PreparedStatement ps = this.con.prepareStatement(q);
             ps.setString(1, admin.getName());
             ps.setString(2, admin.getEmail());
               ps.setString(3, admin.getContact());
             ps.setString(4, admin.getPassword());
             ps.setInt(5, admin.getId());
            ps.executeUpdate();
            f = true;
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
   
   
     public boolean verifyAlumniByEnrollment(String enrollment,String year)
    {
        String tableEnrollment="";
        String tableYear="";
        int tableEid;
//        boolean f = false;
//        verifyAlumni alumni=null;
        
        try 
        {
            String q = "Select * from verifyAlumni where enrollment=? and year=?";
            PreparedStatement pd = this.con.prepareStatement(q);
            pd.setString(1, enrollment);
            pd.setString(2, year);
            
            ResultSet rs =  pd.executeQuery();
            if(rs.next())
            {
                verifyAlumni alumni = new verifyAlumni();
//                data from db
                
               tableEid=rs.getInt("eid");
              
               tableEnrollment=rs.getString("enrollment");
               tableYear=rs.getString("year");
               
              
            alumni.setId(tableEid);
            alumni.setErollment(tableEnrollment);
            alumni.setYear(tableYear);
            }
            else{
                return false;
            }
            
            }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        
        if(tableEnrollment.equals(enrollment) && tableYear.equals(year))
        {
            
            return true;
        }
        return false;
    
    }
     
     //    method to insert data to database of alumni table
    
    
     public boolean saveAlumni(Alumni alumni)
    {
        boolean f = false;
        try 
        {
//            data->database
             String q = "insert into registered_alumni(email, enrollment_no, registration_no, passout_year, occupation,organisation, designation, date_of_birth, password, contact, profile,name) values(?,?,?,?,?,?,?,?,?,?,?,?)"; 
                    
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
             
             
            ps.executeUpdate();
            f = true;
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        //System.out.println(f);
        return f;
        
    }
    
    //    fettching all details of alumni to show on viewaAlumni page
    
    public ArrayList<Alumni> getAllAlumni()
    {
        ArrayList<Alumni> list = new ArrayList<>();
        
        String q = "select * from registered_alumni";
     
        try 
        {
               
            Statement st = this.con.createStatement();
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) 
            {                
                int id = rs.getInt("aid");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String enrollment = rs.getString("enrollment_no");
                 String registration = rs.getString("registration_no");
                String year = rs.getString("passout_year");
                String occupation = rs.getString("occupation");
                
                String organisation = rs.getString("organisation");
                String designation = rs.getString("designation");
                 String DOB = rs.getString("date_of_birth");
                String password = rs.getString("password");
                String contact = rs.getString("contact");
                String image = rs.getString("profile");
                Timestamp rdate = rs.getTimestamp("rdate");
                
                Alumni alumni = new Alumni(id, name, email, enrollment, registration, year, occupation, organisation, designation, DOB, password, contact, image, rdate);
                list.add(alumni);
            }
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        
        
        return list;
    }
    
    
    //    method to get All events
    
    public Event getEventById(int id)
    {
        Event event = null;
        
        try 
        {
            String q = "Select * from event where eid=?";
            PreparedStatement pd = this.con.prepareStatement(q);
            pd.setInt(1, id);
             ResultSet rs =  pd.executeQuery();
            if(rs.next())
            {
                event = new Event();
//                data from db
                String name = rs.getString("ename");
                
//                set data to admin object
               event.setEid(rs.getInt("eid"));
               event.setEname(name);
               event.setElocation(rs.getString("elocation"));
               event.setEdate(rs.getString("edate"));
               event.setEimage(rs.getString("eimage"));
        }
            }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        
        return event;
    
    }
    
    // updating Gallary details
     public boolean UpdateEvent(Event event)
    {
     System.out.println(event.getEname()+" "+event.getEdate()+" "+event.getEimage()+" "+event.getElocation()+" "+event.getEid());

        boolean f = false;
        try 
        {
//            data->database
             String q = "update  event set ename=?,elocation=?,edate=?,eimage=? where eid=?";   
             PreparedStatement ps = this.con.prepareStatement(q);
             ps.setString(1, event.getEname());
             ps.setString(2, event.getElocation());
               ps.setString(3, event.getEdate());
             ps.setString(4, event.getEimage());
               ps.setInt(5, event.getEid()); 
            int i = ps.executeUpdate();
            if(i>0)
            {
                f = true;
            }
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
   
     //    method to insert gallary  data to database gallary table
    
    public boolean saveGallary(Gallary g)
    {
        boolean f = false;
        try 
        {
//            data->database
             String q = "insert into gallary(name,image) values(?,?)";   
             PreparedStatement ps = this.con.prepareStatement(q);
             ps.setString(1, g.getName());
             ps.setString(2, g.getImage());
              
            ps.executeUpdate();
            f = true;
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
    //    fettching all details of addmin to show on viewaAdmin page
    
    public ArrayList<Gallary> getAllGallary()
    {
        ArrayList<Gallary> list = new ArrayList<>();
        
        String q = "select * from gallary";
     
        try 
        {
               
            Statement st = this.con.createStatement();
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) 
            {                
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String image = rs.getString("image");
                Timestamp rdate = rs.getTimestamp("rdate");
               
                
                Gallary g = new Gallary(id, name, image, rdate);
                list.add(g);
            }
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        
        
        return list;
    }
    
    //    method to get All gallary's
    
    public Gallary getGallaryById(int id)
    {
        Gallary g = null;
        
        try 
        {
            String q = "Select * from gallary where id=?";
            PreparedStatement pd = this.con.prepareStatement(q);
            pd.setInt(1, id);
             ResultSet rs =  pd.executeQuery();
            if(rs.next())
            {
                g = new Gallary();
//                data from db
                String name = rs.getString("name");
                
//                set data to admin object
               g.setId(rs.getInt("id"));
               g.setName(name);
               g.setImage(rs.getString("image"));
               g.setRdate(rs.getTimestamp("rdate"));
               
        }
            }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        
        return g;
    
    }
    
    // updating event details
     public boolean UpdateGallary(Gallary g)
    {
     
        boolean f = false;
        try 
        {
//            data->database
             String q = "update  gallary set name=?,image=? where id=?";   
             PreparedStatement ps = this.con.prepareStatement(q);
             ps.setString(1, g.getName());
             ps.setString(2, g.getImage());
              
               ps.setInt(3, g.getId()); 
            int i = ps.executeUpdate();
            if(i>0)
            {
                f = true;
            }
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
   
     //    fettching all details of posting alumni
    
    public ArrayList<Posting> getAllPost()
    {
        ArrayList<Posting> list = new ArrayList<>();
        
        String q = "select * from posting";
     
        try 
        {
               
            Statement st = this.con.createStatement();
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) 
            {                
                int id = rs.getInt("pid");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String ptype = rs.getString("ptype");
                 String link = rs.getString("link");
                String salary = rs.getString("salary");
                String mode = rs.getString("mode");
                
                String locations = rs.getString("locations");
                String duration = rs.getString("duration");
                 
                Timestamp rdate = rs.getTimestamp("rdate");
                
                Posting p = new Posting(id, name, description, ptype, link, salary, mode, locations, duration, rdate);
                 list.add(p);
            }
        } 
        catch (Exception e) 
        {
            e.printStackTrace();
        }
        
        
        return list;
    }
    
    
    public boolean saveStudent(Student st)
    {
        boolean f = false;
        try 
        {
//            data->database
             String q = "insert into student(name,email,enrollment,registration,year,password) values(?,?,?,?,?,?)";   
             PreparedStatement ps = this.con.prepareStatement(q);
             ps.setString(1, st.getName());
             ps.setString(2, st.getEmail());
               ps.setString(3, st.getEnrollment());
             ps.setString(4, st.getRegistration());
             
               ps.setString(5, st.getYear());
             ps.setString(6, st.getPassword());
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
