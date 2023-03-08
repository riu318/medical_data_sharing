<%@page import="java.sql.*"%>
<%
String Special=request.getParameter("count");
System.out.println("Special(ie)hospital +++:"+Special);
 String buffer="<select name='state' onchange='showCity(this.value);'><option value='-1'>Select</option>";
 try{
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","root"); Statement stmt = con.createStatement();
 ResultSet rs = stmt.executeQuery("select * from dreg  where hospital='"+Special+"' group by special");
   while(rs.next()){
   buffer=buffer+"<option value='"+rs.getString("special")+"'>"+rs.getString("special")+"</option>";
   }
 buffer=buffer+"</select>";
//System.out.println("Special+++:"+buffer);

 response.getWriter().println(buffer);
 }
 catch(Exception e){
     System.out.println(e);
 }

 %>