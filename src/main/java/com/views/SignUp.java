package com.views;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Date;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.el.parser.ParseException;

import com.controllers.UserController;
import com.controllers.UserControllerImplement;
import com.models.RUser;

@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("login&signup.jsp").forward(request, response);

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String encodedLicense = request.getParameter("license");
		if (encodedLicense == null || encodedLicense.isEmpty()) {
		    // Handle the case where license is null or empty
		    request.setAttribute("error", "Invalid license provided!");
		    request.getRequestDispatcher("login&signup.jsp").forward(request, response);
		    return;
		}
		// Decode the license after checking for null
		byte[] licenseBytes = Base64.decodeBase64(encodedLicense.getBytes());
		
		
		String birthdateString = request.getParameter("birthdate");
		Date birthdate = null;

		if (birthdateString != null && !birthdateString.isEmpty()) {
		    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		    try {
		        java.util.Date utilDate = sdf.parse(birthdateString);
		        birthdate = new Date(utilDate.getTime());
		    } catch ( java.text.ParseException e) {
		        e.printStackTrace(); // Handle parsing exception appropriately
		    }
		}

		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		if (password == null) {
		    // Handle the case where the password parameter is null (e.g., return an error message)
		    response.setStatus(HttpServletResponse.SC_BAD_REQUEST);
		    response.getWriter().write("Password parameter is missing.");
		    return;
		}

		String hashPassword = DigestUtils.shaHex(password.getBytes());

		RUser u = new RUser();
		u.setName(name);
		u.setEmail(email);
		u.setLicense(licenseBytes);
		u.setEmail(email);
		u.setPhone(phone);
		u.setPassword(hashPassword);

		UserController uc=new UserControllerImplement();
		uc.addUser(u);
		
		boolean rowCount = false;
		if(rowCount==true) {
			request.setAttribute("status", "failed");
			request.getRequestDispatcher("login&signup.jsp").forward(request, response);

		}else {
			request.setAttribute("status", "success");
			request.getRequestDispatcher("login&signup.jsp").forward(request, response);
			
		}

		
	}

}