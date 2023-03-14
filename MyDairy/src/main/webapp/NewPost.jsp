<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.* , com.mydiary.helpers.*"%>
<%@ page errorPage="ErrorPage.jsp"%>

<%
User user = (User) session.getAttribute("CurrentUser");
if (user == null) {
	response.sendRedirect("Signin.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="CustomCSS/Homepage.css">
<title>HomePage - Keep Notes</title>
</head>
<body>
<!-- navbar begins -->
<nav class="navbar navbar-light" style="background-color: #93BFCF;">
		<h2 style="font-family: klavika; margin-left: 20px;">
			Keep Notes <img class="img-fluid" src="Images/post-it.png"
				style="width: 35px; height: 35px;">
		</h2>
		<h2 style="font-family: klavika; margin-right: 150px;">
			<a href="#!" data-toggle="modal" class="display-5"
				data-target="#profile-modal" style="color:#2E4F4F;">Welcome ! <%=user.getFname()%> <%=user.getLname()%></a>
			<img class="img-fluid" alt="profile" style="width: 25px; height: 25px;"
				src="Images/group.png">
		</h2>
		<a href="LogoutServlet"
			class="btn btn-lg btn-success btn-outline-dark">Logout</a>
	</nav>

<!-- navbar ends -->
<!-- Post Details -->
<div class="card border-info mb-3" style=" margin-top:10px;" >
<form action="AddPostServlet" method="post" id="postform">
<div class="row" style="max-width:500px;  margin-left:500px; margin-top:20px;">
<div class="col m-6 offset-m3 " >
<input name="post_title" type="text" placeholder="Enter post title" class="form-control form-control-lg "/>
</div>

</div>
<div class="row" style="max-width:500px; margin-left:500px; margin-bottom:20px;">
<div class="col m-6 offset-m3" > 
<textarea name="post_content" class="form-control form-control-lg mt-3" placeholder="Enter your notes..." style="height:200px;"></textarea>
</div>
</div>

<div class="row" style="max-width:500px; margin-left:500px; margin-bottom:20px;">
<div class="col m-6 offset-m3" > 
<label style="text:klavika;">Choose any photo to add</label>
<input name="post_pic" type="file" class="form-control form-control-lg"/>
</div>
</div>

<div class="row" style="max-width:500px; margin-left:500px; margin-bottom:20px;">
<div class="col text-center" > 
<button class="btn btn-lg btn-outline-success">Post it <span><img alt="newpost.png" src="Images/new-post.png" style="height:30px ; width:30px;"></span></button>
</div> 
</div>
</form>
</div>
<div class="row" id="backdiv" style=" max-width:500px; margin-left:500px; margin-bottom:20px;">
<div class="col  text-center"> 
<button  id="back" class="btn btn-lg btn-outline-success">Back to Home <span><img alt="newpost.png" src="Images/home.png" style="height:25px ; width:25px;"></span></button>
</div> 
</div>
<!-- Post Details end -->
<!-- Quotes Details -->
<div class="container" id="quotesdiv" style="font-style:klavika ; margin-top:100px;">
<div class="row text-center"><div class="col h3" id="quotes"></div></div>
<div class="row text-center"><div class="col h5" id="author" ></div></div>
<div class="row text-center"><div class="col"><button class="btn btn-dark  btn-sm mb-2" id="newquote">Quote for the Day</button></div></div>
</div>

<!-- Profile Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header text-white" style="background: #0E8388;">
					<h5 class="modal-title" id="exampleModalLabel">Keep Notes -
						Profile Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container text-center">
						<img alt="profile.png" src="ProfilePics/<%=user.getProfile()%>"
							class="img-fluid"
							style="border-radius: 50%; height: 150px; width: 150px;">
						<h5 class="modal-title mt-3" id="exampleModalLabel"><%=user.getFname()%>
							<%=user.getLname()%></h5>
					</div>
					<div id="profile-detail">
						<table class="table" style="background: #0E8388;">
							<tbody>
								<tr>
									<th scope="row">First Name</th>
									<td><%=user.getFname()%></td>
								</tr>
								<tr>
									<th scope="row">Last Name</th>
									<td><%=user.getLname()%></td>
								</tr>
								<tr>
									<th scope="row">Email</th>
									<td><%=user.getEmail()%></td>
								</tr>
								<tr>
									<th scope="row">Status</th>
									<td><%=user.getStatus()%></td>
								</tr>
							</tbody>
						</table>
					</div>
<!-- Profile Modal ends -->

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
		<script type="text/javascript" src="CustomJS/Quotes.js"></script>
	<script src="CustomJS/ProfileEdit.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<!-- Add to Post Servlet -->
	<script src="CustomJS/PostsButton.js"></script>
</body>
</html>