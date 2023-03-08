     

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
    <%
String name = (String)session.getAttribute("dname");
String Hospital = (String)session.getAttribute("hospital");
 
String a = request.getParameter("name");
String b = request.getParameter("email");
String c = request.getParameter("message");
String d = request.getParameter("hospital");
String e = request.getParameter("special");
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
            	<li><a href="DHome.jsp" title="Home"><img src="images/homeico.png" width="13" height="13" alt="Patient Registration Form" title="Patient Registration Form"/></a></li>
            	<li><a href="DHome.jsp" title="Home">Home</a></li>
                
             </ul>
        </div>
         <div class="clearfloat"></div>
       
      <div class="contentshedow">
        <div class="left"><img src="images/about_banner.jpg" width="950" height="160"></div>
		<div class="columnMaster">
              <div class="columnLeft"> 
               <form name="patientregistrationform" method="post" id="patientregistrationform" action="Prescription">
                <div class="apply_online">
                  <h1> Patient Name </h1>
                  <input id="patient_name" title="Patient's Name" name="name" value="<%=a %>" type="text" class="textinput" readonly>
                </div>
                
                 <div class="apply_online">
                  <h1>E-Mail </h1>
                  <input id="patient_name" title="Patient's Name" name="email" value="<%=b %>"  type="text" class="textinput" readonly>
                </div>
                
                
                
                <div class="clearfloat"></div>
                <div class="apply_online">
               	 <div class="apply_online">
                  <h1>Problem</h1>
                  <input id="patient_name" title="Patient's Name" name="problem" value="<%=c %>"  type="text" class="textinput" readonly>
                </div>
                 
                  
              <div class="apply_online">
                  
                  <input id="patient_name" title="Patient's Name" name="hospital" value="<%=d %>"  type="hidden" class="textinput" readonly>
                </div>
               <div class="apply_online">
                  
                  <input id="patient_name" title="Patient's Name" name="special" value="<%=e %>"  type="hidden" class="textinput" readonly>
                </div>
               </div>
               <div class="apply_online">
 
                  <input id="patient_name" title="Patient's Name" name="dname" value="<%=name %>"  type="hidden" class="textinput" readonly>
                </div>
                 <div class="apply_online">
                  <h1>Medicine </h1>
                  <input id="patient_name" title="Patient's Name" name="medicine"    type="text" class="textinput"  >
                </div>
                
                  <div class="apply_online">
                  <h1>BP Range </h1>
                  <input id="patient_name" title="Patient's Name" name="bp"    type="text" class="textinput"  >
                </div>
                
                
                 <div class="apply_online">
                 
                  <h1>Description</h1>
                  <textarea id="Address" name="des" title="Address" cols="" rows="4" class="textarea"></textarea>
                </div>
               <div class="clearfloat"></div>
               
                
               
                 <div class="apply_online">
                
                
               
                
               </div>
               
               
                <div class="clearfloat"></div>
                
           
                
                <div class="clearfloat"></div>
                
                <div class="apply_online">
               
                
                
                <div class="clearfloat"></div>
               </div>
                 <div class="clearfloat"></div>
                
          
              
                
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
    <a onclick="return validate(document.patientregistrationform);" href="javascript:{document.getElementById('patientregistrationform').submit(); }" title="SUBMIT" class="" > Send Prescription </a> 
                  	<!-- <a href="#" class="Submit">Submit</a> -->
<!--                    <input type="SUBMIT" value="Submit"  name="submit_button" id="submit_button"  /> -->
                  </div>
                  <div class="otherbtn" style="margin-left:10px;"> <a href="DHome.jsp" class="Cancel">Cancel</a></div>
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