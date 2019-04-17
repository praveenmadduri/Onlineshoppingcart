<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page import="com.dts.crsm.model.Brand,com.dts.crsm.dao.BrandDAO,com.dts.core.util.CoreHash,java.util.*"%>
<%@ page import="com.dts.crsm.dao.*,com.dts.crsm.model.*,com.dts.core.util.*,java.util.*" %>
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
.style10 {color: #FFFFFF}
.style14 {font-weight: bold; color: #000000; font-size: 12px; }
.style19 {color: #FFFFFF; font-weight: bold; font-size: 14px; }
.style20 {font-size: 14px}
.style21 {
	color: #000000;
	font-size: 14px;
	font-weight: bold;
}
-->
</style>
<script language="javascript" src="scripts/general.js"></script>
</head>
<body>
<div id="logo">
	<h1><jsp:include page="header.html"/></h1>
	
</div>
<div id="menu">
	<ul>
	
	 <jsp:include page="dealeroptions.jsp"/>  
	  
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
  <table width="643" border="0">
<tr>
                    <td width="648">
	  <fieldset>
					<legend><span class="style3">Placed Orders</span></legend>
                    <div align="center"><form id="form2" method="post" action="UserSearch.jsp" name="search" onSubmit="javascript:if(document.search.brandid.value=='' && document.search.categoryid.value==''&& document.search.itemid.value==''){alert('select Any Search Criteria');}">
                    </form>
                             
              </div>
                    <form name="f" method="post" action="DeleteBrandAction.jsp">
           <%
        try
        {
      		String loginname = (String)session.getAttribute("user");
      		CoreHash aCoreHash = new OrdersDAO().listOrders(loginname);
      		if(!aCoreHash.isEmpty())
      		{
      		     Enumeration enu = aCoreHash.elements();
      		     Orders aOrder = null;   
       %>
                      <div align="left">
                      <br/>
		        <table width="610" border="0" align="center">
                     <tr>
                    <td width="132" bgcolor="#39552D"><div align="center" class="style19"><span class="style4">Order ID</span></div></td>
                    <td width="162" bgcolor="#39552D"><div align="center" class="style19"><span class="style4">Order Date</span></div></td>
                    <td width="176" bgcolor="#39552D"><div align="center" class="style10 style4 style20"><strong>Total Amount</strong></div></td>
                    <td width="122" bgcolor="#39552D"><div align="center" class="style10 style4 style20"><strong>Status</strong></div></td>
                    </tr>
             <%
			     double price = 0;
                 while(enu.hasMoreElements())
      		     {
      		           aOrder = (Orders)enu.nextElement(); 
					   price = aOrder.getPrice();
              %>     
                  <tr>
                    <td bgcolor="#DDEAD7"><div align="center"><span class="style14"><a href="ViewOrderDetails.jsp?orderid=<%=(aOrder.getOrderID())%>"><%=(aOrder.getOrderID())%></a></span></div></td>
                    <td bgcolor="#DDEAD7"><div align="center"><span class="style14"><%=DateWrapper.parseDate(aOrder.getOrderDate1())%></span></div></td>
                    <td bgcolor="#DDEAD7"><div align="center"><span class="style14"><%=(aOrder.getTotalamount())%></span></div></td>
                    <td bgcolor="#DDEAD7"><div align="center" class="style14"><%=(aOrder.getStatus())%></div></td>
                    </tr>
                  <%}
      		%>
      	  </table> 
             </div>
             <%}else{ %>
                      <div align="center" class="style21">No Orders Placed</div>
                      <%} }
      	catch(Exception e)
      	{
      	   LoggerManager.writeLogWarning(e);
      	} %>
          
        
               </form>
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
