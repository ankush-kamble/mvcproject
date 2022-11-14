<jsp:include page="menu.jsp"></jsp:include>
<html>
<head>
<title>Home</title>
<style>
div {
	background-image: url('/images/beach.jpg');
	width: 100%;
}

h2 {
	text-transform: uppercase;
}
</style>
</head>
<body>

	<div>
		<h2>Hello ${username}</h2>

		<h4>${msg}</h4>
	</div>


	<!--         <img src="images/beach.jpg" alt=""/> -->
</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>