<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ page import="java.sql.*" %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    
    <script type="text/javascript">
    
    
   
    function ValidateContactForm()
    {
    	    var name = document.UpdateForm.uname;
    	    var pass = document.UpdateForm.pass;
    	    var pass1 = document.UpdateForm.pass1;
    	    var fname = document.UpdateForm.fname;
    	    var lname = document.UpdateForm.lname;
    	    var email = document.UpdateForm.email;
    	    var phone = document.UpdateForm.phoneno;
    	    var location = document.UpdateForm.location;
    	   
    	    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
    	     
    	   
    	
    	
       
      
        if (name.value == "")
        {
            alert("Please enter your User name.");
            name.focus();
            return false;
        }
        
        if (pass1.value !=pass.value)
        {
            alert("Password Not match with original password.");
            pass1.focus();
            return false;
        }
        
        if (fname.value == "")
        {
            alert("Please enter your First name.");
            name.focus();
            return false;
        }
        if (lname.value == "")
        {
            alert("Please enter your Last name.");
            name.focus();
            return false;
        }
        
        
        if (email.value == "")
        {
            alert("Please enter a valid e-mail address.");
            email.focus();
            return false;
        }
        if (phone.value == "")
        {
            alert("Please enter a phone number.");
            phone.focus();
            return false;
        }
     
        else if(phone.value.length!= 10)
        {
            alert("Please enter valid number.");
            phoneno.focus();
            return false;
        }
    
        if (location.value == "")
        {
            window.alert("Please enter a location.");
            loaction.focus();
            return false;
        }
        
}
    
</script>
    
    
    
    
    
    
    
    
    <body>
        <form method="post" name="UpdateForm"  onSubmit ="return ValidateContactForm()" action="updata.jsp">
          
          <table align="center" >
                <thead>
                    <tr>
                        <th colspan="2">Update Information Here</th>
                    </tr>
                </thead>
                
                
        <% 
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://172.16.2.217:3306/Test1","acmeinfi", "ProteasLankans");
        Statement st = con.createStatement();
        String id = request.getParameter("ID");
        ResultSet resultset = 
                st.executeQuery("select  * from members where PhoneNo="+id) ; 
        %>
                  <% while(resultset.next()){  %>
                <tbody>
                 <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="<%= resultset.getString("UserName") %>" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="<%= resultset.getString("pass1") %>" /></td>
                    </tr>
                    
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" name="pass1" value="<%= resultset.getString("pass1") %>" /></td>
                    </tr>
                
                
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" value="<%= resultset.getString("FirstName") %>" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value="<%= resultset.getString("LastName") %>" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="email" value="<%= resultset.getString("Email") %>" /></td>
                    </tr>
                     <tr>
                        <td>Phone Number</td>
                        <td><input type="number" name="phoneno" value="<%= resultset.getString("PhoneNo") %>" /></td>
                    </tr>
                    
                     <tr>
                        <td>Location</td>
                        <td><input type="text" name="location" value="<%= resultset.getString("Location") %>" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Update"  align="center" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
                
           <%  } %>
            </table>
          
        </form>
    </body>
  
    
</html>