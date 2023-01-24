package com.db.controller;


	import org.mindrot.jbcrypt.BCrypt;
	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;

	public class PasswordHashing {
	    public static void main(String[] args) {
	        // Hash the password
	        String password = "mypassword";
	        String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
	        
	        // Connect to the database
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	      		 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fast_food_kadai","root","password");

	            PreparedStatement stmt = con.prepareStatement("INSERT INTO members (username, password) VALUES (?,?)");
	            stmt.setString(1, "myusername");
	            stmt.setString(2, hashedPassword);
	            stmt.executeUpdate();
	            con.close();
	        } catch (Exception e) {
	            System.out.println(e);
	        }
	    }
	}

