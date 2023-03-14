package com.mydiary.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.mydiary.helpers.ConnectionProvider;
import com.mydiary.helpers.User;
import com.mydiary.helpers.UserDao;

@MultipartConfig
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Signup() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname =request.getParameter("lname");
		String mail =request.getParameter("mail");
		String pass=request.getParameter("pass");
		
		String sec_answer =request.getParameter("ans");
		String ques = request.getParameter("options");
	
		
		PrintWriter out =response.getWriter();
		
			User user = new User(fname ,lname,pass,mail, sec_answer,ques);
			UserDao dao = new UserDao(ConnectionProvider.getConnection());
			if(dao.saveUser(user)) {
				out.println("done");
			}
		else {
			out.println("error");
		}
	}
	}


