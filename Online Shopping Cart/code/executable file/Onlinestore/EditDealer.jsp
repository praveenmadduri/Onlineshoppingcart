<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page import="com.dts.dae.model.*,com.dts.dae.dao.*,com.dts.core.util.CoreHash,java.util.*"%>
<%@page import="com.dts.core.util.DateWrapper"%>
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
  <%
     String dealerlogin = request.getParameter("id");
     CoreHash dCoreHash = (CoreHash)session.getAttribute("dealers");
     Profile profile = (Profile)dCoreHash.get(dealerlogin); 
%>
  <table width="654" border="0">
<tr>
                    <td width="648">
	  <fieldset>
					<legend><span class="style3">Update Dealer</span></legend>
                    <br />
                    <form name="f" method="post" action="UpdateDealerAction.jsp">
                    <input type="hidden" name="loginname" value="<%=dealerlogin%>"/>
                    <input type="hidden" name="tpage" value="<%=request.getParameter("tpage")%>"/>
                      <table border="0" align="center">
                        <tr>
                          <td class="style3 tiny"><span class="style3"><strong>First Name </strong></span></td>
                          <td><input type="text" name="fname" class="textfield" value="<%=profile.getFirstName() %>"/>                          </td>
                        </tr>
                        <tr>
                          <td><span class="style13">Last Name </span></td>
                          <td><input type="text" name="lname" class="textfield" value="<%=profile.getLastName() %>"/>                          </td>
                        </tr>
                        <tr>
                          <td><span class="style13">Birth Date </span></td>
                          <td><input type="text" name="bdate" readonly="readonly" value="<%=DateWrapper.parseDate(profile.getBirthDate1())%>"/>
                            <a href="javascript:show_calendar('document.register.bdate', document.register.bdate.value);"> <img src="images/cal.gif" alt="a" width="18" height="18" border="0"/></a> </td>
                        </tr>
                        <tr>
                          <td class="style13">House No</td>
                          <td><input type="text" name="hno" class="textfield" value="<%=profile.getHno() %>"/></td>
                        </tr>
                        <tr>
                          <td class="style13">Street</td>
                          <td><input type="text" name="street" class="textfield" value="<%=profile.getStreet() %>"/></td>
                        </tr>
                        <tr>
                          <td><span class="style13">City</span></td>
                          <td><select name="city">
                              <option><%=profile.getCity()%></option>
                              <option>Hyderabad</option>
                              <option>Mumbai</option>
                            </select>                          </td>
                        </tr>
                        <tr>
                          <td><span class="style13">State</span></td>
                          <td><select name="state">
                              <option><%=profile.getState() %>
                              <option>Andhra pradesh</option>
                              <option>Maharashtra</option>
                            </select>                          </td>
                        </tr>
                        <tr>
                          <td><span class="style13">Country</span></td>
                          <td><select name="country">
                            <option><%=profile.getCountry() %></option>
                              <option>India</option>
                            </select>                          </td>
                        </tr>
                        <tr>
                          <td class="style13">Pincode</td>
                          <td><input type="text" name="pincode" class="textfield" value="<%=profile.getPincode() %>"/></td>
                        </tr>
                        <tr>
                          <td class="style13">Contact No</td>
                          <td><input type="text" name="phoneno" class="textfield" value="<%=profile.getPhoneNo() %>"/></td>
                        </tr>
                        <tr>
                          <td class="style13">Email</td>
                          <td><input type="text" name="email" class="textfield" value="<%=profile.getEmail() %>"/></td>
                        </tr>
                        <tr>
                          <td height="11" colspan="2"></td>
                        </tr>
                        <tr>
                          <td colspan="2"><div align="center">
                              <input name="Input" type="submit" value="Update" />&nbsp;<input name="Input" type="button" value="Back" onclick="javascript:history.back(-1);"/>
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
   frmvalidator.addValidation("state","req","Please enter your State Name");
   frmvalidator.addValidation("country","req","Please enter your Country Name");
   frmvalidator.addValidation("pincode","req","Please enter your pin Number");
   
     
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
