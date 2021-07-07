

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
            
            // here we are capturing the parameters and storing them in data base
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
        
        // this part is java code
       
        
        
        // Here is the JDBC connection
             try{  Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_reg", "root", "1234" );
               Statement stmt=con.createStatement();
               // query to insert data in to database
               String qry = "insert into student (`name`,`don`,`sex`,`branch`,`email`,`phone`,`houseno`,`street`,`city`,`state`,`pin`,`fname`,`mname`)"
                        + " values('"+name+"','"+dob+"','"+sex+"','"+branch+"','"+email+"','"+phone+"','"+houseno+"','"+street+"','"+city+"','"+state+"','"+pin+"','"+fname+"','"+mname+"')";
               System.out.println("Query:"+qry);
                int r=stmt.executeUpdate(qry);
               
               if(r==1){
                   response.sendRedirect("success.jsp");
               }
             }catch(Exception e){
                 e.printStackTrace();
             
             response.sendRedirect("registration.jsp");
             }
       
        
                
        %>
    </body>
</html>

