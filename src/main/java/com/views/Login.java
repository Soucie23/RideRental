package com.views;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.DigestUtils;

import com.controllers.*;
import com.controllers.*;
import com.models.RUser;

@WebServlet("/Login")
public class Login extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("login&signup.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		String hashPwd = DigestUtils.shaHex(pwd.getBytes());
		
		UserController uc = new UserControllerImplement();

		if (uc.userLogin(email, hashPwd) == true) {
			HttpSession session = request.getSession();

			session.setAttribute("activeUser", email);
			request.setAttribute("user", email);
			request.getRequestDispatcher("dashboard.jsp").forward(request, response);

		}

		else {
			request.setAttribute("error", "Username/Password Incorrect");
			request.getRequestDispatcher("login&signup.jsp").forward(request, response);
		}

	}
}
