package com.dao;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import com.dto.Admin;

public class AdminDaoImpl implements AdminDao{
	
	private SessionFactory factory;
	
	public AdminDaoImpl() 
	{
		StandardServiceRegistry ssr = new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();
		factory = meta.getSessionFactoryBuilder().build();
	}

	public void updateAdminPassword(String username, String password) {
		Session session = factory.openSession();
		Transaction txn = session.beginTransaction();
		
		Admin admin = searchAdmin(username);
		admin.setPassword(password);
		
		session.update(admin);
		txn.commit();
		session.close();
	}
	
	public Admin searchAdmin(String username) {
		Session session = factory.openSession();
		
		String hql = "FROM Admin where username = :uname";
		TypedQuery<Admin> query = session.createQuery(hql);
		query.setParameter("uname", username);
		Admin admin = query.getSingleResult();
		session.close();
		return admin;
	}

	public boolean validateAdmin(Admin admin) {
		boolean isAdminValid = false;
		String username = admin.getUsername();
		String password = admin.getPassword();
		Admin admindb = searchAdmin(username);
		
		if(username.equals(admindb.getUsername()) && password.equals(admindb.getPassword()))
			isAdminValid = true;
		
		return isAdminValid;
	}

}