<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ page import="com.dts.crsm.model.Item,com.dts.crsm.dao.ItemDAO,com.dts.core.util.CoreHash,com.dts.core.util.LoggerManager,java.util.*"%>
<%@  page import="com.dts.crsm.model.Category, com.dts.crsm.dao.CategoryDAO,com.dts.core.util.CoreList"%>
<%@  page import="com.dts.crsm.model.Brand, com.dts.crsm.dao.BrandDAO,com.dts.crsm.model.Inventory, com.dts.crsm.dao.InventoryDAO"%>
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
.style7 {color: #3F007D; font-size: x-small; }
.style8 {color: #000000; font-weight: bold; }
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
  <table width="654" border="0">
<tr>
                    <td width="648">
	  <fieldset>
					<legend><span class="style3">View Inventory by Category</span></legend>
  <br /> 
  <form id="form1" method="post" action="userViewInventorybyCategory.jsp?header=<%=request.getParameter("header")%>" name="inventory">
    <table width="200" border="0" align="center">
      <tr>
        <td width="94"><span class="style3"><strong>Category Name</strong></span></td>
        <td width="90"><label>
          <select name="categoryid" id="select" onchange="javascript:if(document.inventory.categoryid.value==''){alert('select Any Brand');}else{ document.inventory.submit();}">
          <option>--Select--</option>
          <%
		  		try
		  		{
		  		   CoreHash bCoreHash = new CategoryDAO().listCategoryNames();
		  		   Enumeration enu = bCoreHash.keys();
		  		   String select = "";
		  		   int categoryid1 = 0;
		  		   int categoryid = 0;
		  		   if(request.getParameter("categoryid")!=null)
		  		   {
		  		        categoryid1 = Integer.parseInt(request.getParameter("categoryid")); 		    
		  		   }
		  		   while(enu.hasMoreElements())
		  		   {
		  		   		categoryid = Integer.parseInt(enu.nextElement().toString());
		  		   		select = "";
		  		   		if(categoryid==categoryid1)
		  		   		    select = "selected";
		  		   		
		  		   %>
		  		   <option value="<%=categoryid%>" <%=select%>><%=bCoreHash.get(new Integer(categoryid))%></option>  		 
		  		<%}
		  		}
		  		catch(Exception e)
		  		{
		  		   LoggerManager.writeLogWarning(e);
		  		}
		  %>
          </select>
        </label></td>
      </tr>
    </table>
    </form>
  <br />
  <%
        if(request.getParameter("categoryid")!=null) 
        {
    %>
      <form name="f" method="post" action="UDInventoryAction.jsp">
      <input type="hidden" name="page" value="userViewInventorybyCategory.jsp"/>
      <input type="hidden" name="type" value="categoryid"/>
      <input type="hidden" name="value" value="<%=request.getParameter("categoryid")%>"/>
    <table width="" border="0" align="center" bordercolor="#8692E3">
    
      <tr bgcolor="#509C16">
      <%
         String header = request.getParameter("header");
	     String role = (String) session.getAttribute("role");
	      CoreList inCoreList = new CoreList();
	      CoreHash bCoreHash = new CoreHash();
	      CoreHash cCoreHash = new CoreHash();
	      CoreHash iCoreHash = new CoreHash();
	      
	     try{
             int categoryid = 0;
             int itemid = 0;
             ItemDAO itemdao = new ItemDAO();
             CategoryDAO categorydao = new CategoryDAO();
             BrandDAO branddao = new BrandDAO();
             InventoryDAO inventorydao = new InventoryDAO(); 
             
             inCoreList = inventorydao.InventoryByCategory(Integer.parseInt(request.getParameter("categoryid")));
             iCoreHash = itemdao.listItemNames(); 
             cCoreHash = categorydao.listCategoryNames(); 
             bCoreHash = branddao.listBrandNames();
             
             Inventory inventory = new Inventory();
             
             if(!inCoreList.isEmpty())
         	{
        
        %>
        <td width="103"><div align="center" class="style8">Brand</div></td>
        <td width="110"><div align="center" class="style8">Category</div></td>
        <td width="87"><div align="center" class="style8">Item</div></td>
        <td width="64"><div align="center" class="style8">Quantity</div></td>
        <td width="196"><div align="center" class="style8">Price/Item</div></td>
        
      </tr>
          <%
          	Enumeration enu = inCoreList.elements();
          	int quantity = 0;
          	double price = 0;
          			Item item;
          			int brandid = 0;
          			int i=0;
          			while (enu.hasMoreElements()) {
          				inventory = (Inventory) enu.nextElement();
          				itemid = inventory.getItemID();
          				categoryid = inventory.getCategoryID();
          				quantity = inventory.getQuantity();
						price = inventory.getPrice();
						brandid = inventory.getBrandID();
          		         		
          %>
      <tr bgcolor="#CEC9FA">
      
        <td bgcolor="#C3D7BA"><div align="center" class="style7"><%=bCoreHash.get(new Integer(brandid))%></div></td> 
        <td bgcolor="#C3D7BA"><div align="center" class="style7"><%=cCoreHash.get(new Integer(request.getParameter("categoryid")))%></div></td> 
        <td bgcolor="#C3D7BA"><div align="center" class="style7"><%=iCoreHash.get(new Integer(itemid))%></div></td>
        <td bgcolor="#C3D7BA"><div align="center"><span class="style7"><%=quantity%></span></div></td>
        <td bgcolor="#C3D7BA"><div align="center"><span class="style7"><%=price%></span></div></td>
        
      </tr>
      <%i++;
      	}%> <input type="hidden" name="count" value="<%=i%>"/>
      		<%} else {
      %>
         <tr><td height="24" colspan="8"><div align="center" class="style3"><strong>No Records Found</strong></div></td>
         </tr>
      <%
      	}
      	} catch (Exception e) {
      		LoggerManager.writeLogWarning(e);
      	}
      	
       %>
    </table>
   
  </form>
  <%} %>
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
