<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*" %>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>

<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Add New Product</title>
<style>
    .button-container {
        justify-content: center;
        width: 99%;
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
<h3 class="alert">Product Added Successfully!</h3>
<%
}
if("wrong".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%
}%>
<%
int id=1;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs = st.executeQuery("select max(id) from product");
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}
}
catch(Exception e)
{
	
}
%>
<form action="addNewProductAction.jsp" method="post">
<h3 style="color: black;">Product ID:<%out.println(id); %> </h3>
<input type="hidden" name="id" value="<%out.println(id); %>">

<div class="left-div">
 <h3>Enter Name</h3>
<input class="input-style" type="text" name="name" placeholder="Enter name" required><hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
 <input class="input-style" type="text" name="category" placeholder="Enter category" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
<input class="input-style" type="text" name="price" placeholder="Enter price" required> 
<hr>
</div>

<div class="right-div">
<h3>Status</h3>
   <select class="input-style" name="Status">
   <option value="Active"> Active </option>
   <option value="InActive"> InActive </option>
   </select>
<hr>
</div>
<div class="button-container">
    <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</div>
</form>
</body>
<br><br><br>
</body>
</html>