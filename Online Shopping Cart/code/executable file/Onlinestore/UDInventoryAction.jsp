
<%@ page import="com.dts.crsm.dao.InventoryDAO,com.dts.crsm.model.Inventory,com.dts.core.util.LoggerManager"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UDInventoryAction.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  
  <body>
     <%
        Inventory inventory = null;
     	String pageexe = request.getParameter("page");
     	String type = request.getParameter("type");
     	String value = request.getParameter("value");
     	String button = request.getParameter("button");
     	String target = pageexe + "?header=list&"+type+"="+value;
     	System.out.println("====="+target);
     	int count = Integer.parseInt(request.getParameter("count")); 
     	try {
     	
     	        InventoryDAO aInventorydao = new InventoryDAO();
     			String ch[] = new String[count];
     			Integer brandid[] = new Integer[count];
     			Integer categoryid[] = new Integer[count];
     			Integer itemid[] = new Integer[count];
     			Integer quantity[] = new Integer[count];
     			Double price[] = new Double[count];
     		
     			for (int i = 0,j=0; i<count; i++) {
     		    	inventory = new Inventory();
     		    	ch[i] =  request.getParameter("ch"+(i));
     		    	if(ch[i]!=null)
     		    	{
     		        	brandid[j] = new Integer(ch[i].substring(0,ch[i].indexOf(",")));
     		        	inventory.setBrandID(brandid[j].intValue());
     		        	categoryid[j] = new Integer(ch[i].substring(ch[i].indexOf(",")+1,ch[i].lastIndexOf(",")));
     		        	inventory.setCategoryID(categoryid[j].intValue());
     		        	itemid[j] = new Integer(ch[i].substring(ch[i].lastIndexOf(",")+1,ch[i].length()));
     		        	inventory.setItemID(itemid[j].intValue());
                 		quantity[j] = new Integer(request.getParameter("quantity"+i));
                 		inventory.setQuantity(quantity[j].intValue());
                		price[j] = new Double(request.getParameter("price"+i));
                		inventory.setPrice(price[j].doubleValue());
                		if(button.equals("Update"))
     	                {
                			aInventorydao.updateInventory(inventory);
                		}
                		else	
                		{
                		    aInventorydao.deleteInventory(inventory);
                		}
                		j++;
                	}
     			}
     	} catch (Exception e) {
     	    e.printStackTrace();
     		LoggerManager.writeLogWarning(e);
     	}
     	response.sendRedirect(target);
     	//RequestDispatcher rd = request.getRequestDispatcher(target);
     	//rd.forward(request, response);
     %>
  </body>
</html>
