package com.db.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminValidationServlet")
public class AdminValidationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String name=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		System.out.println(name);
		System.out.println(pwd);
		if(name.equals("manikk") && pwd.equals("mk@2799")){
			RequestDispatcher rd=request.getRequestDispatcher("list");
			rd.forward(request, response);
		}
		else{
			out.println("<p>Invalid User Please Register First.</p>");
		    RequestDispatcher rd1=request.getRequestDispatcher("adminLogin.jsp");
		    rd1.forward(request, response);
		}
	}
}
