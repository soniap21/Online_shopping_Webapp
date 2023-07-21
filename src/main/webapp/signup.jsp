<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
<style>
        .h {
            font-weight: bold;
            font-size: 30px;
            margin-bottom: 0px; /* Reduce the margin-bottom to adjust space */
        }
        p {
            font-size: 20px;
            margin-top: 6px; /* Removed default top margin to reduce space */
        }
        
    </style>
</head>
<body>
<div id='container'>
  <div class='signup'>
	  <form action="signupAction.jsp" method="post">
	  	<input type="text" name="name" placeholder="Enter Name" required>
	  	<input type="email" name="email" placeholder="Enter Email" required>
	  	<input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
		<select name="securityQuestion" required> 
		<option value="What was your first car?">What was your first car?</option>
		<option value="What is the name of your first pet?">What is the name of your first pet?</option>
		<option value="What elementary school did you attend?">What elementary school did you attend?</option>
		<option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
		</select>
		<input type="text" name="answer" placeholder="Enter answer" required>
		<input type="password" name="password" placeholder="Enter Password" required>
		<input type="submit" name="signup"> 


	  </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
<% 
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
	%>
	<h1>Successfully Registered!</h1>
	<%
}
%>
<%
if("invalid".equals(msg))
{
	%>
	<h1>Some thing Went Wrong! Try Again !</h1>
	<%
}
%>

        <h2 class='h' >Sonia's WebKart</h2><p>Discover the joy of convenient online shopping with a diverse range of high-quality products. Enjoy secure transactions and prompt delivery for a seamless experience.</p>
  </div>
</div>

</body>
</html>