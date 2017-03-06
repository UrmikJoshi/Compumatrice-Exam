<%@ page import ="java.sql.*" %>
<%
    String id = request.getParameter("ID");    
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://172.16.2.217:3306/Test1","acmeinfi", "ProteasLankans");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("delete from members where PhoneNo= " + id );
    if (i > 0) 
    {
    	
        //session.setAttribute("userid", user);
        response.sendRedirect("display.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("hello.html");
    }
%>