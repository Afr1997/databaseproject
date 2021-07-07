<%-- 
    Document   : submit
    Created on : Jul 2, 2015, 1:32:35 AM
    Author     : gagan
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% 
        String name=request.getParameter("name");
        String dob=request.getParameter("dob");
       String sex=request.getParameter("sex");
        String branch=request.getParameter("branch");
        String email=request.getParameter("email");
        String phone=request.getParameter("phone");
        
        String houseno=request.getParameter("houseno");
        String street=request.getParameter("street");
        String city=request.getParameter("city");
        String state=request.getParameter("state");
        String pin=request.getParameter("pin");
        
        String fname=request.getParameter("fname");
        String mname=request.getParameter("mname");
       
        
        
        
             try{  Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3310/student_reg", "root", "sukesh");
               Statement stmt=con.createStatement();
               ResultSet rs=stmt.executeQuery("insert into student values('"+name+"','"+dob+"','"+sex+"','"+branch+"','"+email+"','"+phone+"','"+houseno+"','"+street+"','"+city+"','"+state+"','"+pin+"','"+fname+"','"+mname+"')");
               
               if(rs.next()){
                   response.sendRedirect("success.jsp");
               }
             }catch(Exception e){
             
             response.sendRedirect("registration.jsp");
             }
       
        
                
        %>
    </body>
</html>

