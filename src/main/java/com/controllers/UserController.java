package com.controllers;

import com.models.RUser;

public interface UserController {
	
	public boolean addUser(RUser u);// Create Operation

	public boolean userLogin(String email, String pwd);// Read Operation

}
