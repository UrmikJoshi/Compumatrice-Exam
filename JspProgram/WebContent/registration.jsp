<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass1");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String phoneno = request.getParameter("phoneno");
    String email = request.getParameter("email");
    String location = request.getParameter("location");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://172.16.2.217:3306/Test1","acmeinfi", "ProteasLankans");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into members(Username, Password,FirstName,LastName,Email,PhoneNo,Location) values ('" + user + "','" + pwd + "','" + fname + "','" + lname +"','" + email +  "','" + phoneno + "','" + location+"')");
    if (i > 0) 
    {
    	
        //session.setAttribute("userid", user);
        response.sendRedirect("display.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>