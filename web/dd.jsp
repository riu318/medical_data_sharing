<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
 <script language="javascript" type="text/javascript">
      var xmlHttp
      var xmlHttp
      function showState(str){
     if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      }
      var url="state.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange(){
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){
          
      document.getElementById("state").innerHTML=xmlHttp.responseText
      }
      }

      function showCity(str){
      if (typeof XMLHttpRequest != "undefined"){
        xmlHttp= new XMLHttpRequest();
        }
      else if (window.ActiveXObject){
        xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
        }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      }
      var url="city.jsp";
       var countryid=$('#country').val();
     
      url +="?count=" +str+"&doctorid="+countryid;
      xmlHttp.onreadystatechange = stateChange1;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }
      function stateChange1(){
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){
      document.getElementById("city").innerHTML=xmlHttp.responseText
      }
      }
      function stateChange2(){
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){
      document.getElementById("state").innerHTML=xmlHttp.responseText
      }
      }
      </script>
      
         <h2>SignUp</h2><br>
      <form id="form" name="form" action="process1.jsp" method="post">
    <table style="width: 400px; height: auto;"  border="3" style="color:black"  align="center" >
                            <tbody>

                           
                                <tr>
                                <td align="center" width="100">Name:</td>
                                <td><input name="name" type="text" id="name" style="width: 250px;" value="" /></td>
                              </tr>
                               <tr>
                                <td width="152"align="center">Email Address</td>
                                <td><input name="mail" type="text" id="mail" style="width: 250px;" value="" /></td>
                              </tr>
                              <tr>
                                <td width="152"align="center">UserName</td>
                                <td><input name="username" type="text" id="username" style="width: 250px;" value="" /></td>
                              </tr>

                              <tr>
                                <td align="center">Password </td>
                                <td><input name="password" type="password" id="password" style="width: 250px;" value=""/></td>
                              </tr>
			    <tr>
                                <td align="center">Phone No</td>
                                <td><input name="number" type="text" id="number" style="width: 250px;" value="" /></td>
                              </tr>

                                  <tr>
                                <td align="center">Age</td>
                                <td><input name="age" type="text" id="age" style="width: 250px;" value="" /></td>
                              </tr>

                                     <tr>
                                <td align="center">Gender</td>
                                <td>&emsp;&emsp;&emsp;<input type="radio" name="gender" value="male" checked="checked">Male
                                   &emsp;&emsp; <input type="radio" name="gender" value="female">Female</td>
                              </tr>
                              

                           <tr>
                               <td align="center">Pin code</td>
                                <td><input name="code" type="text" id="code" style="width: 250px;" value="" /></td>
                              </tr>

                                <tr> <td align="center">Disease</td>
                                <td><input name="disease" type="text" id="disease" style="width: 250px;" value="" /></td>
                              </tr>


   <tr>  <td align="center">Hospital</td>
                                               <td>
                                     <select id="country" style="width: 250px;"  name='country' onchange="showState(this.value)">
       <option value="none">---------Select------</option>
    <%
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","root");
 Statement stmt = con.createStatement();
 ResultSet rs2 = stmt.executeQuery("Select * from dreg group by hospital");
 while(rs2.next()){
     %>

     <option value="<%=rs2.getString("hospital")%>"><%=rs2.getString("hospital")%></option>

      <%
 }
     %>
      </select></td></tr>
                                  <tr>  <td align="center">Specialist</td>
                                               <td id='state'>
                                     <select name='state' style="width: 250px;" ><option value="none">--------Select-------</option>
                                     <option value='-1'></option>
                                      </select></td></tr>

                                    
                                      <tr>  <td align="center">Doctor</td>
                                          <td  id='city'>
                                     <select name='city' style="width: 250px;" ><option value="none">--------Select-------</option>
                                    <option value='-1'></option>
                                        </select>
                                         </td></td></tr>
                     
                                     <tr>
                                <td>&nbsp;</td>
                                <td><a href="#" class="style3">
                              
                                </a></td>
                              </tr>
                              <tr>
                                <td colspan="2"><div align="center">
                                        <input type="submit" name="Submit" value="Submit" style="background-color: skyblue" />
                                  &nbsp;  &nbsp; &nbsp;
                                  <input type="reset" name="Submit2" value="Reset" style="background-color: skyblue" />
                                </div></td>
                              </tr>
                            </tbody>
          </table>
			  </form>
    </form>
     </center>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
</body>
</html>