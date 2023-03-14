<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width , initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Sorry Something Went Wrong!</title>
</head>
<body>
<div class="container text-center">
<img alt="Error.png" src="Images/computer.png" style="width:300px ; height:300px; margin-top:100px;" class="img-fluid">
<h3 class="display-3">Sorry Something went Wrong!</h3>
<%=exception  %>
<a href="Signin.jsp" class="btn primary-background btn-lg">Go Back to Login</a>
</div>
</body>
</html>