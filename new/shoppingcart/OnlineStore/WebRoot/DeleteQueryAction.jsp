
<%@ page import="com.dts.crsm.dao.*,com.dts.core.util.LoggerManager"%>
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
     String target="ViewQueryStatus.jsp?header=list";
      try{
            QueryDAO aQuerydao = new QueryDAO();
            String ch[] = request.getParameterValues("ch");
            System.out.println("ch[]="+ch.length);
            for(int i=0;i<ch.length;i++)
            {System.out.println("ch value"+ch[i]);
                aQuerydao.deleteQuery(Integer.parseInt(ch[i])); 
            }
         }
         catch(Exception e)
         {
         e.printStackTrace();
           LoggerManager.writeLogWarning(e);
         }
         RequestDispatcher rd = request.getRequestDispatcher(target);
         rd.forward(request,response);
            
    
    
     %>
  </body>
</html>
