     
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
    
    String name = (String)session.getAttribute("pname");
    String email = (String)session.getAttribute("pemail");
    
 %>
    
<body>
 <center><h1>My<span></span> <span> Profile </span></h1></center>
<table class="responstable">
  
  <tr>
          <th>Id</th>
          <th> Name</th>
          <th>E-Mail</th>
           <th>Date Of Birth</th>
            <th>Age</th>
             <th>Gender</th>
          <th>Mobile Number</th>
           <th>Address</th>
            <th>City</th>
             <th>State</th>
          <th>Country</th>
           <th>Action</th>
  </tr>
    <%
		      Class.forName("com.mysql.jdbc.Driver");
       		  System.out.println("loading class loaders");
       		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","root");              
              Statement st=con.createStatement();
              String f="select * from preg where name = '"+name+"' and email = '"+email+"'";
              ResultSet rs=st.executeQuery(f);
              
              while(rs.next())
              {
            	  String a=rs.getString("id");
            	  String b=rs.getString("name");
            	  String c=rs.getString("email");
            	  String d=rs.getString("dob");
            	  String e=rs.getString("age");
            	  String g=rs.getString("sex");
            	  String h=rs.getString("mobile");
            	  String i=rs.getString("address");
            	  String j=rs.getString("city");
            	  String k=rs.getString("state");
            	  String l=rs.getString("country");
               
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
          <td><%=j %></td>
          <td><%=k %></td>
          <td><%=l %></td>
         <td><a href="Encrypt.jsp?id=<%=a%>&&name=<%=b %>&&email=<%=c%>&&dob=<%=d%>&&age=<%=e%>&&sex=<%=g%>&&mobile=<%=h%>&&address=<%=i%>">Encrypt</a></td>
          
   </tr>
  
   <%} %>
</table>
<br><br>
<center><a href="PHome.jsp">CLick here to move back</a></center>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js'></script>
 </body>
</html>
 