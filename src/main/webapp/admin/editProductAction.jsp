<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String category = request.getParameter("category");
String price = request.getParameter("price");
String Status = request.getParameter("Status");
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("update product set name='"+name+"',category='"+category+"',price='"+price+"',Status='"+Status+"' where id='"+id+"'");
	if(Status.equals("InActive"))
	{
		st.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");
	}
	response.sendRedirect("allProductEditProduct.jsp?msg=done");
}
catch(Exception e)
{
	out.println(e);
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");

}
%>
