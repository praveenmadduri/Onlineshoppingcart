<%@ page import="com.dts.crsm.model.Item,com.dts.crsm.dao.ItemDAO,com.dts.core.util.CoreHash,com.dts.core.util.LoggerManager,java.util.*"%>
<%@  page import="com.dts.crsm.model.Category, com.dts.crsm.dao.CategoryDAO,com.dts.core.util.CoreList"%>
<%@  page import="com.dts.crsm.model.Brand, com.dts.crsm.dao.BrandDAO,com.dts.crsm.model.Inventory, com.dts.crsm.dao.InventoryDAO"%>
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
               <jsp:include page="Adminoptions.jsp"/>
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
                 <marquee><H1><font color="Blue">ONLINE SHOPPING MALL</font></H1></marquee>  <p align="center">&nbsp;</p>
               


                  <p align="center"> <fieldset>
					<legend><span class="style3">View Inventory by Category</span></legend>
  <br /> 
  <form id="form1" method="post" action="ViewInventorybyCategory.jsp?header=<%=request.getParameter("header")%>" name="inventory">
    <table width="200" border="0" align="center">
      <tr>
        <td width="94"><span class="style3"><strong>Category Name</strong></span></td>
        <td width="90"><label>
          <select name="categoryid" id="select" onchange="javascript:if(document.inventory.categoryid.value==''){alert('select Any Brand');}else{ document.inventory.submit();}">
          <option>--Select--</option>
          <%
		  		try
		  		{
		  		   CoreHash bCoreHash = new CategoryDAO().listCategoryNames();
		  		   Enumeration enu = bCoreHash.keys();
		  		   String select = "";
		  		   int categoryid1 = 0;
		  		   int categoryid = 0;
		  		   if(request.getParameter("categoryid")!=null)
		  		   {
		  		        categoryid1 = Integer.parseInt(request.getParameter("categoryid")); 		    
		  		   }
		  		   while(enu.hasMoreElements())
		  		   {
		  		   		categoryid = Integer.parseInt(enu.nextElement().toString());
		  		   		select = "";
		  		   		if(categoryid==categoryid1)
		  		   		    select = "selected";
		  		   		
		  		   %>
		  		   <option value="<%=categoryid%>" <%=select%>><%=bCoreHash.get(new Integer(categoryid))%></option>  		 
		  		<%}
		  		}
		  		catch(Exception e)
		  		{
		  		   LoggerManager.writeLogWarning(e);
		  		}
		  %>
          </select>
        </label></td>
      </tr>
    </table>
    </form>
  <br />
  <%
        if(request.getParameter("categoryid")!=null) 
        {
    %>
      <form name="f" method="post" action="UDInventoryAction.jsp">
      <input type="hidden" name="page" value="ViewInventorybyCategory.jsp"/>
      <input type="hidden" name="type" value="categoryid"/>
      <input type="hidden" name="value" value="<%=request.getParameter("categoryid")%>"/>
    <table width="" border="0" align="center" bordercolor="#8692E3">
    
      <tr bgcolor="#509C16">
      <%
         String header = request.getParameter("header");
	     String role = (String) session.getAttribute("role");
	      CoreList inCoreList = new CoreList();
	     // CoreHash bCoreHash = new CoreHash();
	      CoreHash cCoreHash = new CoreHash();
	      CoreHash iCoreHash = new CoreHash();
	      
	     try{
             int categoryid = 0;
             int itemid = 0;
             ItemDAO itemdao = new ItemDAO();
             CategoryDAO categorydao = new CategoryDAO();
             BrandDAO branddao = new BrandDAO();
             InventoryDAO inventorydao = new InventoryDAO(); 
             
             inCoreList = inventorydao.InventoryByCategory(Integer.parseInt(request.getParameter("categoryid")));
             iCoreHash = itemdao.listItemNames(); 
             cCoreHash = categorydao.listCategoryNames(); 
           //  bCoreHash = branddao.listBrandNames();
             
             Inventory inventory = new Inventory();
             
             if(!inCoreList.isEmpty())
         	{
         if(header.equals("list") && role.equals("admin"))
         {
       %>
        <td width="18"><div align="center">
          
          <!-- <input type="checkbox" name="ch" id="checkbox" onclick="SetChecked('ch')"/> -->    
        
        </div></td>
        <%
        	}
        %>
<%--        <td width="103"><div align="center" class="style8">Brand</div></td>--%>
        <td width="110"><div align="center" class="style8">Category</div></td>
        <td width="87"><div align="center" class="style8">Item</div></td>
        <td width="64"><div align="center" class="style8">Quantity</div></td>
        <td width="196"><div align="center" class="style8">Price/Item</div></td>
         <%
	  if(header.equals("list"))
	  {
	 %>
        <td width="255"><div align="center" class="style8">New Quantity</div></td>
        <td width="236"><div align="center" class="style8">New Price</div></td>
        <%} %>
      </tr>
          <%
          	Enumeration enu = inCoreList.elements();
          	int quantity = 0;
          	double price = 0;
          			Item item;
          			int brandid = 0;
          			int i=0;
          			while (enu.hasMoreElements()) {
          				inventory = (Inventory) enu.nextElement();
          				itemid = inventory.getItemID();
          				categoryid = inventory.getCategoryID();
          				quantity = inventory.getQuantity();
						price = inventory.getPrice();
						//brandid = inventory.getBrandID();
          		         		
          %>
      <tr bgcolor="#CEC9FA">
      <%
      	String flag = "false";
      				if (header.equals("list")) {
      					flag = "true";
      %>
        <td bgcolor="#C3D7BA"><input name="ch<%=i%>" type="checkbox" id="checkbox2" value="<%=1%>,<%=request.getParameter("categoryid")%>,<%=itemid%>"/></td> <%
 	System.out.println("this is asfasfasdf"+i);
 	}
 %> 
        
        <td bgcolor="#C3D7BA"><div align="center" class="style7"><%=cCoreHash.get(new Integer(request.getParameter("categoryid")))%></div></td> 
        <td bgcolor="#C3D7BA"><div align="center" class="style7"><%=iCoreHash.get(new Integer(itemid))%></div></td>
        <td bgcolor="#C3D7BA"><div align="center"><span class="style7"><%=quantity%></span></div></td>
        <td bgcolor="#C3D7BA"><div align="center"><span class="style7"><%=price%></span></div></td>
         <%
	  if(header.equals("list"))
	  {
	 %>
        <td bgcolor="#C3D7BA"><div align="center"><span class="style3"><strong>+</strong></span>
              <input name="quantity<%=i%>" type="text" value="<%=quantity%>" size="10" />
        </div></td>
        <td bgcolor="#C3D7BA"><div align="center">
              <input name="price<%=i%>" type="text" value="<%=price%>" size="10" />
        </div></td>
        <%} %>
      </tr>
      <%i++;
      	}%> <input type="hidden" name="count" value="<%=i%>"/>
      		<%} else {
      %>
         <tr><td height="24" colspan="8"><div align="center" class="style3"><strong>No Records Found</strong></div></td>
         </tr>
      <%
      	}
      	} catch (Exception e) {
      		LoggerManager.writeLogWarning(e);
      	}
      	if (header.equals("list")) {
      %>
      <tr>
        <td colspan="8"><div align="center">
         
          <input type="button" name="button" id="button" value="Add New" onClick="javascript:location.href='DispatchController?page=AddNewInventory.jsp'"/>
          &nbsp;
          <%if(!inCoreList.isEmpty())
         	{ %>
          <input type="submit" name="button" id="button2" value="Update"/>  &nbsp; &nbsp;<input type="submit" name="button" id="button2" value="Delete"/>
          <%} %>
        </div></td>
      </tr>
       <%
       	}
       %>
    </table>
   
  </form>
  <%} %>
					
				</td>
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
                            <td align="center" valign="top" width="194" height="450"><marquee direction="down" align="middle" width="106" height="450">
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