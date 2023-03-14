<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="ErrorPage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width , initial-scale=1.0" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="CustomCSS/newsignup.css">
<title>Keep Notes - Create account</title>
</head>
<body>
	<%--Header Section Code --%>
	<section>
		<h1>
			Welcome to Keep Notes <img alt="notes"  class="img-fluid" src="Images/post-it.png"
				style="height: 35px; width: 35px;">
		</h1>
	</section>
	<%--Main Section Code --%>
	<main>
		<%--Div Main Container --%>
		<div class="container">
			<div class="row">
				<div class="col-6 visual">
					<div id="carouselExampleSlidesOnly" class="carousel slide"
						data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img class="d-block img-fluid"
									src="Images/pexels-philippe-donn-1257860 (1)2.jpg" alt="Sky1">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid" src="Images/sky1.jpg" alt="Sky2">
							</div>
							<div class="carousel-item">
								<img class="d-block img-fluid"  src="Images/sky2.jpg" alt="Sky3">
							</div>
						</div>
					</div>
				</div>
				<div class="col-6 visual">
					<h2>
						Create your Account <img alt="account" class="img-fluid" src="Images/follow.png"
							style="height: 25px; margin-bottom: 6px; width: 25px;">
					</h2>
					<form id="register" action="Signup" method="post"
						style="font-family: klavika;">
						<div class="row">
							<%--Row Name Div --%>
							<div class="col">
								<label for="fname" class="form-control-lg ">First Name</label>
							</div>
							<div class="col">
								<label for="lname" class="form-control-lg ">Last Name</label>
							</div>
						</div>
						<div class="row">
							<%--Row Name Div --%>
							<div class="col">
								<input type="text" name="fname" id="fname" required
									class="form-control">
							</div>
							<div class="col">
								<input type="text" name="lname" id="lname" required
									class="form-control">
							</div>
						</div>
						<div class="row">
							<%--Row Email Div --%>
							<div class="col">
								<label for="mail" class="form-control-lg">Email Address</label>
							</div>
						</div>
						<div class="row">
							<%--Row Email Div --%>
							<div class="col">
								<input type="email" name="mail" id="mail" required
									class="form-control">
							</div>
						</div>
						<div class="row">
							<%--Row Password Div --%>
							<div class="col">
								<label for="pass" class="form-control-lg">Password</label>
							</div>
						</div>
						<div class="row">
							<%--Row Password Div --%>
							<div class="col">
								<input type="password" name="pass" id="pass" required
									class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col">
								<label for="options" class="form-control-lg">Select the
									question for recovery of password</label> <select class="custom-select"
									id="options" name="options">
									<option selected>Choose your recovery question</option>
									<option value="fav food">What is your favourite food?</option>
									<option value="first school">What was your first
										school?</option>
									<option value="fav place">What is your favourite
										place?</option>
								</select>
							</div>
						</div>
						<%--Row Select end --%>
						<div class="row">
							<div class="col">
								<input style="margin-top: 4px;" type="password" name="ans"
									id="ans" required class="form-control"
									placeholder="Enter answer here..">
							</div>
						</div>
						<br>
						<div class="row ">
							<div class="col">
							<img alt="refresh" class="img-fluid" src="Images/refresh.gif" style="width:40px ; height:40px; display:none;" id="spinner">
						
								<button type="submit" name="submit" id="submit-btn"
									class="btn btn-primary btn-outline-info btn-lg ">Create
									Account</button>
							</div>
						</div>
						<div class="row ">
							<div class="col text">
								Already have an account?<a href="Signin.jsp"> Log in.</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<%--Div main container ends here. --%>
	</main>
	<br>
	<%--Footer beginning--%>
	<footer>
		GitHub :<a href="https://github.com/PiyushSol>">https://github.com/PiyushSol</a>
		<img class="img-fluid" alt="github" src="Images/github.png" style="width: 18px; height: 18px;"><br>
		Twitter :<a href="https://twitter.com/piyush_sol">https://twitter.com/piyush_sol</a>
		<img class="img-fluid" alt="twitter" src="Images/twitter.png"
			style="width: 18px; height: 18px;"><br> Written By: Piyush
		Solanki <img class="img-fluid" alt="copyright" src="Images/copyright.png"
			style="width: 18px; height: 18px;">
	</footer>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>	
	<script>
$('document').ready(function(){
	console.log('loaded');
	$('#register').on('submit', function(event){
		event.preventDefault();
		
		$('#submit-btn').hide();
		$('#spinner').show();
		let form = new FormData(this);
		$.ajax({
			url: "Signup",
			type : "POST" ,
			data : form ,
			success: function(data , textStatus ,jqXHR){
				$('#submit-btn').show();
				$('#spinner').hide();
				swal("Congratulations ! Your Account is Created. You will be Redirected to Login Page")
				.then((value) => {
				  window.location="Signin.jsp"
				});
			},
			error: function(jqXHR, textStatus ,errorThrown){
				$('#submit-btn').show();
				$('#spinner').hide();
				swal("Something Went Wrong!");
		},
			processData: false,
			contentType :false
		});
		
	});
	function animation(){
		$('h2').fadeOut(1500);
		$('h2').fadeIn(1500);
		animation();
	}
	animation();
});
</script>
</body>
</html>