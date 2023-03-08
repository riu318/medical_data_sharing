   
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

<body>
  <h1>All <span></span> <span> Dr Information</span></h1>

<table class="responstable">
  
  <tr>
     <th>Id</th>
          <th>Dr.Name</th>
          <th>E-Mail</th>
          <th>Mobile Number</th>
          <th>Country</th>
          <th>Specialist</th>
          <th>Hospital</th>
  </tr>
    <%
		      Class.forName("com.mysql.jdbc.Driver");
       		  System.out.println("loading class loaders");
       		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","ROOT");               
              Statement st=con.createStatement();
              String f="select * from dreg ";
              ResultSet rs=st.executeQuery(f);
              
              while(rs.next())
              {
            	  String a=rs.getString("regid");
            	  String b=rs.getString("name");
            	  String c=rs.getString("email");
            	  String d=rs.getString("mobile");
            	  String e=rs.getString("country");
            	  String g=rs.getString("special");
            	  String h=rs.getString("hospital");
            	  request.getSession(true).setAttribute("special",g);
            	  request.getSession(true).setAttribute("hospital",h);
               
	     	%>
  <tr>
   <td><%=a %></td>
          <td><%=b %></td>
          <td><%=c %></td>
          <td><%=d %></td>
          <td><%=e %></td>
          <td><%=g %></td>
          <td><%=h %></td>
   </tr>
  
   <%} %>
</table>
<br><br>
<center><a href="AHome.jsp">CLick here to move back</a></center>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js'></script>

  
</body>
</html>
 