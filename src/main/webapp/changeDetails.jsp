<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<title>Change Details</title>
<style>
hr
{width:70%;}
body
{
	background-color:#ffd7d7;
}
h3
{
	color: black;
}
</style>
</head>
<body>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("select * from users where email='"+email+"'");
	while(rs.next())
	{
		%>
<h3><u>Name</u>:-   <%=rs.getString(1) %></h3>
<hr>
 <h3><u>Email</u>:-  <%=rs.getString(2) %></h3>
 <hr>
 <h3><u>Mobile Number</u>:-  <%=rs.getString(3) %> </h3>
 <hr>
<h3><u>Security Question</u>:-  <%=rs.getString(4) %></h3>
<hr>
      <br>
      <br>
      <br>
<%
	}
}
catch(Exception e){
	out.println(e);
}
%>
</body>
</html>
