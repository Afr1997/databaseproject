
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<title>University of bishop</title>
	<meta chardset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0 ">
	<link rel="icon" href="images/icon" size="6*16">
	<link rel="stylesheet" type="text/css" href="style.css">
	<style>
            body{min-width:800px;}
	.left-col{
		width:80%;
		margin-left:10%;
		float:center;
		
	}#left{
                width:100%;
             
            }
            #left p{
                margin: 30px;
            }
            #data{
                width:90%;
                float:center;
            }
            #data td{
                width:30px;
            }
            p{color:red;}
	</style>

</head>
<body>
    <!-- admin home-->
	<div id="wrapper">
		<div id="callout">
			<p>call us at :<b><a href="">899194275</a></b></p>
		</div>
		<header>			
                    <img src="images/0000.JPG" width="1000" height="200" style="height:300px;width:100%"alt="0000"/>
		</header>
		
		<div id="navigation">
		<nav >
			<ul>
				<li ><a href="index.jsp">Home</a></li>
				<li><a href="gallery.jsp">Gallery</a></li>
				<li><a href="aboutUs.jsp">About us</a></li>
				<li><a href="registration.jsp">Registration</a></li>
				<li class="active"><a href="admin_login.jsp">LogIn</a></li>
			</ul>
		</nav>
		</div>
		
		<center><img  class="design" src="images/head.jpg" style="width:100%" alt="head_image" title="head"></center>
		<section class="left-col">
			<h1>Admin Panel</h1>
                    <p>Welcome admin panel! Here is the list of all students--></p>
                    <form action="admin_panel2.jsp">Enter Sr. No.<input name="serial" type="number"  required maxlength="4"><input type="submit" value="Show Details"></form><br><br>
                    <table border="1" id="data">
                       <tr>
                           <td>Sr.</td>
                           <td>Name</td>
                           <td>DOB</td>
                           <td>Gender</td>
                           <td>Branch</td>
                           <td>eMail</td>
                           <td>Phone</td>
                           
                           
                       </tr>
                    <%
                   
        String id=request.getParameter("id");
        String pass=request.getParameter("pass");
        
             try{  Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_reg", "root", "1234" );
               Statement stmt=con.createStatement();
               
               // getting all student registrations
               ResultSet rs=stmt.executeQuery("select * from student");
                             
               while(rs.next()){
                   
                   
                   
                       %><tr>
                           <td><%=rs.getRow()%></td>
                           <td><%=rs.getString(1)%></td>
                           <td><%=rs.getString(2)%></td>
                           <td><%=rs.getString(3)%></td>
                           <td><%=rs.getString(4)%></td>
                           <td><%=rs.getString(5)%></td>
                           <td><%=rs.getString(6)%></td>
                           
                           
                       </tr>
                  
                    <%
                    
                   
               }
               con.close();
             }catch(Exception e){
             
             out.println("an error occured "+e);
             }
       
        
                
        %> </table>
				<br><br><br><br><br>
                                
			</section>
		</section>

		
		<center><img  class="design " src="images/head.jpg" style="width:100%"></center>
		<footer>
		<div class="section">
			<p><b><a href="">899194275</a></b><br>
			to connect with me you are just a call away</p>
		</div>
		<div class="section">
			<p>Connect with us! </p>
			<ul>
				<li><a href="https://www.facebook.com/"><img src="images/facebook.png" alt="facebook" title="facebook"></a></li>
				<li><a href="https://twitter.com/"><img src="images/twitter.png" alt="twitter" title="twitter"></a></li>
				<li><a href="https://www.youtube.com/"><img src="images/youtube.png" alt="youtube" title="youtube"></a></li>	
			</ul>
		</div>
		<div class="section">
			<img src="images/004.jpg" title="eye" alt="eye">
		</div>
		</footer>

	</div>
	<p style="text-align:center;padding:0px">&#169  copyright - Surya's website 2019</p>
	
</body>
</html>

