<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="CREATE TABLE users (name varchar(100), email varchar(100) PRIMARY KEY, mobileNumber bigint, securityQuestion varchar(200), answer varchar(200), password varchar(100), address varchar(500), city varchar(100), state varchar(100), country varchar(100))";
	String q2="CREATE TABLE PRODUCT(id int, name varchar(100),category varchar(200), price int, Status varchar(10))";
	String q3="CREATE TABLE cart(email varchar(100),product_id int,quantity int, price int, total int, address varchar(500),city varchar(100), state varchar(100), country varchar(100), mobileNumber bigint, orderDate varchar(100), deliveryDate varchar(100), paymentMethod varchar(100), transactionId varchar(100), status varchar(10))";
	String q4="CREATE TABLE message(id int AUTO_INCREMENT, email varchar(100),subject varchar(200), body varchar(10000), PRIMARY KEY(id))";
	out.print(q1);
	out.print(q2);
	out.print(q4);
	//out.print(q3);
	//st.execute(q1);	
	//st.execute(q2);	
	//st.execute(q3);
	st.execute(q4);
	out.print("Table Created");
	con.close();
}
catch(Exception e)
{
		out.print(e);
}
%>
