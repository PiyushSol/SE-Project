package com.mydiary.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import com.mydiary.helpers.ConnectionProvider;
import com.mydiary.helpers.Helper;
import com.mydiary.helpers.PostDao;
import com.mydiary.helpers.Posts;
import com.mydiary.helpers.User;

@MultipartConfig
public class AddPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public AddPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String post_title = request.getParameter("post_title");
		String post_content = request.getParameter("post_content");
		Part part = request.getPart("post_pic");
		
		//getting current user id.
		HttpSession session =request.getSession();
		User user = (User)session.getAttribute("CurrentUser");
		Posts  p = new Posts(post_title , post_content , null ,part.getSubmittedFileName(),user.getId());
		PostDao dao = new PostDao(ConnectionProvider.getConnection());
		if(dao.savePost(p)) {
		    String path = request.getServletContext().getRealPath("/")+"PostPics"+File.separator+part.getSubmittedFileName();
		    Helper.saveFile(part.getInputStream(), path);
		    out.println("Done");
		}
		
		else {
			out.println("Error");
	}

} }
