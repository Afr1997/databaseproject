
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<title>University of Bishop</title>
	<meta chardset="utf-8">
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
		height:400px;
		
		
	}
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
		<center><img  class="design" src="images/head.jpg" style="width:100%" alt="head_image" title="head"></center>
		<section class="left-col">
			<h1>LogIn</h1>
			<div id="registration">
                            <!-- admin login form-->
			<form action="admin_submit.jsp">
				<table>
					<tr>
						<td>User ID</td>
                                                <td>:<input name="id" type="text" title="Enter user id" required > </td>
					</tr>
					<tr>
						<td>Password</td>
						<td >:<input name="pass" type="password" title="enter password" required ></td>
					</tr>
					<tr>
						<td></td>
						
						<td><input type="reset" value="Reset"><input type="Submit" value="Login"></td>
						
					</tr>

				</table>
			</form>
			<p style="color:red">* NOTE:This is only for Admin of this college if you are admin please enter your user id and password to see the registered students details.<br>*
                        If you put wrong username and password it automatically redirects to this page</p>
                        
			</div>
                        
                      
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
				<li><a href="https://twitter.com"><img src="images/twitter.png" alt="twitter" title="twitter"></a></li>
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
