
<%
String username = (String) session.getAttribute("username");
if (username == null) {
	request.setAttribute("msg", "Plz Login First");
	RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
	dispatcher.forward(request, response);

}
%>
<html>
<head>
<style>
.div0 {
	background-image: url('/images/production.jpg');
	width: 100%;
	height: 700px;
	border: 1px solid;
	color: purple;
	text-align: center;
	display: table;
	background-size: contain;
}

.div01 {
	/* 	display: table-cell; */
	/* 	vertical-align: middle; */
	margin-top: 85px;
	text-transform: uppercase;
}

.div02 {
	color: red;
	margin-left: 85px;
}
</style>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<body>
	<nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark"">
		<a class="navbar-brand" href="#">AKProduction</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">

			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link"
					href="/mainPage">Home <span class="sr-only">(current)</span></a></li>

				<%
				String role = (String) session.getAttribute("role");
				if (role.equals("Admin")) {
				%>
				<li class="nav-item"><a class="nav-link"
					href="openRegisterPage">AddUser</a></li>
				<%
				}
				%>

				<li class="nav-item"><a class="nav-link " href="getAllUser">List
						of Users</a></li>
				<!-- 				<li class="nav-item"><a class="nav-link " href="getAllProduct">List
						of Products</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">Import
						User </a></li> -->
				<li class="nav-item">
				<li class="nav-item"><a class="nav-link disabled"
					href="getProfile?username=<%=session.getAttribute("username")%>"><%=session.getAttribute("username")%></a>
				</li>
				<li class="nav-item"><a class="nav-link " href="logout">Logout</a></li>
			</ul>
		</div>
	</nav>
	<div class="div0">

		<div class="div01">
			<h2>Hello ${username}</h2>
			<h4>Welcome To AKProduction</h4>
		</div>
		<div class="div02">
			<h4>${msg}</h4>
		</div>
	</div>


</body>
</head>
</html>
<jsp:include page="footer.jsp"></jsp:include>