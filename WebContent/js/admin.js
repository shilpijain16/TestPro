function validation1()
{
var x=document.myform.uname.value;
var y=document.myform.pass.value;

if (x=="")
  {
  alert("First name must be filled out");
  return false;
  }
  
  
if(y=="")
  {
  alert(" Password must be filled out");
  return false;
  }
  
  return true;
  }
  
 function validation2()
{ 
var F_NAME=document.myform.F_NAME.value;
	var letters = /^[A-Za-z]+$/;   
	if(F_NAME=="" || (F_NAME.length<2 || F_NAME.length>30) || (!F_NAME.match(letters)))
	{
	alert("Enter First Name!!!!");
	document.myform.F_NAME.focus();
	return false;

	}
	
	var L_NAME=document.myform.L_NAME.value;
	var letters = /^[A-Za-z]+$/;   
	if(L_NAME=="" || (L_NAME.length<2 || L_NAME.length>30) || (!F_NAME.match(letters)))
	{
	alert("Enter Last Name!!!!");
	document.myform.L_NAME.focus();
	return false;
}


var ADDRESS=document.myform.ADDRESS.value;
if(ADDRESS==""|| (ADDRESS.length<10) )
{
	alert("provide your address");
	document.myform.ADDRESS.focus();
	return false;
}


var MOB_NO = /^\d{10}$/;
MOB_NO=document.myform.MOB_NO.value;
if(MOB_NO=="" )
{
	alert("provide valid phone no.");
	document.myform.MOB_NO.focus();
	return false;
}
 


var DOB=document.myform.DOB.value;
if(DOB=="")
{
	alert("provide your DOB");
	document.myform.DOB.focus();
	return false;
}
var GENDER=document.myform.GENDER.value;
if(GENDER=="")
{
	alert("provide your GENDER");
	document.myform.GENDER.focus();
	return false;
}
var CO_USERNAME=document.myform.CO_USERNAME.value;
if (CO_USERNAME=="")
  {
  alert("CO-USERNAME  must be filled out");
  document.myform.CO_USERNAME.focus();
  return false;
  }
  var CO_PASS=document.myform.CO_PASS.value;
  if(CO_PASS=="")
  {
  alert(" Password must be filled out");
  document.myform.CO_PASS.focus();
  return false;
  }
  
  var CO_SA=document.myform.CO_SA.value;
  if(CO_SA=="")
  {
  alert(" Answer must be filled out");
  document.myform.CO_SA.focus();
  return false;
  }

var z=document.myform.CO_EMAIL.value;
var atpos=z.indexOf("@");
var dotpos=z.lastIndexOf(".");


	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
 
  return false;
  
}
return true;
  
}
function validation7()
{

var U_ID;
var phoneno = /^\d{4}$/;
U_ID=document.myform1.U_ID.value;
if(U_ID=="" ||(!U_ID.match(phoneno)))
{
 alert("provide valid id.");
 document.myform1.U_ID.focus();
 return false;
}

return true;
}
function validation3()
{ 

var F_NAME=document.myform.F_NAME.value;
	var letters = /^[A-Za-z]+$/;   
	if(F_NAME=="" || (F_NAME.length<2 || F_NAME.length>30) || (!F_NAME.match(letters)))
	{
	alert("Enter First Name!!!!");
	document.myform.F_NAME.focus();
	return false;

	}
	
	var L_NAME=document.myform.L_NAME.value;
	var letters = /^[A-Za-z]+$/;   
	if(L_NAME=="" || (L_NAME.length<2 || L_NAME.length>30) || (!F_NAME.match(letters)))
	{
	alert("Enter Last Name!!!!");
	document.myform.L_NAME.focus();
	return false;
}

var money=document.myform.money.value;
if(money=="")
{
alert("Enter Money")
}

var ADDRESS=document.myform.ADDRESS.value;
if(ADDRESS==""|| (ADDRESS.length<5) )
{
	alert("provide your address");
	document.myform.ADDRESS.focus();
	return false;
}


var MOB_NO = /^\d{10}$/;
MOB_NO=document.myform.MOB_NO.value;
if(MOB_NO=="" )
{
	alert("provide valid phone no.");
	document.myform.MOB_NO.focus();
	return false;
}
 


var DOB=document.myform.DOB.value;
if(DOB=="")
{
	alert("provide your DOB");
	document.myform.DOB.focus();
	return false;
}
var GENDER=document.myform.GENDER.value;
if(GENDER=="")
{
	alert("provide your GENDER");
	document.myform.GENDER.focus();
	return false;
}
var CO_USERNAME=document.myform.CO_USERNAME.value;
if (CO_USERNAME=="")
  {
  alert("CO-USERNAME  must be filled out");
  document.myform.CO_USERNAME.focus();
  return false;
  }
  var CO_PASS=document.myform.CO_PASS.value;
  if(CO_PASS=="")
  {
  alert(" Password must be filled out");
  document.myform.CO_PASS.focus();
  return false;
  }
  
  var CO_SA=document.myform.CO_SA.value;
  if(CO_SA=="")
  {
  alert(" Answer must be filled out");
  document.myform.CO_SA.focus();
  return false;
  }

var z=document.myform.CO_EMAIL.value;
var atpos=z.indexOf("@");
var dotpos=z.lastIndexOf(".");


	if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
 
  return false;
  
}
return true;
  
}
function validation4()
{
var z=document.myform.email.value;
var atpos=z.indexOf("@");
var dotpos=z.lastIndexOf(".");
 if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
 
  return false;
}
 return true;
  
}

function validation5()
{

var B_ID;
var phoneno = /^\d{4}$/;
B_ID=document.myform.B_ID.value;
if(B_ID=="" ||(!B_ID.match(phoneno)))
{
 alert("provide valid id.");
 document.myform.B_ID.focus();
 return false;
}

return true;
}
 
function validation6()
{
var Branch=document.myform1.Branch.value;
if(Branch=="" )
{
	alert("Enter Branch");
	document.myform1.Branch.focus();
	return false;
}


var Available_Balance;
var Available_Balance1 = /^\d{10}$/;
Available_Balance=document.myform1.Available_Balance.value;
if(Available_Balance=="" ||(!Available_Balance.match(Available_Balance1)))
{
 alert("Provide Valid Balance");
 document.myform1.Available_Balance.focus();
 return false;
}

var Opening_Balance;
var Available_Balance1 = /^\d{10}$/;
Opening_Balance=document.myform1.Opening_Balance.value;
if(Opening_Balance=="" ||(!Opening_Balance.match(Available_Balance1)))
{
 alert("Provide Valid Balance");
 document.myform1.Available_Balance.focus();
 return false;
}

return true;
}

function post()
{

var r=confirm("Press a button!");
if (r==true)
  {
  x="You pressed OK!";
  window.location='WelcomeForm.jsp';
  }
else
  {
  x="You pressed Cancel!";
  window.location='CorporateReg.jsp';
  }
return true;
}

function post1()
{

var r=confirm("Press a button!");
if (r==true)
  {
  x="You pressed OK!";
  window.location='WelcomeForm.jsp';
  }
else
  {
  x="You pressed Cancel!";
  window.location='UserReg.jsp';
  }
return true;
}
