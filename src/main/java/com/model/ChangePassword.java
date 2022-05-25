package com.model;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminDao;
import com.dao.AdminDaoImpl;

public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public ChangePassword() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		
		String username = request.getParameter("uname");
		String password = request.getParameter("newpass");
	
		AdminDao dao = new AdminDaoImpl();
		dao.updateAdminPassword(username, password);
		
		request.getRequestDispatcher("index.jsp").include(request, response);
		writer.println("<h2 style='color:red;'> Password updated successfully!</h2>");
	}

}
