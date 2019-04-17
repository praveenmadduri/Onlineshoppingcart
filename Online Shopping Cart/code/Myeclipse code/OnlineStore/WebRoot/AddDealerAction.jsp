<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.dts.dae.dao.ProfileDAO,com.dts.dae.model.Profile"%>
<%@page import="com.dts.core.util.LoggerManager"%> 
<%
 	String path = request.getContextPath();
 String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'RegisterAction.jsp' starting page</title>

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
		<br>
		<%
			String target="AdminHome.jsp?regs=Registration Failed"; 
				try{
				 Profile rb = new Profile(); 
		        rb.setFirstName(request.getParameter("fname")); 
		        rb.setLastName(request.getParameter("lname")); 
		        rb.setBirthDate(request.getParameter("bdate")); 
		        rb.setHno(request.getParameter("hno"));
		        rb.setStreet(request.getParameter("street"));
		        rb.setCity(request.getParameter("city")); 
		        rb.setState(request.getParameter("state")); 
		        rb.setCountry(request.getParameter("country"));
		        rb.setPincode(request.getParameter("pincode"));
		        rb.setPhoneNo(request.getParameter("phoneno"));
		        rb.setEmail(request.getParameter("email")); 
		        rb.setStatus(1); 
		        rb.setFirstLogin(0); 
		        rb.setLoginID(request.getParameter("loginname")); 
		        rb.setLoginType("dealer"); 
		        rb.setPassword(request.getParameter("password")); 
		        int questid=0; 
		        if(request.getParameter("ch")!=null) 
		        { 
		            rb.setSecretQuestionID(questid); 
		            rb.setOwnSecretQuestion(request.getParameter("ownquest")); 
		        } 
		        else 
		        { 
		            questid=Integer.parseInt(request.getParameter("squest")); 
		            rb.setSecretQuestionID(questid); 
		            rb.setOwnSecretQuestion("Not Mentioned"); 
		        } 
		        rb.setSecretAnswer(request.getParameter("sanswer")); 
		        rb.setLocale(request.getLocale().toString()); 
		        boolean flag=new ProfileDAO().registration(rb);
		        
		        if(flag) 
		           target = "AdminHome.jsp?ls=Registration Success"; 
		        else  
		            target = "AdminHome.jsp?regs=Registration Failed"; 
		            }catch(Exception e)
		            {
		               LoggerManager.writeLogInfo(e);
		            }
		        response.sendRedirect(target);
		%>
	</body>
</html>
