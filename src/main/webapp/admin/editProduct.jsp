<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>

<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Add New Product</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
body
{
	background-color:#ffd7d7;
}
</style>
</head>
<body>
 <%
 String id=request.getParameter("id");
 try
 {
	 Connection con=ConnectionProvider.getCon();
	 Statement st = con.createStatement();
	 ResultSet rs = st.executeQuery("Select * from product where id = '"+id+"'");
	 while(rs.next())
	 {
		 
 %>
 <form action="editProductAction.jsp" method="post">
  <input type="hidden" name="id" value="<%out.println(id);%>">
 
<div class="left-div">
 <h3>Enter Name</h3>
<input class="input-style" type="text" name="name" value="<%=rs.getString(2) %>" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
 <input class="input-style" type="text" name="category" value="<%=rs.getString(3) %>" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
<input class="input-style" type="number" name="price" value="<%=rs.getString(4) %>" required>
 
<hr>
</div>

<div class="right-div">
<h3>Status</h3>
<select class="input-style" name="Status">
<option value="Active">Active</option>
<option value="InActive">InActive</option>
</select>
 <hr>
</div>
<button class="button">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<br>
<br>


<h4><a class="back" href="allProductEditProduct.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h4>
<%
}
 }
catch(Exception e)
{
	out.println(e);
}
%>

</body>
<br><br><br>
</html>