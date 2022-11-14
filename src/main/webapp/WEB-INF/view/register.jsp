<jsp:include page="menu.jsp" />
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/register.css">
<section class="h-100 bg-dark">
	<div class="container py-5 h-100">
		<di class="row d-flex justify-content-center align-items-center h-100">
		<div class="col">
			<div class="card card-registration my-4">
				<div class="row g-0">
					<div class="col-xl-6 d-none d-xl-block">
						<img
							src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
							alt="Sample photo" class="img-fluid"
							style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
					</div>
					<div class="col-xl-6">
						<div class="card-body p-md-5 text-black">
							<h3 class="mb-5 text-uppercase">CUSTOMER REGISTRATION FORM</h3>
</head>

<body>
	<%
	String msg = (String) request.getAttribute("msg");
	if (msg != null && msg.equals("User Added !!")) {
	%>
	<h4 style="color: green">${msg}</h4>
	<%
	} else {
	%>
	<h4 style="color: red">${msg}</h4>
	<%
	}
	%>
	<form action="registeruser">
		<div class="row">
			<div class="col-md-6 mb-4">
				<div class="form-outline">
					<input type="text" id="form3Example1m" name="username"
						class="form-control form-control-lg" /> <label class="form-label"
						for="form3Example1m">User name</label>
				</div>
			</div>
			<div class="col-md-6 mb-4">
				<div class="form-outline">
					<input type="text" id="form3Example1n" name="password"
						class="form-control form-control-lg" /> <label class="form-label"
						for="form3Example1n">Password</label>
				</div>
			</div>
		</div>


		<div
			class="d-md-flex justify-content-start align-items-center mb-4 py-2">

			<h6 class="mb-0 me-4">Gender:</h6>

			<div class="form-check form-check-inline mb-0 me-4">
				<input class="form-check-input" type="radio" name="gender"
					id="femaleGender" value="female" /> <label
					class="form-check-label" for="femaleGender">Female</label>
			</div>

			<div class="form-check form-check-inline mb-0 me-4">
				<input class="form-check-input" type="radio" name="gender"
					id="maleGender" value="male" /> <label class="form-check-label"
					for="maleGender">Male</label>
			</div>

			<div class="form-check form-check-inline mb-0">
				<input class="form-check-input" type="radio" name="gender"
					id="otherGender" value="transgender" /> <label
					class="form-check-label" for="otherGender">Other</label>
			</div>

		</div>

		<!-- <div class="row">
										<div class="col-md-6 mb-4">

											<select class="select">
												<option value="1">Role</option> 
												<option value="2">Admin</option>
												<option value="3">Customer</option>
												<option value="4">Option 3</option>
											</select>

										</div> -->
		<div class="col-md-6">
			<div class="form-group">
				<select class="form-control" name="role" required="required">
					<option class="hidden" selected disabled>Please select
						Role</option>
					<option>Admin</option>
					<option>Customer</option>
				</select>
			</div>
			<!-- <div class="col-md-6 mb-4">

											<select class="select">
												<option value="1">City</option>
												<option value="2">Option 1</option>
												<option value="3">Option 2</option>
												<option value="4">Option 3</option>
											</select>

										</div> -->
			<div class="form-group">
				<select class="form-control" name="question">
					<option class="hidden" selected disabled>Please select
						your Security Question</option>
					<option>What is your Birth-date?</option>
					<option>What is Your old Phone Number?</option>
					<option>What is your Pet Name?</option>
				</select>
			</div>
			<div class="form-group">
				<input type="text" name="answer" class="form-control"
					placeholder="Enter Your Answer *" value="" />
			</div>
		</div>

		<!-- <div class="form-outline mb-4">
										<input type="text" id="form3Example9"
											class="form-control form-control-lg" /> <label
											class="form-label" for="form3Example9">DOB</label>
									</div>
 -->
		<!-- <div class="form-outline mb-4">
										<input type="text" id="form3Example90"
											class="form-control form-control-lg" /> <label
											class="form-label" for="form3Example90">Pincode</label>
									</div>
 -->
		<!-- <div class="form-outline mb-4">
										<input type="text" id="form3Example99"
											class="form-control form-control-lg" /> <label
											class="form-label" for="form3Example99">Course</label>
									</div> -->

		<!-- <div class="form-outline mb-4">
										<input type="text" id="form3Example97"
											class="form-control form-control-lg" /> <label
											class="form-label" for="form3Example97">Email ID</label>
									</div> -->

		<div class="d-flex justify-content-end pt-3">
			<!-- <button type="button" class="btn btn-light btn-lg">Reset
											all</button> -->
			<!-- <button type="button" class="btn btn-warning btn-lg ms-2">Submit
											form</button> -->
			<input type="submit" class="btn btn-warning btn-lg ms-2"
				value="Register" />
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		</div>
		</section>
	</form>
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
<jsp:include page="footer.jsp" />