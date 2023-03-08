     
<!DOCTYPE html>
<html >
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<head>
  <meta charset="UTF-8">
<title>Medical Data Sharing</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="title" content="">
<!-- Favicon -->
<link rel="shortcut icon" href="images/favicon.ico">
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/style3.css">

  
</head>
<%
String Special = (String)session.getAttribute("special");
String Hospital = (String)session.getAttribute("hospital");
System.out.println("Special Hospital"+Special+"********************"+Hospital+"*****************");

%>
<body>
  <h1>All <span></span> <span> Patient Information</span></h1>

<table class="responstable">
  
  <tr>
     
     	  <th>Appointment Num</th>
          <th>Patient Name</th>
          <th>E-Mail</th>
          <th>Date Of Appointment</th>
          <th>Age</th>
          <th>Hospital</th>
          <th>Specialist</th>
          <th>Patient Message</th>
          <th>Choose Doctor</th>
          
  </tr>
    <%
		      Class.forName("com.mysql.jdbc.Driver");
       		  System.out.println("loading class loaders");
       		 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","ROOT");
              
              Statement st=con.createStatement();
              String f="select * from app where status = 'Waiting' ";
              ResultSet rs=st.executeQuery(f);
              
              while(rs.next())
              {
            	  String a=rs.getString("id");
            	  String b=rs.getString("pname");
            	  String c=rs.getString("pemail");
            	  String d=rs.getString("doa");
            	  String e=rs.getString("age");
            	  String g=rs.getString("hospital");
            	  String h=rs.getString("dept");
            	  String i=rs.getString("message");
          		
               
	     	%>
  <tr>
   <td><%=a %></td>
          <td><%=b %></td>
          <td><%=c %></td>
          <td><%=d %></td>
          <td><%=e %></td>
          <td><%=g %></td>
          <td><%=h %></td>
          <td><%=i %></td>
          <td><a href="Choose.jsp?id=<%=a%>&&name=<%=b %>&&email=<%=c%>&&doa=<%=d%>&&age=<%=e%>&&hospital=<%=g%>&&special=<%=h%>&&message=<%=i%>">Choose</a></td>
          
   </tr>
  
   <%} %>
</table>
<br><br>
<center><a href="AHome.jsp">CLick here to move back</a></center>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js'></script>
 
</body>
</html>
 