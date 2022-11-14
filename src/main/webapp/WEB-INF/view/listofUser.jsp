<jsp:include page="menu.jsp"></jsp:include><br>



<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>List Of Users</title>
</head>
<body style="background-image: url('/images/ubg.jpg')" >
	<table class="table table-dark table-striped">
		<thead>
			<tr>
				<th scope="col">USERNAME</th>
				<%
				String role = (String) session.getAttribute("role");
				if ("Admin".equals(role)) {
				%>
				<th scope="col">PASSWORD</th>
				<%
				}
				%>

				<th scope="col">ROLE</th>
				<th scope="col">GENDER</th>
				<%
				if ("Admin".equals(role)) {
				%>

				<th scope="col">QUESTION</th>
				<th scope="col">ANSWER</th>
				<th scope="col">ACTION</th>
				<%
				}
				%>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="user">
				<tr>
					<td><c:out value="${user.username}"></c:out></td>

					<%
					if ("Admin".equals(role)) {
					%>
					<td><c:out value="${user.password}"></c:out></td>
					<%
					}
					%>

					<td><c:out value="${user.role}"></c:out></td>
					<td><c:out value="${user.gender}"></c:out></td>


					<%
					if ("Admin".equals(role)) {
					%>

					<td><c:out value="${user.question}"></c:out></td>
					<td><c:out value="${user.answer}"></c:out></td>
					<td><a href="getProfile?username=${user.username}"
						style="color: green;">Edit</a> <a
						href="deleteUser?username=${user.username}"
						style="color: red;">Delete</a></td>
					<%
					}
					%>

				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br><br>
<br>
<br>
<br>
<jsp:include page="footer.jsp"></jsp:include>