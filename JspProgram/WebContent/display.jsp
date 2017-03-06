<%@ page import="java.sql.*" %>



<HTML>
    <HEAD>
        <TITLE>Records </TITLE>
    </HEAD>

    <BODY>
        <H1>Information of registered data</H1>

        <% 
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://172.16.2.217:3306/Test1","acmeinfi", "ProteasLankans");
        Statement st = con.createStatement();
            ResultSet resultset = 
                st.executeQuery("select  * from members") ; 
        %>

        <TABLE BORDER="1">
            <TR>
                <TH>First Name</TH>
                <TH>Last Name</TH>
                <TH>Email</TH>
                <TH>Phone Number</TH>
                <TH>Location</TH>
                 <TH>Edit/Delete</TH>
            </TR>
            <% while(resultset.next()){  %>
           
             
            <TR>
                <TD> <%= resultset.getString("FirstName") %></td>
                <TD> <%= resultset.getString("LastName") %></TD>
                <TD> <%= resultset.getString("Email") %></TD>
                 <TD> <%= resultset.getString("PhoneNo") %></TD>
                <TD> <%= resultset.getString("Location") %></TD>
              
                <td><a href="update.jsp?ID=<%=resultset.getString("PhoneNo") %>">Update</a>
                <a href= "delete.jsp?ID=<%=resultset.getString("PhoneNo") %>">Delete</a></td>
          
            </TR>
            
       
           <%  } %>
        </TABLE>
        <a href="index.jsp">Home</a>
    </BODY>
</HTML>
