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

import com.entity.Student;
import com.util.HibernateUtil;

public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AddStudent() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		
		// Step 1: Get details , user has entered
		String name = request.getParameter("fname");
		String lname = request.getParameter("lname");
				
		// Step2: Create session
		SessionFactory sf  = HibernateUtil.buildSessionFactory();
		Session session = sf.openSession();
		
		// Step 3: Begin Transaction
		Transaction tx = session.beginTransaction();
			
		//Step4; Create persistent object and add Teacher
		
		Student student = new Student();
		student.setName(name);
		student.setFname(lname);
		
		
		session.save(student);
		
		// STep5: Commit transaction and close session
		tx.commit();
		session.close();
		
		request.getRequestDispatcher("addStudent.jsp").include(request, response);
		writer.println("<h2 style='color:red;'> Student ADDED successfully!</h2>"); 
	}

}