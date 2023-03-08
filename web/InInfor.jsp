    
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
<center><h1>Intruder <span></span> <span>  Information</span></h1></center>

<table class="responstable">
  
  <tr>
     <th>Id</th>
          <th>Intruder IP Address</th>
          <th>Patient Name</th>
          <th>Patient E-Mail</th>
          <th>Action</th>
         
  </tr>
    <%
		      Class.forName("com.mysql.jdbc.Driver");
       		  System.out.println("loading class loaders");
       		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","ROOT");
              
              Statement st=con.createStatement();
              String f="select * from enc where status='Accept' ";
              ResultSet rs=st.executeQuery(f);
              
              while(rs.next())
              {
            	  String a=rs.getString("id");
            	  String b=rs.getString("name");
            	  String c=rs.getString("email");
            	  String d=rs.getString("ipa");
             
               
	     	%>
  <tr>
          <td><%=a %></td>
          <td><%=d %></td>
          <td><%=b %></td>
          <td><%=c %></td>
          <td>Try To Modify</td>
     
   </tr>
  
   <%} %>
</table>
<br><br>
<center><a href="AHome.jsp">CLick here to move back</a></center>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js'></script>

  
</body>
</html>
 