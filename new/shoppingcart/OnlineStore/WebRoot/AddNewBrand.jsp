<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page import="com.dts.crsm.model.Brand,com.dts.crsm.dao.BrandDAO,com.dts.core.util.CoreHash,java.util.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Online Shopping Mall</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="default.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style3 {color: #000000}
.style9 {font-size: 12px; font-weight: bold; color: #000000; }
-->
</style>

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
                    <form name="f" method="post" action="AddBrandAction.jsp">
 
    <table width="244" border="0" align="center" bordercolor="#8692E3">
          
      <tr>
        <td width="89"><span class="style9">Brand Name</span></td>
        <td width="145"><label class="textfield">
          <input type="text" name="brandname" id="textfield" />
        </label></td>
      </tr>
      <tr>
        <td><span class="style9">Description</span></td>
        <td><label>
          <input type="text" name="desc" id="textfield2" />
        </label></td>
      </tr>
      <tr>
        <td height="7"></td>
        <td></td>
      </tr>
      <tr>
        <td colspan="2"><div align="center">
         
          <input type="submit" name="button" id="button" value="Add"/>
          &nbsp;</div></td>
      </tr>
    </table>
  </form>
  <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("f");
  
 
  frmvalidator.addValidation("brandname","req","Please enter your Brand Name");
  frmvalidator.addValidation("brandname","maxlen=20",	"Max length for BrandName is 20");
  frmvalidator.addValidation("brandname","alpha"," First Name Alphabetic chars only");
  
  frmvalidator.addValidation("desc","req","Please enter description");
  
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
