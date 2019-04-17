<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@  page import="com.dts.crsm.model.*, com.dts.crsm.dao.*,com.dts.core.util.*,java.util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SendQuery.jsp' starting page</title>
    
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
         try
         {
             String loginname = request.getParameter("from");
             String date = DateWrapper.parseDate(new Date());
             String query = request.getParameter("query");
             
             Query aQuery = new Query();
             aQuery.setCustomerID(loginname);
             aQuery.setQueryDate(date);
             aQuery.setDescription(query);
             
             new QueryDAO().sendQuery(aQuery);
         }
         catch(Exception e)
         {
            LoggerManager.writeLogWarning(e);
         }
         response.sendRedirect("ViewQueryStatus.jsp");
    %>
  </body>
</html>
