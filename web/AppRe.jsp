<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@ page import="java.util.*"%>
<title>Medical Data Sharing</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="title" content="">
<!-- Favicon -->
<link rel="shortcut icon" href="images/favicon.ico">

<% 



	String name = request.getParameter("name");
	String email =request.getParameter("email");
	String hospital =request.getParameter("hospital");
	String special =request.getParameter("special");
	String doctor =request.getParameter("country");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","ROOT");
	PreparedStatement query=con.prepareStatement("update app set doctor='"+doctor+"',status='Activate' where dept='"+special+"' ");
	query.executeUpdate();
	
	out.println("<script type=\"text/javascript\">"); 			
	out.println("alert(\"Your Request Sucessfully Send to Doctor\")");

	out.println("</script>");
	RequestDispatcher rd=request.getRequestDispatcher("AHome.jsp");
	rd.include(request,response);
	System.out.println("ok");


%>