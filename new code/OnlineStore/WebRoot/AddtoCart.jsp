<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.core.util.*,com.dts.crsm.dao.*,com.dts.crsm.model.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AddtoCart.jsp' starting page</title>
    
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
    
     int categoryid = Integer.parseInt(request.getParameter("categoryid"));
     int itemid = Integer.parseInt(request.getParameter("itemid"));
     
     boolean flag = false;
        
     try
     {
        int count = 0;
        CoreHash aCoreHash = new CoreHash();
        if(session.getAttribute("nci")!=null)
        {
             count = ((Integer)session.getAttribute("nci")).intValue();
             aCoreHash = (CoreHash)session.getAttribute("cart");
        }
           
        Orders aOrder = new Orders();  
       // aOrder.setBrandid(brandid);
        aOrder.setCategoryid(categoryid);
        aOrder.setItemid(itemid);
        
        Integer key = new Integer(categoryid+""+itemid);
       
        if(aCoreHash.put(key,aOrder)==null)
        {
        		count++;
        		flag = true;
        		session.setAttribute("cart", aCoreHash);
		        session.setAttribute("nci",new Integer(count));
        		
        }
              }
      catch(Exception e)
      {
         LoggerManager.writeLogWarning(e);
      }
      
      String status = "";
      
      if(flag)
         status = "Item added to Cart";
      else
         status = "Item already added to cart";   
         
      response.sendRedirect("UserSearch.jsp?categoryid="+categoryid+"&itemid=0&status="+status);
      %>
  </body>
</html>
