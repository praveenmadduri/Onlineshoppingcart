<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.crsm.dao.InventoryDAO,com.dts.crsm.model.Inventory,com.dts.core.util.LoggerManager"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AddNewInventoryAction.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
  <%
      String target = "ViewInventorybyBrand.jsp?header=list";
      try
      {
         // int brandid = Integer.parseInt(request.getParameter("brandid"));
          int categoryid = Integer.parseInt(request.getParameter("categoryid"));
          int itemid = Integer.parseInt(request.getParameter("itemid"));
          int quantity = Integer.parseInt(request.getParameter("quantity"));
          double price = Double.parseDouble(request.getParameter("price"));
          
          Inventory inventory = new Inventory();
          
         // inventory.setBrandID(brandid);
          inventory.setCategoryID(categoryid);
          inventory.setItemID(itemid);
          inventory.setQuantity(quantity);
          inventory.setPrice(price);
          
          boolean flag = new InventoryDAO().addInventory(inventory);
          }
          catch(Exception e)
          {e.printStackTrace();
             LoggerManager.writeLogWarning(e);
          }
          
          RequestDispatcher rd = request.getRequestDispatcher(target);
          rd.forward(request,response);                
   %>
    
  </body>
</html>
