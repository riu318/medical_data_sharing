   

<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Medical Data Sharing</title>
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

<!--[if lte IE 9]>
<style type="text/css">
.menu .cols4,.menu .col4{width:989px; left:-287px;}
.menu .cols3,.menu .col3{width:989px; left:-78px;}
.menu .col3{ 
	width:989px; 
	float:left; 
	background:#191919;
	}
.menu .menuarrow{ 
	width:989px;
	height:10px;
	float:left;
	background:url(../../images/menu_arrow.png) 176px top no-repeat;
 	}
.menu .menuarrow2{ 
	width:989px;
	height:10px;
	float:left;
	background:url(../../images/menu_arrow.png) 375px top no-repeat;
 	}
.lgray>li>a{
	color:#FFF;
	font-weight:bold;
	font-size:12px;
	line-height:18px;
	padding:11px 28px 11px 28px;
	text-transform:uppercase;
	background:#000;
	margin-right:1px; 
	}
.lgray>li:hover>a{
	background-color:#e31e24;
	border-left:none;
	padding-left:28px;
	}
</style>
<!--<![endif]-->

<!-- This piece of code, makes the CSS3 effects available for IE -->
<!--[if lte IE 9]>

<script src="js/menu.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" charset="utf-8">
	$(function() {
		$("#menu").menu({'effect' : 'slide'});
	});
</script>
<![endif]-->
<!--End Main Menu Styles -->

<!-- Sanket change start -->
<link media="screen" rel="stylesheet" href="css/colorbox.css" />
<script src="js/jquery.colorbox.js"></script>

<script>
     var y = jQuery.noConflict();
</script>
<script> 
	y(document).ready(function() {
		y(".inline").colorbox({inline:true, width:"948px", height:"316px"});
		y(".inline").colorbox().trigger('click');
		
		setTimeout(function(){
			y.colorbox.close();
		}, 15000);
		
	});
</script>
<!-- Sanket change end -->

<script type="text/javascript" src="js/functions.js"></script>
<script type="text/javascript" src="js/slider.js"></script>


<script>

  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){

  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),

  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)

  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

 

  ga('create', 'UA-47071863-1', 'apolloahd.com');

  ga('send', 'pageview');

 

</script>

</head>

<body>

 
<!--******************** HEADER ********************-->
<div class="wrapper">
	<header> 
    
 <!--Navbar-->
<nav style="border-radius: 54px;background-color: darkcyan;">
     
        </nav>
    <!--Navbar-->
    
    
        <a href="index.php" class="logo" title="Apollo Hospitals Ahmedabad"> <img src="images/logo.jpg" width="114" height="143"> </a>
        <div class="rightlogo">
        	            <img src="images/jci_logo.png" width="74" height="81" title="Joint Commission International">
            <img src="images/nabh.jpg" width="82" height="81" title="NABH">
                        <img src="images/emergency.jpg" width="267" height="81" title="Emergency">        </div>
  </header>
</div>
<link type="text/css" href="css/core_management.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/general.js"></script>
<!--<script type="text/javascript" src="js/countries.js"></script>-->
<script type="text/javascript" src="js/CityState.js"></script>
<!--******************** Inner Page Content Area ********************-->
<div id="innerpageContent" style="background-color: honeydew;"> 
	<div class="wrapper"> 
    	
        <div class="pagepath">
        	<ul>
            	<li><a href="AHome.jsp" title="Home"><img src="images/homeico.png" width="13" height="13" alt="Patient Registration Form" title="Patient Registration Form"/></a></li>
            	<li><a href="AHome.jsp" title="Home">Home</a></li>
                <li><span> > </span></li>
                <li title="Patient Registration Form">Doctor Registration Form</li>
            </ul>
        </div>
        <div class="pagehead"> Doctor Registration Form </div>
        <div class="clearfloat"></div>
       
      <div class="contentshedow">
        <div class="left"><img src="images/about_banner.jpg" width="950" height="160"></div>
		<div class="columnMaster">
              <div class="columnLeft"> 
              <strong style="display:block; border-bottom:solid 1px #e8e8e8; padding-bottom:5px;">All fields are mandatory</strong>
              <form name="patientregistrationform" method="post" id="patientregistrationform" action="DReg">
                <div class="apply_online">
                  <h1>Dr Name </h1>
                  <input id="patient_name" title="Patient's Name" name="name" type="text" class="textinput">
                </div>
                
                 <div class="apply_online">
                  <h1>E-Mail </h1>
                  <input id="patient_name" title="Patient's Name" name="email" type="text" class="textinput">
                </div>
                
                 <div class="apply_online">
                  <h1>Password </h1>
                  <input id="patient_name" title="Patient's Name" name="password" type="text" class="textinput">
                </div>
                
                <div class="clearfloat"></div>
                <div class="apply_online">
               	
                <div style="float:left; width:44%;">
                  <h1> Date of Birth &nbsp;&nbsp; <b style="font-weight:normal; font-size:12px; color:#666;">(DD / YY / MM)</b> 	</h1>
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
                  <h1> Gender </h1>
                  <select lang="*" style="width:220px;" class="textinput" title="Gender" id="sex" name="sex">
                    <option value="">Select</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    
                  </select>
                </div>
                
                <div style="float:left; width:50%;">
                  <h1> Marital Status  </h1>
                  <select lang="*" style="width:220px;" class="textinput" title="Marital Status" id="Marital_Status" name="marital">
                    <option value="">Select</option>
                    <option value="Single">Single</option>
                    <option value="Married">Married</option>
                    
                  </select>
                </div>
                
               </div>
               
                  <div class="apply_online">
                  <div style="float:left; width:44%;">
                  <h1> Specialist In </h1>
                  <select lang="*" style="width:220px;" class="textinput" title="Gender" id="sex" name="speciallist">
                    <option value="">Select</option>
                <option value="AUDIOLOGIST &amp; SPEECH THERAPIST">AUDIOLOGIST &amp; SPEECH THERAPIST</option>
<option value="CARDIOLOGIST">CARDIOLOGIST</option>
<option value="CARDIOVASCULAR &amp; THORACIC SURGERY">CARDIOVASCULAR &amp; THORACIC SURGERY</option>
<option value="PHYSICIAN">PHYSICIAN</option>
<option value="CLINICAL PSYCHOLOGY">CLINICAL PSYCHOLOGY</option>
<option value="DENTISTRY">DENTISTRY</option>
<option value="DERMATOLOGY &amp; SKIN">DERMATOLOGY &amp; SKIN</option>
<option value="DIABETOLOGY">DIABETOLOGY</option>
<option value="DIETICIAN">DIETICIAN</option>
<option value="ENT">ENT</option>
<option value="GASTRO ENTEROLOGY">GASTRO ENTEROLOGY</option>
<option value="GENERAL &amp; LAPAROSCOPIC SURGERY">GENERAL &amp; LAPAROSCOPIC SURGERY</option>
<option value="GENERAL MEDICINE">GENERAL MEDICINE</option>
<option value="GYNAECOLOGY &amp; OBSTETRICS">GYNAECOLOGY &amp; OBSTETRICS</option>
<option value="HEMATO MEDICAL ONCOLOGIST">HEMATO MEDICAL ONCOLOGIST</option>
<option value="HOMEOPATHY">HOMEOPATHY</option>
<option value="INTERVENTIONAL RADIOLOGY">INTERVENTIONAL RADIOLOGY</option>
<option value="MEDICAL ONCOLOGY">MEDICAL ONCOLOGY</option>
<option value="NEPHROLOGY">NEPHROLOGY</option>
<option value="NEUROLOGY">NEUROLOGY</option>
<option value="NEUROSURGEON">NEUROSURGEON</option>
<option value="ONCOSURGERY">ONCOSURGERY</option>
<option value="OPHTHALMOLOGY">OPHTHALMOLOGY</option>
<option value="ORTHODONTICS &amp; DENTOFACIAL ORTHOEDICS">ORTHODONTICS &amp; DENTOFACIAL ORTHOEDICS</option>
<option value="ORTHOPEDIC SURGERY">ORTHOPEDIC SURGERY</option>
<option value="PATHOLOGY">PATHOLOGY</option>
<option value="PED. CARDIOVASCULAR &amp; THORACIC SURGERY">PED. CARDIOVASCULAR &amp; THORACIC SURGERY</option>
<option value="PED. ORTHO">PED. ORTHO</option>
<option value="PEDIATRIC DENTIST">PEDIATRIC DENTIST</option>
<option value="PEDIATRIC NEURO PHYSICIAN">PEDIATRIC NEURO PHYSICIAN</option>
<option value="PEDIATRIC SURGERY">PEDIATRIC SURGERY</option>
<option value="PEDIATRICS AND NEONATOLOGY">PEDIATRICS AND NEONATOLOGY</option>
<option value="PHYSIOTHERAPY">PHYSIOTHERAPY</option>
<option value="PLASTIC SURGERY">PLASTIC SURGERY</option>
<option value="PROSTHODONTICS">PROSTHODONTICS</option>
<option value="PSYCHIATRY">PSYCHIATRY</option>
<option value="RADIATION ONCOLOGY">RADIATION ONCOLOGY</option>
<option value="RADIOLOGY">RADIOLOGY</option>
<option value="RHEUMATOLOGY">RHEUMATOLOGY</option>
<option value="SLEEP MEDICINE">SLEEP MEDICINE</option>
<option value="UROLOGY">UROLOGY</option></select></span></p>
                  </select>
                </div>
                
                <div style="float:left; width:50%;">
                  <h1> Hospital  </h1>
                  <select lang="*" style="width:220px;" class="textinput" title="Marital Status" id="Marital_Status" name="hospital">
                    <option value="">Select</option>
                    <option value="Vijaya Hospital">Vijaya Hospital</option>
                    <option value="AIMS Hospital">AIMS Hospital</option>
                    <option value="SRM Hospital">SRM Hospital</option>
                    <option value="MIOT Hospital">MIOT Hospital</option>
                    <option value="Apollo Hospital">Apollo Hospital</option>
                 
                  </select>
                </div>
                
               </div>
               
               
                <div class="clearfloat"></div>
                
           
                
                <div class="clearfloat"></div>
                
                <div class="apply_online">
                <div style="float:left; width:44%;">
                  <h1>Phone</h1>
                  <input name="mobile" id="Phone" type="text" class="textinput" style="width:290px;">
                </div>
                
                
                <div class="clearfloat"></div>
               </div>
                 <div class="clearfloat"></div>
                
          
                <div class="apply_online">
                  <h1> Address </h1>
                  <textarea id="Address" name="address" title="Address" cols="" rows="4" class="textarea"></textarea>
                </div>
                
                
                <div class="clearfloat"></div>
                
                <div class="apply_online">
                        <div class="apply_online">
                	<div style="float:left; width:44%;">
                        <h1> City / Town </h1>
                      	<input type="text" style="width:200px;" class="textinput"  name="city" id="cityb"  lang="*" title="City / Town" /> 
                 <!--   
                      <select style="width:220px;" class="textinput" name="citya" id="citya" lang="*" title="City / Town"  >
                        	<option value="">Select City / Town</option>
                        </select>
				-->
                    </div>
                    
                    <div style="float:left; width:44%;">
                        <h1> Pin </h1>
                      	<input type="text" style="width:200px;" class="textinput"  name="pin" id="Pin"  lang="*" title="Pin" /> 
                 <!--   
                      <select style="width:220px;" class="textinput" name="citya" id="citya" lang="*" title="City / Town"  >
                        	<option value="">Select City / Town</option>
                        </select>
				-->
                    </div>
                </div>
                    
                    <div style="float:left; width:44%;">
                    	<h1> Country </h1>
				   		 <select style="width:220px;" class="textinput" name="country" id="countryb"  lang="*" title="Country" onChange="FillStatesDropDown('countryb','stateb');">
                        	<option value="">Select Country</option>
                          	
                        </select>
                        	
                	</div>
                    
                	<div style="float:left; width:44%;">
                        <h1> State </h1> <!---  onChange="FillCityDropDown('statea','citya');"  --->
                        <select style="width:220px;" class="textinput" name="state" id="stateb" lang="*" title="State"  >
                        	<option value="">Select State</option>
                        </select>
                	</div>
				</div>
<div class="clearfloat"></div>
                <%@page import = "java.util.*" %>
                <%
                Random js = new Random();
                int a = js.nextInt(100000000);
                String j = Integer.toString(a);                
                %>
        
                <div class="apply_online">
                  <h1> Register ID </h1>
                  <input name="reg" id="docname" title="Doctors Name" type="text" value="<%=j %>" class="textinput" />
                </div>
                <div class="apply_online">
                     
		
                </div>
                
                <div class="apply_online" style="margin-top:25px;clear:both;">
                  <div class="otherbtn"> 
    <a onclick="return validate(document.patientregistrationform);" href="javascript:{document.getElementById('patientregistrationform').submit(); }" title="SUBMIT" class="" > SUBMIT </a> 
                  	<!-- <a href="#" class="Submit">Submit</a> -->
<!--                    <input type="SUBMIT" value="Submit"  name="submit_button" id="submit_button"  /> -->
                  </div>
                  <div class="otherbtn" style="margin-left:10px;"> <a href="AHome.jsp" class="Cancel">Cancel</a></div>
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
    
<script type="text/javascript">
//<![CDATA[
optionalZipCountries = ["HK","IE","MO","PA"];
//]]>
</script>
<script type="text/javascript">//<![CDATA[
        var Translator = new Translate([]);
        //]]></script><script type="text/javascript">
    //<![CDATA[
    var Shopper = {};
    Shopper.price_circle = 1;
    Shopper.fixed_header = 1;
    Shopper.totop = 1;
    Shopper.responsive = 1;
    Shopper.quick_view = 0;
    Shopper.shopby_num = '5';
    Shopper.text = {};
    Shopper.text.more = 'more...';
    Shopper.text.less = 'less...';
    Shopper.anystretch_bg = '';
        //]]>
</script>
<!-- End Slider -->

<!-- Footer Area --> 
<footer>
	<div class="innerholder">
    	<div class="footerblock" style="width:19%;">
        	 
        </div>
        
        <div class="footerblock">
        	 
        </div>
        
        <div class="footerblock" style="width:16%;">
        	 
        </div>
        
        
        <div class="footerblock" style="width:20%;">
        	 
        </div>
        
        
        <div class="footerblock" style="width:17%;">			
        	 
        </div>
        
    <div class="clearfloat"></div>
    </div>
    
<div class="yellowblock">
	<div class="innerholder">
    	 
        
        <div id="controls_left">
          	<div class="fb"> <a href="http://www.facebook.com/TheApolloHospitals" target="_blank" title="Facebook"></a> </div>
            </div>
         
        
         
    </div>
</div>
 <input type="hidden" value="" name="hidevalueurl" id="hidevalueurl" />
</footer>

<!-- Google Code for Remarketing Tag -->
<!--------------------------------------------------
Remarketing tags may not be associated with personally identifiable information or placed on pages related to sensitive categories. See more information and instructions on how to setup the tag on: http://google.com/ads/remarketingsetup
--------------------------------------------------->
<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 878261851;
var google_custom_params = window.google_tag_params;
var google_remarketing_only = true;
/* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/878261851/?guid=ON&amp;script=0"/>
</div>
</noscript>


</body>
</html>