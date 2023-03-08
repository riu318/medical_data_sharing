<!DOCTYPE html>
<html>
<%@page import="com.mail" %>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.util.*"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>
 <head>

  <meta charset="UTF-8">

 <title>TAFC</title>
<link rel="shortcut icon" href="img/jasmine.jpg">

  <link rel="stylesheet" href="css/reset.css">

    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

</head>
<%
//String email = (String)session.getAttribute("email");

String Name =   request.getParameter("name");
String email = request.getParameter("email");
String ipa =    request.getParameter("ipa");

System.out.println("This Is Patient Name" + Name + "And Mail Address"+email+"***************************"+"And IP Address "+ipa);

SimpleDateFormat dateFormat = new SimpleDateFormat("dd.MM.yyyy 'at' HH:mm:ss");
Date date = new Date();
String cdate = dateFormat.format(date);
System.out.println("current  ------>?>>>>>>>>>" +cdate);
String closedate = (String)session.getAttribute("closedate");

System.out.println("current Closing Date------>?>>>>>>>>>" + cdate + closedate);

 
String message= "Hi Mr/Mrs. "+Name+ "  : This Ip Address persion Try to Modify Your Persional Informain :  "+ipa+"  Date and Time :" +cdate;
String message1 = "Your Information Modified Date : "+cdate;
String mail="";

String to[]=new String[1];
to[0]=email;

 
String from,pass;
from="cryptographicmail@gmail.com";
pass="cryptomail@02"; 
String subject="Alert Message";
mail mmm = new mail();		
mmm.sendFromGMail(from, pass, to, subject, message);
 

%>
<body>
 <% 


    String id = request.getParameter("id");
 
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","root");
	PreparedStatement query=con.prepareStatement("update enc set status='Accept',ipa='"+ipa+"' where id='"+id+"' ");
	query.executeUpdate();
	
 
	RequestDispatcher rd=request.getRequestDispatcher("IHome.jsp");
	rd.include(request,response);
	System.out.println("ok");



%>
  <script src="js/index.js"></script>

</body>

</html>