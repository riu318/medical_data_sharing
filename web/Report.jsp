  

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Medical Data Sharing</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="title" content="">
<!-- Favicon -->
<link rel="shortcut icon" href="images/favicon.ico">
 
<style type="text/css">
#formones{ background:url(images/presc.jpg); background-repeat:no-repeat; width:474px; height:378px;}
input{ border:none; }
#martop{ position:relative; top:85px;}
label{ color: green; font-family:"Brush Script MT"; font-size: 30px;}
</style>

<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
 
<!-- start-smoth-scrolling -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Cinzel:400,700,900' rel='stylesheet' type='text/css'>
</head>
	
<body>
     <%
        String name=session.getAttribute("pname").toString();
        String email=session.getAttribute("pemail").toString();
 
    %>
  <BR><BR>
<div class="container"> 
    <center> <br>
       <div id="oneall" align="center">
  
 
        <div class="boxone">
            
        <div class="texboxone">
             <%try{
 String id=request.getParameter("id");
 Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","root");
 String Query2="Select * from prescription where pemail ='"+email+"' and status='Waiting' ";
PreparedStatement ps2=con.prepareStatement(Query2);
ResultSet rs2=ps2.executeQuery();
if(rs2.next())
{


%>
        <div id="formones">
             <h1 style=" position: relative; top: 40px;"><font color="black">Prescription</font></h1>
        <div id="martop">
            <div style="width:335px; float:left;"><label style="color: #0000cc"><%=rs2.getString("pname")%></label></div>
     
        <div style="width:115px; float:left;"><label style="font-style: italic;font-size: small;color: #0000cc"><%=rs2.getString("date")%></input></div>

        <%try{
  
 
 


%>

<div style="width:350px; position:relative; top:0px;margin-left: -110px; "><label style="margin-left: 257px;font-style: italic;font-size: 20px;color: #0000cc;"><%=rs2.getString("hospital")%></label></div>
      <%}catch(Exception ew){}%>
        <div style="width:250px; position:relative; top:5px;">
            <label style="font-style: italic;font-size: 22px;color: #0000cc"><%=rs2.getString("des")%></label>
           
         </div>
            
         <div style="width:510px; position:relative; top: 35px;left: 146px; ">

             <label style="font-style: italic;font-size: 30px;color: #0000cc;"><b><%=rs2.getString("dname")%></b></label>
         </div>

        


         <div style="width:270px; position:relative; top:-35px; ">

             <b> <label style="font-style: italic;font-size: 20px;color: #0000cc"><%=rs2.getString("medicine")%></label></b>
         </div>

          </div>
          </div>
          </div>
          </div>
          </div>
          
          <p align="center"><h1><a href="Receive.jsp">Received</a></h1></center></p> 

<%}
}
             catch(Exception e){
            	 
             }
             %>
        </div>
        </div>  
 
 


        </div>

           
        </div>
        <br><br>
        
        
         <br><br>
<center><a href="PHome.jsp">CLick here to move back</a></center>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js'></script>
</body>
</html>