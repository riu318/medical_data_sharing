<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page import="java.util.*"%>
<title>TAFC</title>
<link rel="shortcut icon" href="img/jasmine.jpg">
 <%
        String name=session.getAttribute("pname").toString();
        String email=session.getAttribute("pemail").toString();
 
    %>
<% 



	 
	
	Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","root");
	PreparedStatement query=con.prepareStatement("update prescription set status='Accept' where pemail='"+email+"' ");
	query.executeUpdate();
	
	out.println("<script type=\"text/javascript\">"); 			
	out.println("alert(\"Sucessfully Received\")");

	out.println("</script>");
	RequestDispatcher rd=request.getRequestDispatcher("PHome.jsp");
	rd.include(request,response);
	System.out.println("ok");


%>