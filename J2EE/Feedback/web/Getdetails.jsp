<%-- 
    Document   : Getdetails
    Created on : 12 Jul, 2019, 11:28:51 AM
    Author     : visanth
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Details</title>
         <style type="text/css">
        /*#int1{
                    font-size:20px;
                    font-family: sans-serif;
                    position: absolute;
                    left:100px;
                    top:150px;
             }
        #int2{
                    font-size:20px;
                    font-family: sans-serif;
                    position: absolute;
                    left:500px;
                    top:150px;
             }
        #int3{
                    font-size:20px;
                    font-family: sans-serif;
                    position: absolute;
                    left:900px;
                    top:150px;
             }
         #sem1{
                    font-size:20px;
                    font-family: sans-serif;
                    position: absolute;
                    left:1400px;
                    top:150px;
             }
       #div1 {background-color: pink;width:33cm;height:40px;}
       #bor {border-color: black;border-style: solid;}
       #p1 {font-size:30px;font-family:arial;text-align:center;font-style:italic;}
       body{background-color:lightgrey;}*/
        </style>
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
                String eid =request.getParameter("eid");
                Statement stmt = cn.createStatement();
                String query ="select * from empdetails where eid='"+eid+"'";
                ResultSet rs = stmt.executeQuery(query);
            %>
            <%
                while(rs.next())
                {   
            %>
            <center>
            <div>
                <p>Details of Employee <b><%=rs.getString("name")%></b>..!!</p>
            </div><br><br><br>
             <%
                  }
             %>
            <%
              String query1 ="select * from empdetails where eid='"+eid+"'";
              rs = stmt.executeQuery(query1);
            %>
            <%
               while(rs.next())
               {   
            %>  
               <table cellpadding="10" cellspacing="3" >                          
               <thead>
               <p> Train Information</p>
                   <tr>
                       <td>Id</td>
                       <td><%=rs.getString("eid")%></td>
                   </tr>
                   <tr>
                       <td>Name</td>
                       <td><%=rs.getString("ename")%></td>
                   </tr>
                   <tr>
                       <td>Company Where he/she worked for :</td>
                       <td><%=rs.getString("traintype")%></td>
                   </tr>
                   <tr>
                       <td>Designation:</td>
                       <td><%=rs.getString("designation")%></td>
                   </tr>
                   <tr>
                       <td>Rating</td>
                       <td><%=rs.getString("rating")%></td>
                   </tr>
            </table>
            </center>
                       <%
                       }
                    %>    </body>
</html>
