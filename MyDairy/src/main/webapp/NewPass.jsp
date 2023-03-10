<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="CustomCSS/newpass.css">
<title>New Password - Keep Notes</title>
</head>
<body>
	<main>
		<h1 style="margin-left: 550px;">
			Welcome to Keep Notes <img alt="notes" src="Images/post-it.png"
				style="height: 35px; width: 35px;">
		</h1>
		<div class="container" style="margin-top: 100px;">
			<div class="row">
				<div class="col-md-6 offset-3">
					<div class="card border-dark text-white text-center"
						style="font-family: klavika; background-color: #144272;">
						<h5>Create new Password</h5>
						<label for="options" class="form-control-lg">Select the
							question for recovery of password</label> <select class="custom-select"
							id="options" name="options">
							<option selected>Choose your recovery question</option>
							<option value="fav food">What is your favourite food?</option>
							<option value="first school">What was your first school?</option>
							<option value="fav place">What is your favourite place?</option>
						</select> <input style="margin-top: 4px;" type="password" name="ans"
							id="ans" required class="form-control"
							placeholder="Enter answer here..">
						<form>
							<div class="form-group">
								<label style="margin-top: 8px;" for="newpass">Enter new
									password here</label> <input type="password" name="newpass"
									id="newpass" required
									pattern="/^[a-zA-Z0-9!@#\$%\^\&*_=+-]{8,12}$/g"
									class="form-control"> <label style="margin-top: 8px;"
									for="conpass">Enter the password again</label> <input
									type="password" name="conpass" id="conpass" required
									pattern="/^[a-zA-Z0-9!@#\$%\^\&*_=+-]{8,12}$/g"
									class="form-control">
							</div>
							<button type="submit" style="margin-bottom: 15px;"
								name="createpass"
								class="btn btn-primary btn-outline-info btn-lg ">Create
								password</button>
							<a class="btn btn-primary btn-outline-info btn-lg"
								style="margin-bottom: 15px; margin-left: 2px;" href="Signin.jsp">Go
								Back to Login</a>
						</form>
					</div>
				</div>
				<%--col end div --%>
			</div>
			<%--row end div --%>
		</div>
		<%--Container closing --%>
	</main>
	<footer style="margin-top: 80px;">
		GitHub :<a href="https://github.com/PiyushSol>">https://github.com/PiyushSol</a>
		<img alt="github" src="Images/github.png" style="width: 18px; height: 18px;"><br>
		Twitter :<a href="https://twitter.com/piyush_sol">https://twitter.com/piyush_sol</a>
		<img alt="twitter" src="Images/twitter.png"
			style="width: 18px; height: 18px;"><br> Written By: Piyush
		Solanki <img alt="copyright" src="Images/copyright.png"
			style="width: 18px; height: 18px;">
	</footer>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.3.min.js"
		integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
		crossorigin="anonymous"></script>
	<script>
$('document').ready(function(){
	function animation(){
		$('h1').fadeOut(1500);
		$('h1').fadeIn(1500);
		animation();
	}
	animation();
});
</script>
</body>
</html>