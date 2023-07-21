<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About</title>
<style>
body {
	background-color: #ffd7d7;
}

h3 {
	color: black;
}

.container {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	align-items: center;
}

.text {
	width: 70%;
	text-align: center;
}

.img img {
	width: 100%; /* Reduce the image width as needed */
	max-width: 250px; /* Set a maximum width for the image */
	padding-right:5px
}

</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
<div style="color: black; text-align: center; font-size: 30px; "><b>About</b> <i class="fa fa-address-book"></i></div>
<div style="background-color: white; padding:35px; font-size: 20px;">
	<div class="container">
		<div class="text">
			<p>
				Hey everyone!! I am an MCA student with knowledge in Python and Java, focusing on various applications, particularly in machine learning for Python and developing robust and scalable applications using Java. Additionally, I possess proficiency in SQL, allowing me to efficiently manage and analyze databases. My academic journey has equipped me with the necessary knowledge and practical experience to effectively apply these skills. I am eager to contribute my expertise to the development of a company, driven by my passion for continuous learning and commitment to becoming a valuable asset to any organization.
			</p>
			<p>Contact me at: 2022.sonia.patra@ves.ac.in</p>
		</div>
		<div class="img"><img src="me.jpg" alt="My Picture">
		</div>
	</div>
</div>
</body>
</html>
