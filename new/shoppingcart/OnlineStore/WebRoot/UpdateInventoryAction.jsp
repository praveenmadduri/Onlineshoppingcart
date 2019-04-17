
<%@ page import="com.dts.crsm.dao.InventoryDAO,com.dts.core.util.LoggerManager"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'DeleteBrandAction.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>
  
  <body>
     <%
     String target="ViewInventorybyBrand.jsp?header=list";
      try{
            InventoryDAO aInventorydao = new InventoryDAO();
            String bci = "";
            String brandid = "";
            String categoryid = "";
            String itemid = "";
            for(int i=1;request.getParameter("ch"+i)!=null;i++)
            {
               System.out.println("---"+request.getParameter("ch"+i)); 
            }
            String ch[] = request.getParameterValues("ch");
            
            for(int i=1;i<ch.length;i++)
            {
                aInventorydao.updateInventory(Integer.parseInt(ch[i]));
            }
         }
         catch(Exception e)
         {
           LoggerManager.writeLogWarning(e);
         }
         RequestDispatcher rd = request.getRequestDispatcher(target);
         rd.forward(request,response);
            
    
    
     %>
  </body>
</html>
