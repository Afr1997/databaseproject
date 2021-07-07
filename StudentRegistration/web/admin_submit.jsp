<%-- 
    Document   : admin_submit
    Created on : Jul 2, 2015, 1:38:01 AM
    Author     : gagan
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Admin submit page</h1>
        <% 
            
            // Fetch data from request and validating details
        String id=request.getParameter("id");
        String pass=request.getParameter("pass");
        
             try{  Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_reg", "root", "1234" );
               Statement stmt=con.createStatement();
               ResultSet rs=stmt.executeQuery("select * from adminhec");
               response.sendRedirect("admin_panel.jsp");
               while(rs.next()){
                   String did=rs.getString(2);
                   String dpass=rs.getString(3);
                   if(did.equals(id)&&dpass.equals(pass)){
                   
                   }
                   
               }
               
               response.sendRedirect("admin_login.jsp");
               
               
               
                             
             }catch(Exception e){
             
             out.println("an error occured "+e);
             }
       
        
                
        %>
        
    </body>
</html>

