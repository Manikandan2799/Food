<%@page import="com.db.utils.DbConnection"%>
<%@ page import ="java.sql.*" %>
<%@page import = "org.mindrot.jbcrypt.BCrypt" %>

<%
    String user = request.getParameter("uname");
    String password = request.getParameter("pass");
    String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());

    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    try {
        Connection con = DbConnection.init();
        Statement st = con.createStatement();
        String q;
        ResultSet rs;

        int i = st.executeUpdate("insert into members(first_name, last_name, email, uname, password) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + hashedPassword + "')");
        if (i > 0) {
            session.setAttribute("userid", user);
            response.sendRedirect("Breakfast.jsp");

        } else {
            response.sendRedirect("index.jsp");

        }

    } catch (SQLException se) {
       
        se.printStackTrace();
    } catch (Exception e) {
       
        e.printStackTrace();
    }

%>