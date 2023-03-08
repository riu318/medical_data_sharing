       
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
 
 String name = (String)session.getAttribute("dname");
 %>
<body>
  <h1>Patient <span></span> <span> Status</span></h1>

<table class="responstable">
  
  <tr>
     
     	   
          <th>Patient Name</th>
          <th>E-Mail</th>
          <th>Date Of Generate Prescription </th>
          <th>Doctor Advice</th>
         
          <th>Action</th>
          
  </tr>
    <%
		      Class.forName("com.mysql.jdbc.Driver");
       		  System.out.println("loading class loaders");
       		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","ROOT");
              
              Statement st=con.createStatement();
              String f="select * from prescription where status ='Accept' and dname='"+name+"' ";
              ResultSet rs=st.executeQuery(f);
              
              while(rs.next())
              {
            	 
            	  String b=rs.getString("pname");
            	  String c=rs.getString("pemail");
            	  String d=rs.getString("date");
            	  String e=rs.getString("des");
            	   
          		
               
	     	%>
  <tr>
    
          <td><%=b %></td>
          <td><%=c %></td>
          <td><%=d %></td>
          <td><%=e %></td>
     
         
          <td>Received</td>
           
   </tr>
  
   <%} %>
</table>
<br><br>
<center><a href="DHome.jsp">CLick here to move back</a></center>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js'></script>
 
</body>
</html>
 