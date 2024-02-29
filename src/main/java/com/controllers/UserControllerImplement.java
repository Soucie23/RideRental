package com.controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.models.RUser;

public class UserControllerImplement implements UserController {

	Connection conn = null;

	public UserControllerImplement() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rident", "root", "");

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public boolean addUser(RUser u) {

		String sql = "insert into signup(name,email,license,birthdate,phone,password) values(?,?,?,?,?,?)";

		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, u.getName());
			pstm.setString(2, u.getEmail());
			pstm.setBytes(3, u.getLicense());
			pstm.setDate(4, u.getBirthdate());
			pstm.setString(5, u.getPhone());
			pstm.setString(6, u.getPassword());

			pstm.execute();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean userLogin(String email, String pwd) {
		boolean answer = false;
		String sql = "select * from signup where email=? and password=?";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, email);
			pstm.setString(2, pwd);
			ResultSet rs = pstm.executeQuery();

			if (rs.next()) {
				answer = true;
			} else {
				answer = false;
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return answer;
	}

}
