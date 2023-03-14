package com.mydiary.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


import com.mydiary.helpers.ConnectionProvider;
import com.mydiary.helpers.Message;
import com.mydiary.helpers.User;
import com.mydiary.helpers.UserDao;

public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email =request.getParameter("mail");
		String password  =request.getParameter("password");
		UserDao dao =new UserDao(ConnectionProvider.getConnection());
		
		User user =dao.getUser(email, password);
		if(user == null) {
		 Message msg =new Message("Invalid Details..! Please Try Again.","error","alert-danger");
		HttpSession  s =request.getSession();
		s.setAttribute("msg",msg);
		 response.sendRedirect("Signin.jsp");
		}
		
		else {
			HttpSession s = request.getSession();
			s.setAttribute("CurrentUser",user);
			response.sendRedirect("Homepage.jsp");
			
		}
	}

}
