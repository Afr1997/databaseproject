
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<title>University of Bishop</title>
	<meta chardset="utf-8">
	<meta name="author" content="Gagan kumar indoriya">
	<meta name="keywords"  content="myintro.16mb.com,myintro.com,myintrorce,rceroorkee.in,gaganindoriya,gagankumar,gagan,gaganintro">
	<meta name="description" content="This website is a introduction website and made by a student of roorkee college of engineering ,the boy is Gagan kumar indoriya.....he make this website for his personal intrest in web designing & development">
	<meta name="viewport" content="width=device-width,initial-scale=1.0 ">
	<link rel="icon" href="images/icon" size="6*16">
	<link rel="stylesheet" type="text/css" href="style.css">
	<style>
            body{min-width: 410px;
            }
	    .left-col{
		width:80%;
		margin-left:10%;
		float:center;
		height:100%;
	     	
		
	}
        #data{
            border:1px solid #00cc00;
            border-radius: 10px;
            padding:20px;
        }
        #data tr{line-height: 2em;
                font-size: 20px;
                
        } 
        #data td{width:300px;}
        p{color:red;}
	</style>

</head>
<body>
	<div id="wrapper">
		<div id="callout">
			<p>call us at :<b><a href="">899194275</a></b></p>
		</div>
		<header>			
                    <img src="images/0000.JPG" width="1000" height="200" style="height:300px;width:100%" alt="0000"/>
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
		<center><img  class="design" src="images/head.jpg" style="width:100%"  alt="head_image" title="head"></center>
		<section class="left-col">
			<h1>Admin Panel</h1>
                    <p>***Student Details***</p>
                    
                    <table border="1" id="data">
                       <tr>
                           <td><u><b>Student</b></u></td>
                    <td><u><b>Description</b></u></td>
                           
                           
                           
                       </tr>
                    <%
                   
         int serial=Integer.parseInt(request.getParameter("serial"));
         int flag=0;
        
        
             try{  Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_reg", "root", "1234" );
               Statement stmt=con.createStatement();
               ResultSet rs=stmt.executeQuery("select * from student ");
                             
               while(rs.next()){
                    
                    
                   int s=rs.getRow();
                   if(serial==s){
                       flag=1;
                   
                       %>
                       <tr>  <td>Sr.No.</td><td><%=s%></td></tr>
                       <tr>   <td>Name</td><td><b><%=rs.getString(1)%></b></td></tr>
                       <tr>    <td>Date Of Birth</td><td><%=rs.getString(2)%></td></tr>
                       <tr>   <td>Gender</td><td><%=rs.getString(3)%></td></tr>
                       <tr>    <td>Branch</td><td><%=rs.getString(4)%></td></tr>
                       <tr>    <td>E-Mail</td><td><%=rs.getString(5)%></td></tr>
                       <tr>   <td>Phone No.</td><td><%=rs.getString(6)%></td></tr>
                       <tr>   <td>Address</td><td>Home-<%=rs.getString(7)%>,<%=rs.getString(8)%>,<%=rs.getString(9)%><br><%=rs.getString(10)%>,<%=rs.getString(11)%><br></td></tr>
                       <tr>   <td>father's Name</td><td><%=rs.getString(12)%></td></tr>
                       <tr>   <td>Mother's Name</td><td><%=rs.getString(13)%></td></tr>
                           
                           
                           
                       
                  
                    <%
                    break;
                   }
                   
                    flag=0;
                   
               }
               if(flag==0){
               out.println("<p>* Sorry Student with this serial no. does not exist,please enter correct sr. no.</p>");
                       }
               con.close();
             }catch(Exception e){
             
             out.println("an error occured "+e);
             }
       
        
                
             %> </table><br><br><br><br><br><br>
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
