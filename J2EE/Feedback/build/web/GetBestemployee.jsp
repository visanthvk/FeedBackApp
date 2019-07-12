<%-- 
    Document   : GetBestemployee
    Created on : 12 Jul, 2019, 3:25:55 PM
    Author     : visanth
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Best Employee</title>
    </head>
    <body>
     <div>
            <%!
                 private Connection cn = null; 
            %>
            <%
                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbackapp","root","");
            %>
            <%
                String company =request.getParameter("company");
                Statement stmt = cn.createStatement();
                String query ="select * from empdetails where company='"+company+"' having max(rating)" ;
                ResultSet rs = stmt.executeQuery(query);
            %>
            <%
                while(rs.next())
                {   
            %>
            <center>
            <div> Employee Name :<b><%=rs.getString("name")%></b>..!!</p>
            </div><br><br><br>
             <%
                  }
             %>
    </body>
</html>