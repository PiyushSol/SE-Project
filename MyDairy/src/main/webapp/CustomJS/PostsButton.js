	$('document').ready(function(){
		$('#postform').on('submit',function(event){
		 event.preventDefault();
			let form = new FormData(this);
			$.ajax({
				url:"AddPostServlet",
				type:'POST',
				data:form,
				success:function(data , textStatus ,jqXHR){
					console.log(data);
					if(data.trim() == 'Done'){	swal("Great! You just Posted your Note","Saved Successfully " , "success");}
					else { 	swal("Something went wrong! ","Please Try again" , "error");}
				},
				error:function(jqXHR , textStatus ,errorThrown){
					swal("Something went wrong! ","Please Try again" , "error");
				},
				processData:false,
				contentType:false
			
			})
			
		})
		
	});