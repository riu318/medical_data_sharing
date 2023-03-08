 <%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.InetAddress"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>     
<!DOCTYPE HTML>
<html lang="en">
<head>



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
 <%
 /*Ip Adress Coding Start*/
 String ip = "";
 InetAddress inetAddress = InetAddress.getLocalHost();
 ip = inetAddress.getHostAddress();
  System.out.println(ip);
 /*Ip Adress Coding eEnd*/

%>
  
<!--******************** HEADER ********************-->
<div class="wrapper">
	<header> 
    
 <!--Navbar-->
<nav style="border-radius: 54px;background-color: darkcyan;">
     
        </nav>
    <!--Navbar-->
  <% 
    try
    {
                  String id = request.getParameter("id");
		  Class.forName("com.mysql.jdbc.Driver");
       		  System.out.println("loading class loaders");
       		  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","root");
              
              Statement st=con.createStatement();
              String f="select * from enc where id = '"+id+"'";
              ResultSet rs=st.executeQuery(f);
              
              while(rs.next())
              {
            	  String a=rs.getString("id");
            	  String b=rs.getString("name");
            	  String c=rs.getString("dob");
            	  String d=rs.getString("age");
            	  String e=rs.getString("sex");
            	  String g=rs.getString("mobile");
            	  String h=rs.getString("email");
            	  String i=rs.getString("address");
            	  String j=rs.getString("city");
            	  String k=rs.getString("state");
            	  String l=rs.getString("country");
               
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
               <form name="patientregistrationform" method="post" id="patientregistrationform" action="Intruder.jsp">
                <div class="apply_online">
                  <h1> Patient Id Num</h1>
                  <input id="patient_name" title="Patient's Name" name="id" value="<%=a %>" type="text" class="textinput"  >
                </div>
                
                 <div class="apply_online">
                  <h1>Patient Name</h1>
                  <input id="patient_name" title="Patient's Name" name="name" value="<%=b %>"  type="text" class="textinput"  >
                </div>
                
                  <div class="apply_online">
                	<h1>E-Mail</h1>
                  <input id="patient_name" title="Patient's Name" name="email"  value="<%=h %>"  type="text" class="textinput"  >
                </div>
                
                <div class="clearfloat"></div>
                <div class="apply_online">
               	 <div class="apply_online">
                  <h1>Mobile</h1>
                  <input id="patient_name" title="Patient's Name" name="mobile" value="<%=g %>"  type="text" class="textinput"  >
                </div>
                 
                  
              <div class="apply_online">
                  <h1>Age</h1>
                  <input id="patient_name" title="Patient's Name" name="age" value="<%=d %>"  type="text" class="textinput"  >
                </div>
               <div class="apply_online">
                  <h1>Gender</h1>
                  <input id="patient_name" title="Patient's Name" name="sex" value="<%=e %>"  type="text" class="textinput"  >
                </div>
               </div>
               <div class="apply_online">
 				<h1>Date Of Birth</h1>
                  <input id="patient_name" title="Patient's Name" name="dob" value="<%=c %>"  type="text" class="textinput" >
                </div>
                 <div class="apply_online">
                  <h1>Address </h1>
                  <input id="patient_name" title="Patient's Name" name="address" value="<%=c %>"   type="text" class="textinput"  >
                </div>
                
                  <div class="apply_online">
                  <h1>City</h1>
                  <input id="patient_name" title="Patient's Name" name="city"   value="<%=j %>" type="text" class="textinput"  >
                </div>
                 <div class="apply_online">
                  <h1>State</h1>
                  <input id="patient_name" title="Patient's Name" name="State"   value="<%=k %>" type="text" class="textinput"  >
                </div>
                <div class="apply_online">
                  <h1>Country</h1>
                  <input id="patient_name" title="Patient's Name" name="Country"  value="<%=l %>"  type="text" class="textinput"  >
                </div>
                 
                 <div class="apply_online">
                
                  <input id="patient_name" title="Patient's Name" name="ipa"  value="<%=ip %>"  type="hidden" class="textinput"  >
                </div>
                
               <%

%>
                
                
                
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
    <a onclick="return validate(document.patientregistrationform);" href="javascript:{document.getElementById('patientregistrationform').submit(); }" title="SUBMIT" class="" > Try To Modify </a> 
                  	<!-- <a href="#" class="Submit">Submit</a> -->
<!--                    <input type="SUBMIT" value="Submit"  name="submit_button" id="submit_button"  /> -->
                  </div>
                   <%}
                   }
catch (SQLException e) {
                System.out.println(e);

}
%>
                  <div class="otherbtn" style="margin-left:10px;"> <a href="IHome.jsp" class="Cancel">Cancel</a></div>
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