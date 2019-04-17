
<%@ page import="com.dts.dae.model.*,com.dts.dae.dao.*,com.dts.core.util.CoreHash,java.util.*"%>
<%@ page import="com.dts.crsm.dao.*,com.dts.crsm.model.*,com.dts.core.util.*,java.util.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head>
<%--<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">--%>


<title> Online Shopping Mall </title>
<%--<meta name="Description" content="Event Management Institute India, Event Management Courses In India, | national academy of event management and development ">
<meta name="KeyWords" content="Event Management Institute, Event Managemnet Course, Event Management Courses in India - Asia, Event Management Program, Jobs in Events, Career in Events, Event Management College, certified course in events, International event management course.">

 <link href="images_files/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="images_files/slideshow1.js"></script>--%>
 <script language="javascript" src="images_files/slideshow2.js"></script>
<script language="javascript" src="scripts/moveclock.js"></script>


<style type="text/css">
<!--
body {
	background-color: #996666;
}
body,td,th {
	font-size: 18px;
}
-->
</style>
 <script language="javascript">

function validate()
{
   if(document.login.username.value=="" || document.login.password.value=="")
   {
       alert("All Fields are manditory");
	   return false;
   }
   return true;
}
</script>

</head>
<body leftmargin="0" topmargin="0" onLoad="Delay()" marginheight="0" marginwidth="0">
<table style="border: 1px solid rgb(0, 0, 102);" align="center" bgcolor="#ffc03f" border="0" cellpadding="0" cellspacing="0" width="990">
  <tbody><tr>
    <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody><tr> 
          <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tbody><tr> 
                <td><img src="images_files/img_01.jpg" width="215" height="71"></td>
                <td><img src="images_files/img_02.jpg" width="775" height="71"></td>
              </tr>
            </tbody></table></td>
        </tr>
        <tr> 
          <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tbody><tr> 
                <td><img src="images_files/smallerLogo.jpg" width="215" height="140"></td>
                <td><img src="images_files/slide5.jpg" name="SlideShow1" width="775" height="140"></td>
              </tr>
            </tbody></table></td>
        </tr>
        <tr> 
          <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tbody><tr> 
               
                <td background="images_files/img_06.jpg">
               <jsp:include page="customeroptions.jsp"/>
</td>
              </tr>
            </tbody></table></td>
        </tr>
        <tr> 
          <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tbody><tr> 
                <td valign="top" width="192"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody><tr> 
                      <td><img src="images_files/img_07.jpg" width="192" height="17"></td>
                    </tr>
                    <tr> 
                      <td background="images_files/img_11.jpg"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                          <tbody><tr> 
                            <td class="links" style="padding-left: 15px;" height="28"></td>
                          </tr>
                          <tr> 
                            <td class="links" style="padding-left: 15px;" height="28"></td>
                          </tr>
                          <tr> 
                            <td class="links" style="padding-left: 15px;" height="28"></td>
                          </tr>
                          <tr> 
                            <td class="links" style="padding-left: 15px;" height="28"></td>
                          </tr>
						  <tr> 
                            <td class="links" style="padding-left: 15px;" height="28"> 
                             </td>
                          </tr>
                          <tr> 
                            <td class="links" style="padding-left: 15px;" height="28"></td>
                          </tr>
                          <tr> 
                            <td class="links" style="padding-left: 15px;" height="28"></td>
                          </tr>
                          <tr> 
                            <td class="links" style="padding-left: 15px;" height="28"></td>
                          </tr>
                          <tr> 
                            <td class="links" style="padding-left: 15px;" height="28">&nbsp;</td>
                          </tr>
						  <tr> 
                            <td class="links" style="padding-left: 15px;" height="28"></td>
                          </tr>
						  <tr> 
                            <td class="links" style="padding-left: 15px;" height="28"></td>
                          </tr>
                          
                          <tr> 
                            <td class="links" style="padding-left: 15px;" height="28"></td>
                          </tr>
                         
                          
						  
                          <tr> 
                            <td class="links" style="padding-left: 15px;" height="28"></td>
                          </tr>
                          <tr> 
                            <td class="links" style="padding-left: 15px;" height="28"> </td>
                          </tr>
                          <tr> 
                            <td class="links" style="padding-left: 15px;" height="28"><div align="center"><br>
                         
                                <a href="http://www.naemd.com/naemdprospects.pdf"></a></div>
                              <br></td>
                          </tr>
                          <tr> 
                            <td class="links" style="padding-left: 10px;" height="28"><div align="center"><a href="http://www.niemindia.com/" target="_blank"></a></div></td>
                          </tr>
                          
                          <tr> 
                            <td>&nbsp;</td>
                          </tr>
                          
                          <tr> 
                            <td height="213">&nbsp;</td>
                          </tr>
                        </tbody></table></td>
                    </tr>
                    <tr> 
                      <td><img src="images_files/img_23.jpg" width="192" height="13"></td>
                    </tr>
                  </tbody></table></td>
                <td valign="top" width="604"> 
                 <marquee style="padding: 0px; white-space: nowrap;"><H1><font color="Blue">ONLINE SHOPPING MALL</font></H1></marquee>  <p align="center">&nbsp;</p>
               
<p>&nbsp;</p><font color="white"><b>  Export to :</b> <a href="ExportXLS" target="_blank"><font color="white" size="2"><b>XLS</font></a></font>
               


                  <p align="center"> 
                  <form name="f" method="post" action="DeleteBrandAction.jsp">
           <%
        try
        {String report="";
        report+="  <table width=0 border=0 align=center>                     <tr>                    <td width=79 bgcolor=#39552D><div align=center class=style19><span class=style4>Order ID</span></div></td>                    <td width=109 bgcolor=#39552D><div align=center class=style19><span class=style4>LoginName</span></div></td>                    <td width=104 bgcolor=#39552D><div align=center class=style19><span class=style4>Order Date</span></div></td>                    <td width=111 bgcolor=#39552D><div align=center class=style10 style4 style20><strong>Total Amount</strong></div></td>                    <td width=93 bgcolor=#39552D><div align=center class=style10 style4 style20><strong>Status</strong></div></td>                    <td bgcolor=#39552D><div align=center class=style10 style4 style20></div></td>                    </tr>";
      	
      		String loginname = (String)session.getAttribute("user");
      		CoreHash dCoreHash = new CustomerDAO().getCustomers();
      		session.setAttribute("dealers", dCoreHash);
      		CoreHash aCoreHash = (CoreHash)request.getAttribute("viewCoreHash");
      		session.setAttribute("tpage", "UpdateCustomerOrder.jsp");
      		if(!aCoreHash.isEmpty())
      		{
      		     Enumeration enu = aCoreHash.elements();
      		     Orders aOrder = null;   
       %>
                      <div align="left">
                      <br/>
		        <table width="0" border="0" align="center">
                     <tr>
                    <td width="79" bgcolor="#39552D"><div align="center" class="style19"><span class="style4">Order ID</span></div></td>
                    <td width="109" bgcolor="#39552D"><div align="center" class="style19"><span class="style4">LoginName</span></div></td>
                    <td width="104" bgcolor="#39552D"><div align="center" class="style19"><span class="style4">Order Date</span></div></td>
                    <td width="111" bgcolor="#39552D"><div align="center" class="style10 style4 style20"><strong>Total Amount</strong></div></td>
                    
                    
                    </tr>
             <%
			     double price = 0;
                 while(enu.hasMoreElements())
      		     {
      		           aOrder = (Orders)enu.nextElement(); 
					   price = aOrder.getPrice();
					    report+="  <tr><td bgcolor=#DDEAD7><div align=center><span class=style14>"+(aOrder.getOrderID())+"</a></span></div></td>                    <td bgcolor=#DDEAD7><div align=center><strong>"+(aOrder.getLoginname())+"</strong></div></td>                    <td bgcolor=#DDEAD7><div align=center><span class=style14>"+DateWrapper.parseDate(aOrder.getOrderDate1())+"</span></div></td>                    <td bgcolor=#DDEAD7><div align=center><span class=style14>"+(aOrder.getTotalamount())+"</span></div></td>                    <td bgcolor=#DDEAD7><div align=center class=style14>"+(aOrder.getStatus())+"</div></td></tr>";
         
              %>     
                  <tr>
                    <td bgcolor="#DDEAD7"><div align="center"><span class="style14"><a href="ViewCustomerOrderDetails.jsp?orderid=<%=(aOrder.getOrderID())%>"><%=(aOrder.getOrderID())%></a></span></div></td>
                    <td bgcolor="#DDEAD7"><div align="center"><strong><%=(aOrder.getLoginname())%></strong></div></td>
                    <td bgcolor="#DDEAD7"><div align="center"><span class="style14"><%=DateWrapper.parseDate(aOrder.getOrderDate1())%></span></div></td>
                    <td bgcolor="#DDEAD7"><div align="center"><span class="style14"><%=(aOrder.getTotalamount())%></span></div></td>
                     </tr>
                  <%}report+="</table>";
                               session.setAttribute("Report",report);
      		%>
      	  </table> 
             </div>
             <%}else{ %>
                      <div align="center" class="style21">No Orders Placed</div>
                      <%} }
      	catch(Exception e)
      	{
      	   LoggerManager.writeLogWarning(e);
      	} %>
          
        
               </form></td>
                <td valign="top" width="194"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody><tr> 
                      <td><img src="images_files/img_09.jpg" width="194" height="15"></td>
                    </tr>
                    <tr> 
                      <td background="images_files/img_10.jpg"><table border="0" cellpadding="0" cellspacing="0" width="100%">
                          <tbody><tr> 
                            <td height="30"><div align="center"><a href="http://www.naemd.com/placements.htm"></a></div></td>
                          </tr>
                         <tr> 
                            <td align="center" valign="top" width="194" height="450"><marquee direction="down" align="middle" width="106" height="450" style="padding: 450px 0pt;">
                              <img src="images_files/1.jpg" width="106" height="160"><img src="images_files/2.jpg"><img src="images_files/3.jpg" width="106" height="160"><img src="images_files/4.jpg" width="106" height="160"><img src="images_files/5.jpg"><img src="images_files/6.jpg" width="106" height="160"><img src="images_files/7.jpg" width="106" height="160"><img src="images_files/8.jpg"><img src="images_files/9.jpg" width="106" height="160"><img src="images_files/10.jpg"><img src="images_files/11.jpg" width="106" height="160"><img src="images_files/12.jpg"><img src="images_files/13.jpg" width="106" height="160"><img src="images_files/14.jpg" width="106" height="160"><img src="images_files/15.jpg"><img src="images_files/16.jpg"><img src="images_files/17.jpg"><img src="images_files/18.jpg"><img src="images_files/19.jpg"><img src="images_files/20.jpg"><img src="images_files/21.jpg"><img src="images_files/22.jpg"><img src="images_files/23.jpg"><img src="images_files/24.jpg"> 
                              </marquee></td>
                             
                          </tr>
                          <tr> 
                            <td>&nbsp;</td>
                          </tr>
                          <tr> 
                            <td height="40"><div align="center"><font color="#000000" size="4" face="Geneva, Arial, Helvetica, sans-serif"><strong>In-house 
                                Events</strong></font></div></td>
                          </tr>
                          <tr>
						    <td><div align="left"><img src="images_files/joses.jpg" width="170" height="101" hspace="10"></div></td>
						  </tr>
						  <tr> 
                            <td class="heading" height="40"><div align="center"><strong><font color="#ffffff"> 
                                </font></strong></div></td>
                          </tr>
                          <tr> 
                            <td><table border="0" cellpadding="2" cellspacing="2" width="100%">
                                <tbody><tr> 
                                  <td><div align="center"><a href="http://www.naemd.com/download/CI_Form.pdf" target="_blank"></a></div></td>
                                  <td><div align="left"><a href="http://www.naemd.com/download/MMU_Form.pdf" target="_blank"></a></div></td>
                                </tr>
                              </tbody></table></td>
                          </tr>
                         
                          <tr> 
                            <td height="82">&nbsp;</td>
                          </tr>
                        </tbody></table></td>
                    </tr>
                    <tr> 
                      <td><img src="images_files/img_24.jpg" width="194" height="13"></td>
                    </tr>
                  </tbody></table></td>
              </tr>
			  
              <tr> 
                <td colspan="3" bordercolor="#000000" valign="top"><div align="center"> 
                 
                 
<!-- SiteSearch Google -->
                </div></td>
              </tr>
              <tr>
                <td colspan="3" bordercolor="#000000" align="center" valign="top">
                
<!-- SiteSearch Google -->

</td>
              </tr>
            </tbody></table></td>
        </tr>
        <tr> 
		<td>
		<table bgcolor="#ff7e00" width="100%">
		<tbody><tr bgcolor="#ff7e00">
          <td bgcolor="#ff7e00" width="100%" height="30"><div align="center"><font color="#ffffff" size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Copyright 
              © 2008 naemd.com, Inc. All right reserved.</strong></font></div></td>
			  <td><img src="images_files/xml.jpg" usemap="#Map" border="0" width="40" height="30"></td></tr></tbody></table></td>
        </tr>
       
      </tbody></table>
</td>
  </tr>
</tbody></table>



</body></html>