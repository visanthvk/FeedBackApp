package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Getdetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


                 private Connection cn = null; 
            
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Employee Details</title>\n");
      out.write("         <style type=\"text/css\">\n");
      out.write("        /*#int1{\n");
      out.write("                    font-size:20px;\n");
      out.write("                    font-family: sans-serif;\n");
      out.write("                    position: absolute;\n");
      out.write("                    left:100px;\n");
      out.write("                    top:150px;\n");
      out.write("             }\n");
      out.write("        #int2{\n");
      out.write("                    font-size:20px;\n");
      out.write("                    font-family: sans-serif;\n");
      out.write("                    position: absolute;\n");
      out.write("                    left:500px;\n");
      out.write("                    top:150px;\n");
      out.write("             }\n");
      out.write("        #int3{\n");
      out.write("                    font-size:20px;\n");
      out.write("                    font-family: sans-serif;\n");
      out.write("                    position: absolute;\n");
      out.write("                    left:900px;\n");
      out.write("                    top:150px;\n");
      out.write("             }\n");
      out.write("         #sem1{\n");
      out.write("                    font-size:20px;\n");
      out.write("                    font-family: sans-serif;\n");
      out.write("                    position: absolute;\n");
      out.write("                    left:1400px;\n");
      out.write("                    top:150px;\n");
      out.write("             }\n");
      out.write("       #div1 {background-color: pink;width:33cm;height:40px;}\n");
      out.write("       #bor {border-color: black;border-style: solid;}\n");
      out.write("       #p1 {font-size:30px;font-family:arial;text-align:center;font-style:italic;}\n");
      out.write("       body{background-color:lightgrey;}*/\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("            <body>\n");
      out.write("            <div>\n");
      out.write("            ");
      out.write("\n");
      out.write("            ");

                Class.forName("com.mysql.jdbc.Driver");
                cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbackapp","root","");
            
      out.write("\n");
      out.write("            ");

                String eid =request.getParameter("eid");
                Statement stmt = cn.createStatement();
                String query ="select * from empdetails where eid='"+eid+"'";
                ResultSet rs = stmt.executeQuery(query);
            
      out.write("\n");
      out.write("            ");

                while(rs.next())
                {   
            
      out.write("\n");
      out.write("            <center>\n");
      out.write("            <div>\n");
      out.write("                <p>Details of Employee <b>");
      out.print(rs.getString("name"));
      out.write("</b>..!!</p>\n");
      out.write("            </div><br><br><br>\n");
      out.write("             ");

                  }
             
      out.write("\n");
      out.write("            ");

              String query1 ="select * from empdetails where eid='"+eid+"'";
              rs = stmt.executeQuery(query1);
            
      out.write("\n");
      out.write("            ");

               while(rs.next())
               {   
            
      out.write("  \n");
      out.write("               <table cellpadding=\"10\" cellspacing=\"3\" >                          \n");
      out.write("               <thead>\n");
      out.write("               <p> Train Information</p>\n");
      out.write("                   <tr>\n");
      out.write("                       <td>Id</td>\n");
      out.write("                       <td>");
      out.print(rs.getString("eid"));
      out.write("</td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                       <td>Name</td>\n");
      out.write("                       <td>");
      out.print(rs.getString("ename"));
      out.write("</td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                       <td>Company Where he/she worked for :</td>\n");
      out.write("                       <td>");
      out.print(rs.getString("traintype"));
      out.write("</td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                       <td>Designation:</td>\n");
      out.write("                       <td>");
      out.print(rs.getString("designation"));
      out.write("</td>\n");
      out.write("                   </tr>\n");
      out.write("                   <tr>\n");
      out.write("                       <td>Rating</td>\n");
      out.write("                       <td>");
      out.print(rs.getString("rating"));
      out.write("</td>\n");
      out.write("                   </tr>\n");
      out.write("            </table>\n");
      out.write("            </center>\n");
      out.write("                       ");

                       }
                    
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
