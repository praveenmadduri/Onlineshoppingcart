<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page import="com.dts.crsm.model.Brand,com.dts.crsm.dao.BrandDAO,com.dts.core.util.CoreHash,java.util.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Stores </title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style3 {color: #000000}
.style10 {font-size: x-small}
.style13 {font-size: x-small; font-weight: bold; color: #000000; }
-->
</style>
 <script type="text/javascript" src="scripts/general.js"> </script>
   <script type="text/javascript" src="scripts/ts_picker.js"> </script>
<script language="javascript">
function validate()
{
   var temp = document.register;
   if(temp.fname.value=="" || temp.lname.value=="" || temp.bdate.value=="" || temp.loginname.value=="" || temp.password.value=="" || temp.sanswer.value=="")
   {
       alert("All Fields are manditory");
       return false;
   }
   if(temp.ch.checked && temp.ownquest.value=="")
   {
       alert("All Fields are manditory");
       return false;
   }
   return true;
}
function check()
{
    var form = document.register;
    if(!form.ch.checked){
          form.ownquest.disabled=true;
          form.squest.disabled=false;
    }
    else{
          form.ownquest.disabled=false;
          form.squest.disabled=true;
    }
}
</script>
</head>
<body>
<div id="logo">
	<h1><jsp:include page="header.html"/></h1>
	
</div>
<div id="menu">
	<ul>
	<jsp:include page="Adminoptions.jsp"/>  
	</ul>
</div>
<div id="wrapper">
  <div id="col-two1">
	  <div class="boxed">
		<h2 class="title">Welcome to CSM</h2>
      
			<h3 align="right">
	    <a align="right"><script language="JavaScript" type="text/javascript">
      </script></a></h3>
<div class="content">
  <table width="654" border="0">
<tr>
                    <td width="648">
	  <fieldset>
					<legend><span class="style3">New Brand</span></legend>
  <br />
                    <form name="f" method="post" action="AddDealerAction.jsp">
                      <table border="0" align="center">
                        <tr>
                          <td class="style3 tiny"><span class="style3"><strong>First Name </strong></span></td>
                          <td><input type="text" name="fname" class="textfield"/>                          </td>
                        </tr>
                        <tr>
                          <td><span class="style13">Last Name </span></td>
                          <td><input type="text" name="lname" class="textfield"/>                          </td>
                        </tr>
                        <tr>
                          <td><span class="style13">Birth Date </span></td>
                          <td><input type="text" name="bdate" readonly="readonly" />
                            <a href="javascript:show_calendar('document.register.bdate', document.register.bdate.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a> </td>
                        </tr>
                        <tr>
                          <td class="style13">House No</td>
                          <td><input type="text" name="hno" class="textfield"/></td>
                        </tr>
                        <tr>
                          <td class="style13">Street</td>
                          <td><input type="text" name="street" class="textfield"/></td>
                        </tr>
                        <tr>
                          <td><span class="style13">City</span></td>
                          <td><select name="city">
                              <option>Hyderabad</option>
                              <option>Mumbai</option>
                            </select>                          </td>
                        </tr>
                        <tr>
                          <td><span class="style13">State</span></td>
                          <td><select name="state">
                              <option>Andhra pradesh</option>
                              <option>Maharashtra</option>
                            </select>                          </td>
                        </tr>
                        <tr>
                          <td><span class="style13">Country</span></td>
                          <td><select name="country">
                              <option>India</option>
                            </select>                          </td>
                        </tr>
                        <tr>
                          <td class="style13">Pincode</td>
                          <td><input type="text" name="pincode" class="textfield"/></td>
                        </tr>
                        <tr>
                          <td class="style13">Contact No</td>
                          <td><input type="text" name="phoneno" class="textfield"/></td>
                        </tr>
                        <tr>
                          <td class="style13">Email</td>
                          <td><input type="text" name="email" class="textfield"/></td>
                        </tr>
                        <tr>
                          <td><span class="style13">Login Name</span></td>
                          <td><input type="text" name="loginname" />                          </td>
                        </tr>
                        <tr>
                          <td><span class="style13">Password</span></td>
                          <td><input name="password" type="password" id="password" />                          </td>
                        </tr>
                        <tr>
                          <td><span class="style13"> Secret Question </span></td>
                          <td><select name="squest">
                              <option value="1">What is your favorite pastime?</option>
                              <option value="2">Who your childhood hero?</option>
                              <option value="3">What is the name of your first school?</option>
                              <option value="4">Where did you meet your spouse?</option>
                              <option value="5">What is your favorite sports team?</option>
                              <option value="6">What is your father's middle name?</option>
                              <option value="7">What was your high school mascot?</option>
                              <option value="8">What make was your first car or bike?</option>
                              <option value="9">What is your pet's name?</option>
                          </select></td>
                        </tr>
                        <tr>
                          <td colspan="2"><span class="style3"><strong>
                          <input type="checkbox" name="ch" value="1" onclick="check(register)" />
                          <span class="style10"> Own Question </span></strong></span></td>
                        </tr>
                        <tr>
                          <td><span class="style13">Own Question</span></td>
                          <td><input type="text" name="ownquest" disabled="disabled" />                          </td>
                        </tr>
                        <tr>
                          <td><span class="style13">Secret Answer</span></td>
                          <td><input name="sanswer" type="text" /></td>
                        </tr>
                        <tr>
                          <td height="11" colspan="2"></td>
                        </tr>
                        <tr>
                          <td colspan="2"><div align="center">
                              <input name="Input" type="submit" value="Register" />
                          </div></td>
                        </tr>
                      </table>
                    </form>
                    <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("f");
  
 
  frmvalidator.addValidation("fname","req","Please enter your fname");
  frmvalidator.addValidation("fname","maxlen=20",	"Max length for fname is 20");
  frmvalidator.addValidation("fname","alpha"," fname Alphabetic chars only");
  
  frmvalidator.addValidation("lname","req","Please enter your lname");
  frmvalidator.addValidation("lname","maxlen=20","Max length is 20");
  frmvalidator.addValidation("lname","alpha"," lname Alphabetic chars only");
  
  
   frmvalidator.addValidation("bdate","req","Please enter your DOB"); 
  
  
  frmvalidator.addValidation("email","maxlen=50");
  frmvalidator.addValidation("email","req");
  frmvalidator.addValidation("email","email");
      
   frmvalidator.addValidation("hno","req","Please enter your House Number");
   
   frmvalidator.addValidation("street","req","Please enter your Street Number");
  
   frmvalidator.addValidation("phoneno","req");
  
  frmvalidator.addValidation("phoneno","maxlen=50");
  frmvalidator.addValidation("phoneno","numeric");
 frmvalidator.addValidation("phoneno","Phone");
   
   frmvalidator.addValidation("city","req","Please enter your city Name");
  
   frmvalidator.addValidation("country","req","Please enter your Country Name");
   frmvalidator.addValidation("pincode","req","Please enter your pin Number");
   
   frmvalidator.addValidation("loginname","req","Please enter your Username");
   frmvalidator.addValidation("password","req","Please enter your Password");
  
   frmvalidator.addValidation("sanswer","req","Please enter your Answer");
   frmvalidator.addValidation("squest","dontselect=0");
   
    
 </script>
 
					</fieldset>
				
			
		      </td>
          </tr>
        </table>
</div>
	  </div>
		
  </div>
</div>
<div id="footer">
	
</div>
</body>
</html>
