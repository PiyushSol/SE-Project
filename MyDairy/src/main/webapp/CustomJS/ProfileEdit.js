$('document').ready(function() {
			let editStatus = false;

			$('#editProfile').click(function() {
				if (editStatus == false) {
					$('#profile-detail').hide();
					$('#profile-edit').show();
					editStatus = true;
					$(this).text("Back");
				}

				else {
					$('#profile-detail').show();
					$('#profile-edit').hide();
					editStatus = false;
					$(this).text("Edit");
				}
			})
			
			$('#newpost').click(function(){
				window.location.href="NewPost.jsp";
			})
            
            $('#back').click(function(){
				window.location.href ="Homepage.jsp";
			})
			
			$('#oldpost').click(function(){
				window.location.href="OldPosts.jsp";
			})
			
		});