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
    String query="update members SET Password=?,FirstName=?,LastName=?,Email=?,PhoneNo=?,Location=? where Username=?" ;
    PreparedStatement preparedStmt = con.prepareStatement(query);
    
    preparedStmt.setString(1, pwd);
    preparedStmt.setString(2, fname);
    preparedStmt.setString(3, lname);
    preparedStmt.setString(4, email);
    preparedStmt.setString(5, phoneno);
    preparedStmt.setString(6,location );
    preparedStmt.setString(7,user);
    int i=preparedStmt.executeUpdate();
    
    
    
   // int i = st.executeUpdate("update members SET Password='"+pwd+ "',FirstName='"+fname+"',LastName='"+lname+"',Email='"+email +"',PhoneNo='"+phoneno+"',Location='"+location+"' where Username="+user );
    if (i > 0) 
    {
    	
        //session.setAttribute("userid", user);
        response.sendRedirect("display.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>