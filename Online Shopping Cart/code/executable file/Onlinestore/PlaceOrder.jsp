<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.crsm.model.Brand,com.dts.crsm.dao.BrandDAO,com.dts.core.util.CoreHash,java.util.*"%>
<%@ page import="com.dts.crsm.dao.*,com.dts.crsm.model.*,com.dts.core.util.*,java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'PlaceOrder.jsp' starting page</title>
    
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
    String status = "status=Order Not Placed";
     try
     {
       
        // String brandid[] = request.getParameterValues("brandid");
         String categoryid[] = request.getParameterValues("categoryid");
         String itemid[] = request.getParameterValues("itemid");
         
         String quantity[] = request.getParameterValues("quantity");
         String price[] = request.getParameterValues("price");
         
         Orders singleOrders = null;
         Orders totalOrders = new Orders();
         CoreHash aCoreHash = new CoreHash();
         System.out.println("This is Application--1  "+categoryid.length);
         try
         {
         	for(int i=1; i<categoryid.length;i++)
         	{
            	singleOrders = new Orders();
            
           		// singleOrders.setBrandid(Integer.parseInt(brandid[i]));
            	singleOrders.setCategoryid(Integer.parseInt(categoryid[i]));
            	System.out.println("categoryid"+categoryid[i]);
            	singleOrders.setItemid(Integer.parseInt(itemid[i]));
            	System.out.println("itemid"+itemid[i]);
            	singleOrders.setQuantity(Integer.parseInt(quantity[i]));
            	System.out.println("quantity"+quantity[i]);
            	singleOrders.setPrice(Float.parseFloat(price[i]));
            	System.out.println("price"+price[i]);
            System.out.println("This is Application alfjasfljsl adsjflkas--- categoryid"+categoryid[i]+"Itemid"+itemid[i]+"quantityid"+quantity[i]);	
          	    aCoreHash.put(new Integer(i),singleOrders);
         	}
         }
         catch(ArrayIndexOutOfBoundsException aiob)
         {
         aiob.printStackTrace();
             LoggerManager.writeLogWarning(aiob);
         }
         
         double total = Double.parseDouble(request.getParameter("total"));
         
         System.out.println("This is asdf alkdfjlas sdla alsflasj---2");
         
         totalOrders.setTotalamount(total);
         totalOrders.setLoginname((String)session.getAttribute("user"));
         totalOrders.setOrderDate(DateWrapper.parseDate(new Date()));
         totalOrders.setStatus("Pending");
         
         boolean flag = new OrdersDAO().placeTotalOrder(totalOrders, aCoreHash);
         
         if(flag)
         {
             status = "status=Order Placed";
             session.removeAttribute("cart");
             session.removeAttribute("nci");
         }
     }
     catch(Exception e)
     {
        LoggerManager.writeLogWarning(e);
     }
     response.sendRedirect("UserSearch.jsp?"+status);
     %>
  </body>
</html>
