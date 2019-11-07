<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Admission</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/businessfile.css" rel="stylesheet">

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script>
	function RegistrationDetail() {
		var name = document.forms["jRegForm"]["name"];
		var mno = document.forms["jRegForm"]["mno"];
		var email = document.forms["jRegForm"]["email"];
		var address = document.form["jRegForm"]["address"];
		var cet = document.form["jRegForm"]["cet"];
		var university = document.form["jRegForm"]["university"];
		var pwd = document.forms["jRegForm"]["pwd"];
		var rpwd = document.forms["jRegForm"]["rpwd"];

		if (name.value == "") {
			window.alert("Please enter your name.");
			name.focus();
			return false;
		}

		if (mno.value == "") {
			window.alert("Please enter your Mobile Number");
			dob.focus();
			return false;
		}

		if (email.value == "") {
			window.alert("Please enter e-mail address.");
			email.focus();
			return false;
		}

		if (email.value.indexOf("@", 0) < 0) {
			window.alert("Please enter a valid e-mail address.");
			email.focus();
			return false;
		}

		if (email.value.indexOf(".", 0) < 0) {
			window.alert("Please enter a valid e-mail address.");
			email.focus();
			return false;
		}

		if (address.value == "") {
			window.alert("Plase enter the address");
			address.focus();
			return false;
		}

		if (cet.value == "") {
			window.alert("Plase enter the cet mark");
			cet.focus();
			return false;
		}

		if (university.value == "") {
			window.alert("Plase enter the privious university");
			university.focus();
			return false;
		}

		if (pwd.value == "") {
			window.alert("Please enter Password");
			pwd.focus();
			return false;
		}
		if (rpwd.value == "") {
			window.alert("Please Re-enter password");
			rpwd.focus();
			return false;
		}
		if (pwd.value != rpwd.value) {
			window.alert("password Don't Match");
			rpwd.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<!-- Navigation -->
	<nav
		class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="index.html">Addmission Form</a>


		</div>
	</nav>
	<!-- Page Content -->
	<div class="container">
		<form name="jRegForm" method="post" onsubmit="return RegistrationDetail()" action="StudentRegistration">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="card">
						<div class="card-header">
							<h3 style="text-align: center"></h3>
						</div>
						<div class="card-body">


							<div class="form-group row">
								<label for="full_name"
									class="col-md-4 col-form-label text-md-right">Name :</label>
								<div class="col-md-6">
									<input type="text" id="full_name" class="form-control"
										name="name">
								</div>
							</div>


						</div>


						

						<div class="form-group row">
							<label for="user_name"
								class="col-md-4 col-form-label text-md-right">Mobile
								Number </label>
							<div class="col-md-6">
								<input type="text" id="user_name" class="form-control"
									name="mno">
							</div>
						</div>



						<div class="form-group row">
							<label for="permanent_address"
								class="col-md-4 col-form-label text-md-right">Email
								Address </label>
							<div class="col-md-6">
								<input type="text" id="permanent_address" class="form-control"
									name="email">
							</div>
						</div>

						<div class="form-group row">
							<label for="permanent_address"
								class="col-md-4 col-form-label text-md-right">Address </label>
							<div class="col-md-6">
								<input type="text" id="permanent_address" class="form-control"
									name="address">
							</div>
						</div>


						<div class="form-group row">
							<label for="permanent_address"
								class="col-md-4 col-form-label text-md-right">CET Mark </label>
							<div class="col-md-6">
								<input type="text" id="permanent_address" class="form-control"
									name="cet">
							</div>
						</div>



						<div class="form-group row">
							<label for="permanent_address"
								class="col-md-4 col-form-label text-md-right">Previous
								university/Board </label>
							<div class="col-md-6">
								<input type="text" id="permanent_address" class="form-control"
									name="university">
							</div>
						</div>



						<div class="form-group row">
							<label for="permanent_address"
								class="col-md-4 col-form-label text-md-right"> Enter
								Password</label>
							<div class="col-md-6">
								<input type="password" id="permanent_address"
									class="form-control" name="pwd">
							</div>
						</div>
						<div class="form-group row">
							<label for="permanent_address"
								class="col-md-4 col-form-label text-md-right">Confirm
								Password </label>
							<div class="col-md-6">
								<input type="password" id="permanent_address"
									class="form-control" name="rpwd">
							</div>
						</div>



						<div class="col-md-6 offset-md-4">
							<input type="submit" class="btn btn-primary"  value ="Register">

							<%
								String msg = (String) request.getAttribute("errMsg");
								if (msg != null)
									out.print(msg);
							%>
						</div>


					</div>
				</div>
			</div>

		</form>
	</div>
</body>
</html>

