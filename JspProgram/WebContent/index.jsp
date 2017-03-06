<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    
    <script type="text/javascript">
    
    function  validateMobile()
    {
    var phoneno=new String();
    phoneno = document.RegForm.phoneno;
    if(phoneno.length!=10)
    	{
    	alert("Please enter 10 digit mobile no");
    	}
    	
    }
	
    function validateAlpha()
    {
    	var fname = document.RegForm.fname;
    	var textInput = fname.value;
        textInput = textInput.replace(/[^A-Za-z]/g, "");
        fname.value = textInput;
    }
    
    function validateAlpha1()
    {
    	var lname = document.RegForm.lname;
    	var textInput = lname.value;
        textInput = textInput.replace(/[^A-Za-z]/g, "");
        lname.value = textInput;
    }
    function ValidateContactForm()
    {
    	    var name = document.RegForm.uname;
    	    var pass = document.RegForm.pass;
    	    var pass1 = document.RegForm.pass1;
    	    var fname = document.RegForm.fname;
    	    var lname = document.RegForm.lname;
    	    var email = document.RegForm.email;
    	    var phone = document.RegForm.phoneno;
    	    var location = document.RegForm.location;
    	   
    	    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;  
    	    var letters = /^[A-Za-z]+$/; 
    	   
    	
    	
       
      
        if (fname.value == "")
        {
            alert("Please enter your User name.");
            name.focus();
            return false;
        }
        else if(!fname.match(letters))  
        {  
        	 alert("Please enter letter only");  
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
            alert("Please enter valid phone number.");
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
        <form method="post" name="RegForm"  onSubmit ="return ValidateContactForm()" action="registration.jsp">
          
          <table align="center" >
                <thead>
                    <tr>
                        <th colspan="2">Registration Form</th>
                    </tr>
                </thead>
                <tbody>
                 <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" name="pass1" value="" /></td>
                    </tr>
                
                
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" value="" oninput="validateAlpha();" /></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value=""  oninput="validateAlpha1();"  /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="email" value="" /></td>
                    </tr>
                     <tr>
                        <td>Phone Number</td>
                        <td><input type="number" name="phoneno" value=""  oninput="validateMobile();" /></td>
                    </tr>
                    
                     <tr>
                        <td>Location</td>
                        <td><input type="text" name="location" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit"  /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
          
        </form>
    </body>
  
    
</html>