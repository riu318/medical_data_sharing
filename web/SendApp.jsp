   

<!DOCTYPE HTML>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<meta charset="utf-8">
<title>Add Dr </title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="title" content="">
<!-- Favicon -->
<link rel="shortcut icon" href="images/favicon.ico">

<!--Google Font-->
<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,700|Roboto:500,100,900&subset=latin,cyrillic-ext,greek-ext,greek,vietnamese,cyrillic,latin-ext' rel='stylesheet' type='text/css'>
<!--End Google Font-->

<!-- Main Styles -->
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/box_style.css" />



<!--Common Jquery --><script src="js/jquery.min.js"></script><!--Common Jquery -->
<!-- Main Menu Styles -->
<link rel="stylesheet" href="css/menu/core.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/menu/styles/lgray.css" type="text/css" media="screen">
<!--[if (gt IE 9)|!(IE)]><!-->
<link rel="stylesheet" href="css/menu/effects/slide.css" type="text/css" media="screen">
<!--<![endif]-->

 
<link media="screen" rel="stylesheet" href="css/colorbox.css" />
 

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
<!--******************** HEADER ********************-->
<div class="wrapper">
	<header> 
    
 <!--Navbar-->
<nav style="border-radius: 54px;background-color: darkcyan;">
     
        </nav>
    <!--Navbar-->
    <%String a = (String)session.getAttribute("pname");
String b = (String)session.getAttribute("pemail");
 %>
    
        <a href="index.php" class="logo" title="Apollo Hospitals Ahmedabad"> <img src="images/logo.jpg" width="114" height="143"> </a>
        <div class="rightlogo">
        	            <img src="images/jci_logo.png" width="74" height="81" title="Joint Commission International">
            <img src="images/nabh.jpg" width="82" height="81" title="NABH">
                        <img src="images/emergency.jpg" width="267" height="81" title="Emergency">        </div>
  </header>
</div>
 
<!--******************** Inner Page Content Area ********************-->
<div id="innerpageContent" style="background-color: honeydew;"> 
	<div class="wrapper"> 
    	
        <div class="pagepath">
        	<ul>
            	<li><a href="PHome.jsp" title="Home"><img src="images/homeico.png" width="13" height="13" alt="Patient Registration Form" title="Patient Registration Form"/></a></li>
            	<li><a href="PHome.jsp" title="Home">Home</a></li>
                
                <li title="Patient Registration Form">Patient Appoinment Request</li>
            </ul>
        </div>
        <div class="pagehead"> Patient Appoinment Request</div>
        <div class="clearfloat"></div>
       
      <div class="contentshedow">
        <div class="left"><img src="images/about_banner.jpg" width="950" height="160"></div>
		<div class="columnMaster">
              <div class="columnLeft"> 
              <strong style="display:block; border-bottom:solid 1px #e8e8e8; padding-bottom:5px;">All fields are mandatory</strong>
              <form name="patientregistrationform" method="post" id="patientregistrationform" action="App">
                <div class="apply_online">
                  <h1> Name </h1>
                  <input id="patient_name" title="Patient's Name" name="name" value="<%=a %>" type="text" class="textinput" readonly>
                </div>
                
                 <div class="apply_online">
                  <h1>E-Mail </h1>
                  <input id="patient_name" title="Patient's Name" name="email" value="<%=b %>"  type="text" class="textinput" readonly>
                </div>
                
                
                
                <div class="clearfloat"></div>
                <div class="apply_online">
               	
                <div style="float:left; width:44%;">
                  <h1> Date of Appoinment &nbsp;&nbsp; <b style="font-weight:normal; font-size:12px; color:#666;">(MM / DD / YY)</b> 	</h1>
                  <input id="Date_of_Birth" title="Date of Birth" name="dob" type="date" class="textinput" style="width:200px;">
                </div>
                  
               <div style="float:left; width:50%;">
                 <h1> Age </h1>
                 <input  id="Age" title="Age" name="age" type="text" class="textinput" style="width:200px;">
               </div>
               
               </div>
               
               
               <div class="clearfloat"></div>
               
                <div class="apply_online">
                  <div style="float:left; width:44%;">
                  <h1> Select Hospital </h1>
                   <select lang="*" style="width:220px;" class="textinput" title="Gender" id="country" name="country" onchange="showState(this.value)">
                   <option value="">Select</option>
                                      <%
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","ROOT"); 
 Statement stmt = con.createStatement();
 ResultSet rs2 = stmt.executeQuery("Select * from dreg group by hospital");
 while(rs2.next()){
     %>
                    
     <option value="<%=rs2.getString("hospital")%>"><%=rs2.getString("hospital")%></option>

      <%
 }
     %>
                    
                  </select>
                </div>
                
                <div style="float:left; width:50%;">
                  <h1> Please Select Department </h1>
                          
                  <select lang="*" style="width:220px;" class="textinput" title="Marital Status" id='state' name= 'state'>
                     
                    <option value='-1'></option>
                    
                  </select>
                </div>
                
                 <div style="float:left; width:50%;">
                 <br><br>
                  
                </div>
               </div>
               
                  <div class="apply_online">
                
                
               
                
               </div>
               
               
                <div class="clearfloat"></div>
                
           
                
                <div class="clearfloat"></div>
                
                <div class="apply_online">
               
                
                
                <div class="clearfloat"></div>
               </div>
                 <div class="clearfloat"></div>
                
          
                <div class="apply_online">
                  <h1>Your Message </h1>
                  <textarea id="Address" name="address" title="Address" cols="" rows="4" class="textarea"></textarea>
                </div>
                
                
                <div class="clearfloat"></div>
                
                <div class="apply_online">
                        <div class="apply_online">
               
                    
                 
                </div>
             
                    
                	 
				</div>
<div class="clearfloat"></div>
               
                 
                <div class="apply_online">
                     
		
                </div>
                
                <div class="apply_online" style="margin-top:25px;clear:both;">
                  <div class="otherbtn"> 
    <a onclick="return validate(document.patientregistrationform);" href="javascript:{document.getElementById('patientregistrationform').submit(); }" title="SUBMIT" class="" > Send Request </a> 
                  	<!-- <a href="#" class="Submit">Submit</a> -->
<!--                    <input type="SUBMIT" value="Submit"  name="submit_button" id="submit_button"  /> -->
                  </div>
                  <div class="otherbtn" style="margin-left:10px;"> <a href="PHome.jsp" class="Cancel">Cancel</a></div>
                </div>
                </form>
              </div>
              <div class="columnRight">
                <img src="images/patient_registration_form.jpg" width="280" height="173">
                <div class="clearfloat"></div>
                
              </div>
        </div>	        
        <div class="clearfloat"></div>
      </div>
      
      <div class="homeboxbttom">
    <div class="view2 view-first2">
    	<img src="images/find_doctor.png" />
		<div class="mask2"><h2> FIND A DOCTOR </h2><a href="find_a_doctor.php" class="info2">Read More</a></div>
	</div>   
   
   <div class="view2 view-first2">
		<img src="images/edoc.png" />
		<div class="mask2"><h2> Take an appointment </h2><a href="http://www.apolloedoc.co.in"  target="_blank" class="info2" title="Take an appointment">Read More</a></div>
   </div>
   
   <div class="view2 view-first2">
		<img src="images/view_of_facility.png" />
		<div class="mask2"><h2> 360   view of facility </h2><a href="virtualtour.php" class="info2">Read More</a></div>
   </div>
   
   <div class="view2 view-first2">
		<img src="images/education_&_academics.png" />
		<div class="mask2"><h2> Education & Academics </h2><a href="education_academics.php" class="info2">Read More</a></div>
   </div>
   
   <div class="view2 view-first2" style="margin-right:0px;">
		<img src="images/billion_hearts_beating.png" />
		<div class="mask2"><h2> Billion Hearts Beating </h2><a href="http://www.billionheartsbeating.com/" target="_blank" class="info2">Read More</a></div>
   </div>
</div>
<div class="clearfloat"></div>    


        
<div class="clearfloat"></div>    
</div>
<div class="clearfloat"></div>
</div>

<script type="text/javascript">
	/*
	function getstatefromcountry(stateobj){
		var country_val = "";
		country_val = document.getElementById("country").selectedIndex;
//		country_val = document.getElementById("country").value;
		if(country_val!=""){
			print_state(stateobj,country_val);
		}
		else{
			alert("Please select your country first");
		}
	}
	
	print_country('country');
	*/
	FillCountryDropDown('countryb');
</script>
    
< 
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/878261851/?guid=ON&amp;script=0"/>
</div>
 

</body>
</html>