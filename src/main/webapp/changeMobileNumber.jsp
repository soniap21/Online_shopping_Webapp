<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
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
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%
}
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeMobileNumberAction.jsp" method="post">
 <h3>Enter Your New Mobile Number</h3>
   <input class="input-style" type="number" name="mobileNumber" placeholder="Enter Your New Number" required>

 <hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter Password(For Security)" required>
<hr>
<div class="button-container">
    <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</div> 
</form>
</body>
<br><br><br>
</html>