<jsp:include page="menu.jsp"></jsp:include>
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
							<h3 class="mb-5 text-uppercase">UPDATE EXISTING PROFILE</h3>
</head>
<body>
	<form action="updateUser" method="post">
		<div class="col-md-9 register-right">

			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="home" role="tabpanel"
					aria-labelledby="home-tab">


					<div class="row register-form">
						<div class="col-md-6">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Username *"
									value="${user.username}" name="username" required="required"
									readonly="readonly" />
							</div>

							<div class="form-group">
								<input type="text" class="form-control" placeholder="Password *"
									value="${user.password}" name="password" required="required" />
							</div>

							<div class="form-group">
								<div class="maxl">
									<label class="radio inline"> <input type="radio"
										name="gender" value="male" checked> <span> Male
									</span>
									</label> <label class="radio inline"> <input type="radio"
										name="gender" value="female"> <span>Female </span>
									</label>
								</div>
							</div>
							<div class="form-group">
								<select class="form-control" name="role" required="required">

									<option>${user.role}</option>
									<option>Admin</option>
									<option>Customer</option>
								</select>
							</div>

						</div>
						<div class="col-md-6">

							<div class="form-group">
								<select class="form-control" name="question" required="required">
									<option>${user.question}</option>
									<option>What is your Birthdate?</option>
									<option>What is Your old Phone Number?</option>
									<option>What is your Pet Name?</option>
								</select>
							</div>
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="Enter Your Answer *" value="${user.answer}"
									name="answer" required="required" />
							</div>
							<br> <br> <br> <br>
							<!-- <input type="submit" class="btnRegister" value="Update Profile" /> -->
							<input type="submit" class="btn btn-warning btn-lg ms-2"
								value="Update Profile" />
						</div>
					</div>
				</div>

			</div>
		</div>
		</div>

		</div>
	</form>
</body>

</html>