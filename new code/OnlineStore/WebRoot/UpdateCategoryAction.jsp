<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="com.dts.crsm.model.Category,com.dts.crsm.dao.CategoryDAO"%>
<%@page import="com.dts.core.util.LoggerManager;"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AddBrandAction.jsp' starting page</title>
    
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
            int categoryid = Integer.parseInt(request.getParameter("categoryid"));
        	String categoryname = request.getParameter("categoryname");
        	String desc = request.getParameter("desc");
        
        	Category aCategory = new Category();
        	aCategory.setCategoryID(categoryid);
        	aCategory.setCategoryName(categoryname);
        	aCategory.setCategoryDesc(desc);
        
        	CategoryDAO aCategoryDAO = new CategoryDAO();
        	boolean flag = aCategoryDAO.updateCategory(aCategory);
        }
        catch(Exception e)
        {
           LoggerManager.writeLogWarning(e);
        }
        	RequestDispatcher rd = request.getRequestDispatcher("ViewCategories.jsp?header=list");
        	rd.forward(request,response);
        
      %>
  </body>
</html>
