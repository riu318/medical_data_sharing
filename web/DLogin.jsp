    

<!DOCTYPE HTML>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Admin Login </title>
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

<div class="social_icon_clm">
    <div class="fb"><a href="http://www.facebook.com/TheApolloHospitals" target="_blank" title="Facebook"></a></div>
    <div class="twitter"><a href="https://twitter.com/HospitalsApollo" target="_blank" title="Twitter"></a></div>
    <div class="youtube"><a href="http://www.youtube.com/apollohospitalsindia" target="_blank" title="You Tube"></a></div>
</div>
<!--******************** HEADER ********************-->
<div class="wrapper">
	<header> 
 
    
    
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
            	<li><a href="index.html" title="Home"><img src="images/homeico.png" width="13" height="13" alt="Patient Registration Form" title="Patient Registration Form"/></a></li>
            	<li><a href="index.html" title="Home">Back</a></li>
                <li><span> > </span></li>
                <li title="DLogin"> Login Form</li>
            </ul>
        </div>
        <div class="pagehead"> Login Form </div>
        <div class="clearfloat"></div>
       
      <div class="contentshedow">
        <div class="left"><img src="images/about_banner.jpg" width="950" height="160"></div>
		<div class="columnMaster">
              <div class="columnLeft"> 
              <strong style="display:block; border-bottom:solid 1px #e8e8e8; padding-bottom:5px;">All fields are mandatory</strong>
              <form name="patientregistrationform" method="post" id="patientregistrationform" action="DLogin">
                <div class="apply_online">
                  <h1>Name *</h1>
                  <input id="patient_name" title="Patient's Name" name="name" type="text" class="textinput">
                </div>
                <div class="clearfloat"></div>
             
               
               
               <div class="clearfloat"></div>
               
             
                <div class="clearfloat"></div>
                
          
                <div class="clearfloat"></div>
                
             
                 <div class="clearfloat"></div>
                
                <div class="apply_online">
                  <h1> Password * </h1>
                  <input name="password" id="EMail" title="EMail" type="password" class="textinput">
                </div>
               
                
                <div class="clearfloat"></div>
                
           
<div class="clearfloat"></div>
                
              
            
        
                
                <div class="apply_online" style="margin-top:25px;clear:both;">
                  <div class="otherbtn"> 
    <a onclick="return validate(document.patientregistrationform);" href="javascript:{document.getElementById('patientregistrationform').submit(); }" title="SUBMIT" class="" > SUBMIT </a> 
                  	<!-- <a href="#" class="Submit">Submit</a> -->
<!--                    <input type="SUBMIT" value="Submit"  name="submit_button" id="submit_button"  /> -->
                  </div>
                  <div class="otherbtn" style="margin-left:10px;"> <a href="#" class="Cancel">Cancel</a></div>
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
        	<ul>
            	 
        
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