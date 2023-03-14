<%@ page import="com.mydiary.helpers.* , com.mydiary.servlets.*,java.util.ArrayList ,java.util.List" %>

<div class="row">
<% 
	Thread.sleep(1000);
	PostDao dao = new PostDao(ConnectionProvider.getConnection());
	List<Posts> posts = dao.getAllPosts();
	
	for(Posts p : posts){
		%>
		<div class="col-md-6 mt-3">
		<div class="card border-success mb-3">
		<img class="card-img-top" src="PostPics/<%= p.getPost_pic()%>"  style="maxheight:60px; maxwidth:60px;">
			<div class="card-body text-center">
			<h5 style="font-family:klavika ;" class="h5"><%=p.getPost_title() %></h5>
			<p class="h6" style="font-family:klavika ;"><%=p.getPost_content() %></p>
			</div>
		</div>
		
		
		</div>
		
		<%
	}

%>
</div>