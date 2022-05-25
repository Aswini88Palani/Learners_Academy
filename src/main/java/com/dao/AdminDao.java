package com.dao;

import com.dto.Admin;

public interface AdminDao {
	public boolean validateAdmin(Admin admin);
	public void updateAdminPassword(String username, String password);
	public Admin searchAdmin(String username);
}