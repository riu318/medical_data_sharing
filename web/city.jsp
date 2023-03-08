<%@page import="java.sql.*"%>
<%
String doctor=request.getParameter("count");

String doctor2=request.getParameter("doctorid");
System.out.println("specialist id==========***********"+doctor2);
 String buffer="<select name='city' onchange='stateC(this.value);'><option value='-1'>Select</option>";
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","root");
 Statement stmt = con.createStatement();
 ResultSet rs = stmt.executeQuery("select * from dreg  where hospital='"+doctor2+"'");
   while(rs.next()){
   buffer=buffer+"<option value='"+rs.getString("name")+"'>"+rs.getString("name")+"</option>";
   }
 buffer=buffer+"</select>";
 response.getWriter().println(buffer);
 }
 catch(Exception e){
     System.out.println(e);
 }

 %>