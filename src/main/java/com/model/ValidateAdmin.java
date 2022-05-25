package com.model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdminDao;
import com.dao.AdminDaoImpl;
import com.dto.Admin;

public class ValidateAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ValidateAdmin() {
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		
		String username = request.getParameter("uname");
		String password = request.getParameter("pword");
		
		Admin admin = new Admin(username, password);
		AdminDao dao = new AdminDaoImpl();
		
		boolean isAdminValid = dao.validateAdmin(admin);
		
		if(isAdminValid)
		{
			HttpSession session = request.getSession();
			session.setAttribute("uname", admin.getUsername());
			session.setAttribute("pword", admin.getPassword());
			response.sendRedirect("AdminDashboard.jsp");
		} else {
			request.getRequestDispatcher("index.jsp").include(request, response);
			writer.print("<h2 style='color:red;'> Incorrect username or password! </h2>");
		}
	}

}