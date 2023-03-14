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

import com.mydiary.helpers.ConnectionProvider;
import com.mydiary.helpers.Helper;
import com.mydiary.helpers.Message;
import com.mydiary.helpers.User;
import com.mydiary.helpers.UserDao;

@MultipartConfig
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EditServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email =request.getParameter("email");
		String password = request.getParameter("password");
		String status = request.getParameter("status");
		Part part = request.getPart("image");
		String imageName = part.getSubmittedFileName();
		// Get the user data from the current session.

		HttpSession s = request.getSession();
		User user = (User) s.getAttribute("CurrentUser");
		user.setEmail(email);
		user.setPassword(password);
		user.setStatus(status);
		user.setProfile(imageName);

		// Updating the Database now;
		UserDao dao = new UserDao(ConnectionProvider.getConnection());
		boolean ans = dao.updateUser(user);
		if (ans) {
			String path = request.getServletContext().getRealPath("/") + "ProfilePics" + File.separator
					+ user.getProfile();
			Helper.deleteFile(path);
			if (Helper.saveFile(part.getInputStream(), path)) {
				Message msg = new Message("Profile Details Updated!", "success", "alert-success");
				s.setAttribute("msg", msg);

			}
		} else {
			Message msg = new Message("Something went wrong!", "error", "alert-danger");
			s.setAttribute("msg", msg);
		}

		response.sendRedirect("Homepage.jsp");
	}

}
