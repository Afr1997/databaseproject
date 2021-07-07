<%-- 
    Document   : registration
    Created on : Jul 2, 2015, 1:31:11 AM
    Author     : gagan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<title>Haridwar Engineering College</title>
	<meta chardset="utf-8">
	<meta name="author" content="Gagan kumar indoriya">
	<meta name="keywords"  content="myintro.16mb.com,myintro.com,myintrorce,rceroorkee.in,gaganindoriya,gagankumar,gagan,gaganintro">
	<meta name="description" content="This website is a introduction website and made by a student of roorkee college of engineering ,the boy is Gagan kumar indoriya.....he make this website for his personal intrest in web designing & development">
	<meta name="viewport" content="width=device-width,initial-scale=1.0 ">
	<link rel="icon" href="images/icon" size="6*16">
	<link rel="stylesheet" type="text/css" href="style.css">
	<style>
	body{min-width: 410px;}

	.left-col{
		width:80%;
		margin-left:10%;
		float:center;
		
	}
	</style>

</head>
<body>
	<div id="wrapper">
		<div id="callout">
			<p>call us at :<b><a href="">9897846403</a></b></p>
		</div>
		<header>			
                    <img src="images/0000.JPG" width="1000" height="200" alt="0000"/>
		</header>
		
		<div id="navigation">
		<nav >
			<ul>
				<li  ><a href="index.jsp">Home</a></li>
				<li><a href="gallery.jsp">Gallery</a></li>
				<li><a href="aboutUs.jsp">About us</a></li>
				<li class="active"><a href="registration.jsp">Registration</a></li>
				<li><a href="admin_login.jsp">LogIn</a></li>
			</ul>
		</nav>
		</div>
		
		<center><img  class="design" src="images/head.jpg" style="width:100%" alt="head_image" title="head"></center>
		<section class="left-col">
			<h1>Registration</h1>
			<p>The Institute is currently running the B.Tech programme(CS,Civil,EEE,ME) affillated by Uttarakhand Technical Unversity Registrations are open for the acadmic year 2015-2016.you can Register Here.</p>
			
			<section id="registration">
			<h1>Registration Form</h1>
			<form action="submit.jsp">
				<table border="0" >
                            
                                <tr>
                                Personal Details
                                </tr>
                                <hr>
                                <tr>
                                    <td>Name</td>
                                    <td>:<input type="text" name="name"  title="Please enter your name" required autofocus placeholder="Your Name ..." size="25"/></td>
                                </tr>
                                <tr>
                                    <td>Date Of Birth</td>
                                    <td>:<input type="date" name="dob"  title="Please enter your name..." required  size="25"/></td>
                                </tr>
                                <tr>
                                    <td>Gender</td>
                                    <td>:<input type="radio" name="sex"  value="male"  checked />Male<input type="radio" name="gender" value="Female"/>Female</fieldset></td>
                                </tr>
                                
                                
                                <tr>
                                    <td>Branch</td>
                                    <td>:
                                        <select name="branch" title="choose your branch" width="25">
                                            <option value="Computer science">Computer Science </option>
                                            <option value="mechanical">Mechanical</option>
                                            <option value="civil">Civil</option>
                                            <option value="civil">Electrical & Electronics </option>
                                            
                                                                                     
                                        </select>
                                    </td>
                                </tr>
                                
                                <tr>
                                    <td>E-Mail</td>
                                    <td>:<input type="email"  name="email" required title="please enter your email" 
                                    placeholder="Your E-mail Address" size="25"/></td>
                                </tr>
                                
                                <tr>
                                    <td>Number</td>
                                    <td>:<input type="text"  name="phone" required pattern=[0-9]{10} title="please enter your 10 digit mobile number 
                                    eg:9897XXXXXX"  maxlength="10" placeholder="Your Mobile Number'" size="25"/></td>
                                </tr>
                      
                        </table>
                        <!--end of personal details-->
                        <table>
                        	<tr><br>
                                parents Details
                                </tr>
                                <hr>
                        	<tr>
                        		<td>Father's Name</td>
                        		<td>:<input type="text" name="fname" placeholder="Father's Name" required size="25"></td>
                        	</tr>
                        	<tr>
                        		<td>Mother's Name</td>
                        		<td>:<input type="text" name="mname" placeholder="Mother's Name" required size="25"></td>
                        	</tr>
                        	
                        </table>
                        <!--end of parent details-->
                        <table border="0" >
                            
                                <tr><br>
                                Correspondence Address
                                </tr>
                                <hr>
                                
                                <tr>
                                    <td>House No</td>
                                    <td>:<input type="text" name="houseno"  title="Please enter your House No" required  placeholder="House No" size="25" ></td>
                                </tr>
                                
                                <tr>
                                    <td>Street</td>
                                    <td>:<input type="text" name="street"  title="Please enter your Street" required  placeholder="Street" size="25"></td>
                                <tr>
                                    <td>City</td>
                                    <td>:<input type="text" name="city"  title="Please enter your City" required  placeholder="City" size="25"></td>
                                </tr>
                                <tr>
                                    <td>State</td>
                                   <td>:<input type="text" name="state"  title="Please enter your State" required  placeholder="State" size="25"></td>
                                </tr>
                                <tr>
                                    <td>Pin code</td>
                                    <td>:<input type="text" name="pin"  title="Please enter your Pin code" required  placeholder="Pin code" size="25" maxlength="6" ></td>
                                </tr>
                               
                        </table>
                        <!--end of correspondence Address-->
                        
                        
                        <table>
                        	<tr>
                                   
                                    <td><input type="reset" name="reset" value="Reset" title="click to reset all fields" style="font-size:20px;float:right"></td>
                                    <td><input type="submit" name="submit" title="click to submit" value="Register" style="font-size:20px"></td>
                                </tr>

                        </table>
			</form>
				
			</section>
		</section>

		
		<center><img  class="design " src="images/head.jpg" style="width:100%"></center>
		<footer>
		<div class="section">
			<p><b><a href="">9897846403</a></b><br>
			to connect with me you are just a call away</p>
		</div>
		<div class="section">
			<p>Connect with us! </p>
			<ul>
				<li><a href="https://www.facebook.com/gagan.indoriya"><img src="images/facebook.png" alt="facebook" title="facebook"></a></li>
				<li><a href="https://twitter.com/GaganIndoriya"><img src="images/twitter.png" alt="twitter" title="twitter"></a></li>
				<li><a href="https://www.youtube.com/user/ggnnr34"><img src="images/youtube.png" alt="youtube" title="youtube"></a></li>	
			</ul>
		</div>
		<div class="section">
			<img src="images/004.jpg" title="eye" alt="eye">
		</div>
		</footer>

	</div>
	<p style="text-align:center;padding:0px">&#169  copyright - gagan's website 2014</p>
	
</body>
</html>
