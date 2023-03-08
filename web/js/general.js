 function trim(str) {
        return str.replace(/^\s+|\s+$/g,"");
   }
   
function validate(frm)
{

	//alert(frm);
	var n = frm.elements.length;
	for(var i=0;i<n;i++)
	{		
		
		var lang = frm.elements[i].lang;
		var val = trim(frm.elements[i].value);
		var title = frm.elements[i].title;
		var name = frm.elements[i].name;
		
		//alert(lang.length);
		
		if(lang && lang != "")
		{
			var comp = lang.charAt(0);
			rtn1=lang.indexOf('(');
			rtn2=lang.lastIndexOf(')');
			if(comp=="*" || comp=="_")
			{	
				if(comp=="*" && val=="")
				{	
					alert("Please Enter "+title);
					frm.elements[i].focus();
					return false;
				}
				var valid_char = '';
				var valid_email = 'No';
				var valid_phone_contact = 'No';
				for(var j=rtn1+1; j<rtn2; j++)
				{	 
					if(lang.charAt(j)=="N")
						valid_char += '0123456789.';
					else if(lang.charAt(j)=="A")
						valid_char += 'abcdefghijklmnopqrstuvwxyz-_.ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
					else if(lang.charAt(j)=="B")
						valid_char += 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
					else if(lang.charAt(j)=="C")
					{
						if(lang.length != 6){
							valid_phone_contact = "Yes";
						}
						
						valid_char += '0123456789.+-';
					}
					else if(lang.charAt(j)=="T"){
						valid_char += '0123456789.+-() ';
	valid_phone_contact = "Yes";
}
					else if(lang.charAt(j)=="D")
						valid_char += '0123456789-/: ';
					else if(lang.charAt(j)=="E")
					{
						valid_email = "Yes";
						valid_char += 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789._-@';
					}
					else if(lang.charAt(j)=="X")
						valid_char = '';
					else if(lang.charAt(j)=="[")
					{
						irtn1=lang.indexOf('[');
						irtn2=lang.lastIndexOf(']');
						//alert(lang.substring(irtn1+1,irtn2));
						valid_char += lang.substring(irtn1+1,irtn2);
						j = rtn2;
					}
				}
				
				
				if(valid_phone_contact == 'Yes')
				{		
					valid_msg = isValidphone(trim(frm.elements[i].value));
					if(valid_msg != 0)
					{
						alert(valid_msg);
						frm.elements[i].focus();
						return false;
					}
				}
				
				if(valid_email == 'Yes')
				{		
					valid_msg = isValidEmail(frm.elements[i].value);
					if(valid_msg != 0)
					{
						alert(valid_msg);
						frm.elements[i].focus();
						return false;
					}
				}
				
				if(val.length < 1){
					alert("Please Enter Valid "+ title);
					frm.elements[i].focus();
					return false;
				}
				
				for(k=0;k<val.length && valid_char!='';k++)
				{		
//					var tmp_val = checkKeyEventValidate('AlphaNumeric',val.length);
//					//alert(tmp_val);
//					if(tmp_val==-1){
//						alert("Please Enter Valid "+ title);
//						frm.elements[i].focus();
//						return false;
//					}
//					else{
						ch=val.charAt(k);
						rtn=valid_char.indexOf(ch);
						if(rtn==-1)
						{
							alert("Please Enter Valid "+ title);
							frm.elements[i].focus();
							return false;
						}
//					}
				}
			
				// Format Validation Here

				f_str = lang.substring(rtn2+1,lang.length);
				if(f_str != "" && comp=="*")
				{
					arr = f_str.split(':');
					if(parseInt(arr[0]) > 0)
					{
						if(val.length > parseInt(arr[0]))
						{
							alert(title + " must be less than or equal of "+parseInt(arr[0])+" characters");
							return false;
						} 
					}
					if(parseInt(arr[1]) > 0)
					{
						if(val.length < parseInt(arr[1]))
						{
							alert(title + " must be atleast of "+parseInt(arr[1])+" characters");
							return false;
						} 
					}
				}
			}
		}
	}
	return true;
}

function isValidphone(phnstr){
	var phnlngth = phnstr.length;
	
	if(phnlngth < 6 ){
		return "Please Enter Valid Contact Number"; //Please Enter atleast 6 digits for the Phone/ Contact Number
	}
	else{
		return 0;
	}
}

function Highlight(e,classname)
{
	e.className=classname;
}

function UnHighlight(e,classname)
{
	e.className=classname;
}
function checkKeyEventValidate(type,length)
{
	var chk1;
	var ch1;
	if(type == "Alpha")
		chk1="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ- ";
	else if(type == "AlphaNumeric")
		chk1="1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_. ";
	else if(type == "DecimalNumber")
		chk1="1234567890";
	else if(type == "Float")
		chk1="1234567890.";
	
	for(i=0;i<length;i++)
	{
		ch1=value.charAt(i);
		rtn1=chk1.indexOf(ch1);
		if(rtn1==-1)
			return false;
	}
	return true;
}
function openPopupImageWindow(ImageName,ImagePath)
{
	s=window.open('popup.php?page=enlarge&pid=1&amp;&amp;popup=1&amp;vImage='+ImageName+'&amp;vImagepath='+ImagePath,'enlarged_view','toolbar=no,resizable=yes,scrollbars=yes,left=350,top=200'); 
	s.focus();
	return false;
}
function Trim(s) 
{
	return s.replace(/^\s+/g, '').replace(/\s+$/g, '');
}
function checkAction(actionvalue,frm)
{
	var y=0;
	var confirmmsg;
	var errormsg;
	y = checkSelected(frm);
	switch(actionvalue)
	{
		case "Delete"	:	confirmmsg = "Confirm Deletion of Selected Record(s) ?";
							errormsg = "Please Select a Record(s) to Delete.";
							break;
		case "Blocked"	:	confirmmsg = "Confirm Blocked Selected Members(s) ?";
							errormsg = "Please Select a Record(s) to Blocked.";
							break;
		case "Active"	:	confirmmsg = "Confirm UnBlocked Selected Members(s) ?";
							errormsg = "Please Select a Record(s) to UnBlocked.";
							break;
		case "CopyAsNew":	confirmmsg = "Confirm Copy As New Event ?";
							errormsg = "Please Select a Record(s) to Copy As New Event.";
							break;
		case "Confirm":		confirmmsg = "Confirm Selcted Members ?";
							errormsg = "Please Select a Member(s) to Confirm.";
							break;
		case "Cancelled":	confirmmsg = "Cancell Selcted Members ?";
							errormsg = "Please Select a Member(s) to Cancelled.";
							break;
		case "Saved":		confirmmsg = "Save Selected Message(s) ?";
							errormsg = "Please Select a Messages(s) to Save.";
							break;
		case "Deleted"	:	confirmmsg = "Confirm Deletion of Selected Record(s) ?";
							errormsg = "Please Select a Record(s) to Delete.";
							break;
	}
	if(y>0)
	{
		if(confirm(confirmmsg))
		{	
			frm.mode.value=actionvalue;
			frm.submit();
		}
		else
		{return false;}
	}
	else
	{	alert(errormsg);	return false;	}
}
function checkSelected(frm)
{	
	var x=0;
	for(var i=0;i<frm.elements.length;i++)
	{
		if (frm.elements[i].id == 'iId' && frm.elements[i].checked == true) 
			{x++;}
	}
	return x;
	
}
/*
	this function is used to open thickbox manually not using the class.
*/
function openthickbox(title,anchortag,rel)
{
	tb_show(title,anchortag,rel);
	return false;
}
/*function checkAll(frm)
{
	var rs = (frm.abc.checked)?true:false;
	
	for(i=0;i<frm.elements.length;i++)
	{
	  	if(frm.elements[i].id == 'iId')
  		{
			frm.elements[i].checked = rs;
		}

	}  
}*/
function isValidEmail(emailStr) {
	var checkTLD=1;
	var knownDomsPat=/^(com|net|org|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum)$/;
	var emailPat=/^(.+)@(.+)$/;
	var specialChars="\\(\\)><@,;:\\\\\\\"\\.\\[\\]";
	var validChars="\[^\\s" + specialChars + "\]";
	var quotedUser="(\"[^\"]*\")";
	var ipDomainPat=/^\[(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\]$/;
	var atom=validChars + '+';
	var word="(" + atom + "|" + quotedUser + ")";
	var userPat=new RegExp("^" + word + "(\\." + word + ")*$");
	var domainPat=new RegExp("^" + atom + "(\\." + atom +")*$");
	var matchArray=emailStr.match(emailPat);
	
	if (matchArray==null) {
		return "Email address seems incorrect (check @ and .'s)";
		//alert("Email address seems incorrect (check @ and .'s)");
		//return false;
	}
	
	//alert(matchArray[0]+" 1st "+matchArray[1]+" 2nd "+matchArray[2]);
	var user=matchArray[1];
	var domain=matchArray[2];
	// Start by checking that only basic ASCII characters are in the strings (0-127).
	for (i=0; i<user.length; i++) {
		if (user.charCodeAt(i)>127) {
			return "The email doesn't seem to be valid.";
			//return "Ths username contains invalid characters.";
			//return false;
		}
	}
	
	for (i=0; i<domain.length; i++) {
		if (domain.charCodeAt(i)>127) {
			
			return "The email doesn't seem to be valid.";
			//return "Ths domain name contains invalid characters.";
			//return false;
		}
	}
	if (user.match(userPat)==null) {
		return "The email doesn't seem to be valid.";
		//return false;
	}
	var IPArray=domain.match(ipDomainPat);
	if (IPArray!=null) {
		for (var i=1;i<=4;i++) {
			if (IPArray[i]>255) {
				return "Destination IP address is invalid!";
				//return false;
	   		}
		}
		return 0;
	}
	var atomPat=new RegExp("^" + atom + "$");
	var domArr=domain.split(".");
	var len=domArr.length;
	for (i=0;i<len;i++) {
		if (domArr[i].search(atomPat)==-1) {
			return "The email doesn't seem to be valid.";
			//return "The domain name does not seem to be valid.";
			//return false;
	   }	
	}
	
	if (checkTLD && domArr[domArr.length-1].length!=2 && 
		domArr[domArr.length-1].toLowerCase().search(knownDomsPat)==-1) {
		return "The email doesn't seem to be valid.";
		//return "The address must end in a well-known domain or two letter " + "country.";
		//return false;
	}
// Make sure there's a host name preceding the domain.

	if (len<2) {
		return "The email doesn't seem to be valid.";
		//return "This address is missing a hostname!";
		//return false;
	}	
	
	return 0;
	
}


function checkpass (){
	
	var oldpass_val = document.getElementById('oldpassword').value;
	var pass_val = document.getElementById('newpassword').value;
	var cpass_val = document.getElementById('cnewpassword').value;

	
	if(oldpass_val==""){
		alert("Please enter Old Password");
		return false;		
	}
	if(pass_val==""){
		alert("Please enter new Password");
		return false;		
	}
	if(cpass_val==""){
		alert("Please enter confirm Password");
		return false;		
	}
	
	if(pass_val==cpass_val){
			
	}
	else{
		alert("Password and Confirm password does not match");
		return false;
	}
	
	return true;
}


function reloadCaptcha(obj)
{
	if(obj){
		document.getElementById(obj).src=document.getElementById(obj).src;
	}
	else{
		document.getElementById("image").src=document.getElementById("image").src;
	}
	
}