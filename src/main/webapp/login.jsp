
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
<style>
        .h {
            font-weight: bold;
            font-size: 30px;
            margin-bottom: 0px; /* Reduce the margin-bottom to adjust space */
        }
        p {
            font-size: 20px;
            margin-top: 4px; /* Removed default top margin to reduce space */
        }
        
    </style>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="loginAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="password" name="password" placeholder="Enter Password" required>
     <input type="submit" value="Login">
   
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
	%><h1>Incorrect Username or Password</h1>
	<%
  }
  if("invalid".equals(msg))
  {
	%><h1>Some thing Went Wrong! Try Again !</h1>
	<% 
	}
  %>
  

    <h2 class='h' >Sonia's WebKart</h2><p>Discover the joy of convenient online shopping with a diverse range of high-quality products. Enjoy secure transactions and prompt delivery for a seamless experience.</p>
  </div>
</div>

</body>
</html>