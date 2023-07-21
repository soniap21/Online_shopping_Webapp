<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>

<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
<style>
    .button-container {
        display: flex;
        justify-content: center;
        width: 83%;
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
<div style="color: black; text-align: center; font-size: 30px;"><b>Message Us </b><i class='fas fa-comment-alt'></i></div>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 style="text-align:center; color:black;">Message successfully sent. Our team will contact you soon!</h3>
<%
}
if("invalid".equals(msg))
{
%>
<h3 style="text-align:center; ">Some thing Went Wrong! Try Again!</h3>
<%} %>
<br>
<form action="messageUsAction.jsp" method="post">
<input class="input-style" name="subject" type="text" placeholder="subject" required>
<hr>
<textarea class="input-style" name="body" placeholder="Enter Your Message" required></textarea>
<hr>
<div class="button-container">
    <button class="button" type="submit">Send <i class='far fa-arrow-alt-circle-right'></i></button>
</div> 

</form>


<br><br><br>
</body>
</html>