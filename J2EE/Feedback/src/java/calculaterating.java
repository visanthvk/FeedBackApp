/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author visanth
 */
public class calculaterating extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     private Connection cn = null;
    public void init(ServletConfig sc) throws ServletException
    {
        
        try
        {
            super.init(sc);
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/feedbackapp","root","");
        }
        catch (Exception ex)
        {
            System.out.println(ex);
        } 
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
            try{
            Statement stmt = cn.createStatement();
           String id = request.getParameter("id");
           String name;
           Float rat = null,temp;
           int num = 0;
           Float ratings = Float.parseFloat(request.getParameter("rating"));
           String commands = request.getParameter("commands");
           String query ="select * from empdetails where eid="+id+"";
           ResultSet rs = stmt.executeQuery(query);
           while(rs.next())
           {
               name = rs.getString("name");
               rat = Float.parseFloat(rs.getString("rating"));
               num = Integer.parseInt(rs.getString("no_of_updated"));
           }
                temp =(rat*num)+ratings;
                num= num+1;
                rat = rat/num;
                query="UPDATE empdetails SET rating = "+rat+",nu_of_updated="+num+" where id="+id+" ";
                rs = stmt.executeQuery(query);
          // String query ="insert into logins values ('"+id+"','"+name+"','"+type+"','"+ctype+"')";
          // stmt.executeUpdate(query);
           RequestDispatcher dispatcher = request.getRequestDispatcher("customer.html");
                 dispatcher.forward( request, response );
        }catch (SQLException ex) {
                System.out.println(ex);
         }        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
