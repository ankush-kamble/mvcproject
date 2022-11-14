
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
</body>
</head>
</html>