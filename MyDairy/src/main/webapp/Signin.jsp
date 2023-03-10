<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width , initial-scale=1.0" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="CustomCSS/signin.css">
<title>MyNotes - Login or SignUp</title>
</head>
<body>
	<div class="jumbotron" style="height: 800px;">
		<div class="container">
			<div class="row">
				<div class="col styles1">
					<h1 class="intro display-4">
						<img alt="notes" src="Images/post-it.png"
							style="width: 50px; height: 50px;"> Keep Notes
					</h1>
					<h2 class="lead">With your Ideas and Thoughts you can create
						magic , So keep them safe here!</h2>
				</div>
				<div class="col-6">
					<div style="background-color: #F0EEED; height: 350px;">
						<form action="/HomePage" method="post">
							<div class="form-group">
								<input type="email"
									class="form-control form-control-lg fonttype" name="mail"
									required placeholder="Enter your email here..">
							</div>
							<div class="form-group">
								<input type="password"
									class="form-control form-control-lg fonttype" name="password"
									required placeholder="Password">
							</div>
							<button type="submit" id="submit"
								class="btn btn-primary btn-lg btn-block">Log in</button>
						</form>
						<%--Form Tag end here. --%>
						<div class="styles2">
							<a href="NewPass.jsp"> Forgotten password? </a>
						</div>
						<hr style="">
						<button type="button" id="create" onClick="myfunction()"
							name="createaccount" class="btn btn-success btn-lg">Create
							new account</button>
					</div>
					<%--Background divison end here. --%>
				</div>
			</div>
		</div>
		<%--Container end --%>
	</div>
	<%--Jumbo Ending--%>
	<%--Footer beginning--%>
	<footer>
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
		$('h2').fadeOut(2000);
		$('h2').fadeIn(2000);
		animation();
	}
	animation();
});

function myfunction(){
	window.location.href="SignUp.jsp";
}
</script>
</body>
</html>