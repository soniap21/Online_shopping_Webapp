<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>

<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
<style>
    .button-container {
        display: flex;
        justify-content: center;
        width: 77%;
    }
    body
{
	background-color:#ffd7d7;
}
h3
{
	color: black;
}
</style>
</style>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%
}
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeSecurityQuestionAction.jsp" method="post">
<h3>Select Your New Security Question</h3>
  <select class="input-style" name="securityQuestion" required> 
		<option value="What was your first car?">What was your first car?</option>
		<option value="What is the name of your first pet?">What is the name of your first pet?</option>
		<option value="What elementary school did you attend?">What elementary school did you attend?</option>
		<option value="What is the name of the town where you were born?">What is the name of the town where you were born?</option>
  </select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input class="input-style" type="text" name="newAnswer" placeholder="Enter your new answer" required>
 
<hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter Password(For Security)" required>
<hr>
<div class="button-container">
    <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</div></form>
</body>
<br><br><br>
</html>