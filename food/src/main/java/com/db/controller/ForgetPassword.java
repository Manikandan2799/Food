package com.db.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.utils.DbConnection;

@WebServlet("/ForgetPassword")
public class ForgetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    HttpSession session =request.getSession();
    		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
		session.setAttribute("password", password);
		session.setAttribute("uname", uname);
		String email = request.getParameter("email");
		SendEmail.sendOTP(email);
		response.sendRedirect("Otp.jsp");
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		  HttpSession session =request.getSession();
		 Connection con = DbConnection.init();
		    PreparedStatement st;
			try {
			
				st = con. prepareStatement("update members set  password='" + session.getAttribute("password") + "' where uname='"+  session.getAttribute("uname")+"'");
				 st.executeUpdate();
				  

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		   
}
}