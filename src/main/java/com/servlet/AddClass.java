package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.Classes;
import com.util.HibernateUtil;

public class AddClass extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public AddClass() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		// Step 1: Get details , user has entered
		String name = request.getParameter("class");
		
		PrintWriter writer = response.getWriter();
				
		// Step2: Create session
		SessionFactory sf  = HibernateUtil.buildSessionFactory();
		Session session = sf.openSession();
		
		// Step 3: Begin Transaction
		Transaction tx = session.beginTransaction();
			
		//Step4; Create persistent object and add Teacher
		
		Classes classes = new Classes();
		classes.setName(name);
		
		
		session.save(classes);
		
		// STep5: Commit transaction and close session
		tx.commit();
		session.close();
		
		request.getRequestDispatcher("addClasses.jsp").include(request, response);
		writer.println("<h2 style='color:red;'> Class ADDED successfully!</h2>");
	}

}