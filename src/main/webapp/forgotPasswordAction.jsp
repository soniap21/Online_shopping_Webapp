<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%
String email = request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String newPassword = request.getParameter("newPassword");

int check=0;
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("SELECT * FROM users WHERE email='" + email + "' AND mobileNumber='" + mobileNumber + "' AND securityQuestion='" + securityQuestion + "' AND answer='" + answer + "'");
	while(rs.next())
	{
		check=1;
		st.executeUpdate("Update users set password = '"+newPassword+"' where email='"+email+"'");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	if(check==0)
	{
		response.sendRedirect("forgotPassword.jsp?msg=invalid");
	}
}
catch(Exception e)
{
	out.println(e);
}
%>