
<%@ page import="com.dts.crsm.model.Item,com.dts.crsm.dao.ItemDAO,com.dts.core.util.CoreHash,com.dts.core.util.LoggerManager,java.util.*"%>
<%@  page import="com.dts.crsm.model.*, com.dts.crsm.dao.*,com.dts.core.util.CoreList"%>
<%@  page import="com.dts.crsm.model.Brand, com.dts.crsm.dao.BrandDAO,com.dts.crsm.model.Inventory, com.dts.crsm.dao.InventoryDAO"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head>
<%--<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">--%>


<title> Event Management </title>
<%--<meta name="Description" content="Event Management Institute India, Event Management Courses In India, | national academy of event management and development ">
<meta name="KeyWords" content="Event Management Institute, Event Managemnet Course, Event Management Courses in India - Asia, Event Management Program, Jobs in Events, Career in Events, Event Management College, certified course in events, International event management course.">

 <link href="images_files/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="images_files/slideshow1.js"></script>--%>
 <script language="javascript" src="images_files/slideshow2.js"></script>


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
<script language="javascript" src="scripts/general.js"></script>
<script type="text/javascript">
function calculate(form)
  {
  
  var total="00.00"; 
  var count=0;
     validate(form);
     for(var i=1;document.order.iprice[i]!=null;i++)
     { 
           if(document.order.quantity[i].value<=0)
            {
                alert("Quantity must be greater than Zero");
                document.order.quantity[i].value=1;
            }    
                document.order.price[i].value = (document.order.iprice[i].value)*(document.order.quantity[i].value);
                total=parseFloat(total)+parseFloat(document.order.price[i].value);
                document.order.total.value=total;
                
      }             
  }
function validate(form)
{
   for(var i=1;document.order.iprice[i]!=null;i++)
   {
       if(parseInt(document.order.quantity[i].value) > parseInt(document.order.iquantity[i].value))
       {
            alert("Not sufficient inventory");
            document.order.quantity[i].value = document.order.iquantity[i].value;
           //  calculate(form);
            return false;
       }   
   }
   return true;
}
</script>
</head>



<body onload="calculate()" leftmargin="0" topmargin="0" onLoad="Delay()" marginheight="0" marginwidth="0">
<table style="border: 1px solid rgb(0, 0, 102);" align="center" bgcolor="#ffc03f" border="0" cellpadding="0" cellspacing="0" width="990">
  <tbody><tr>
    <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tbody><tr> 
          <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tbody><tr> 
                <td><img src="images_files/img_01.jpg" width="253" height="71"></td>
                <td><img src="images_files/img_02.jpg" width="775" height="71"></td>
              </tr>
            </tbody></table></td>
        </tr>
        <tr> 
          <td><table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tbody><tr> 
                <td width="23%"><img src="images_files/smallerLogo.jpg" width="240" height="140"></td>
                <td width="77%"><img src="images_files/slide5.jpg" name="SlideShow1" width="775" height="140"></td>
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
                            <td class="links" style="padding-left: 15px;" height="28"><div align="center"><br/>
                              
                                <a href="http://www.naemd.com/naemdprospects.pdf"></a></div>
                              </td>
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
               


                  <p align="center"><fieldset>
					<legend><span class="style3">View Cart Items</span></legend>

  <br />
  
 
      <form  method="post" action="PlaceOrder.jsp" name="order" onSubmit="return validate(order)">
      
    <table width="500" border="0" align="center" bordercolor="#8692E3">
    
      <tr bgcolor="#509C16">
      <%
        
	      CoreList inCoreList = new CoreList();
	     // CoreHash bCoreHash = new CoreHash();
	      CoreHash cCoreHash = new CoreHash();
	      CoreHash iCoreHash = new CoreHash();
	      
	     try{
             int categoryid = 0;
             int itemid = 0;
             ItemDAO itemdao = new ItemDAO();
             CategoryDAO categorydao = new CategoryDAO();
          //   BrandDAO branddao = new BrandDAO();
             InventoryDAO inventorydao = new InventoryDAO(); 
             
             if(session.getAttribute("cart")!=null && !((CoreHash)session.getAttribute("cart")).isEmpty())
         	 {
               Inventory inventory = null;
               iCoreHash = itemdao.listItemNames(); 
               cCoreHash = categorydao.listCategoryNames(); 
              // bCoreHash = branddao.listBrandNames();
               
               Orders order = new Orders(); 
               CoreHash aCoreHash = (CoreHash)session.getAttribute("cart");
               Enumeration enu = aCoreHash.elements();
               
        %>
         <td width="89"><div align="center" class="style8">Category<input type="hidden" name="categoryid" value="0"/></div></td>
        <td width="96"><div align="center" class="style8">Item<input type="hidden" name="itemid" value="0"/></div></td>
        <td width="62"><div  class="style8">Inventory<input name="iquantity" type="hidden" value="0"/></div></td>
        <td width="98"><div  class="style8">Price/Item<input name="iprice" type="hidden" value="0"/></div></td>
	    <td width="61"><div class="style8">Quantity<input name="quantity" type="hidden" value="0"/></div></td>
        <td width="56"><div class="style8">Amount<input name="price" type="hidden" value="0"/></div></td>
        <td width="64"><div class="style8">Remove</div></td>
        </tr>
          <%
          	
          	int quantity = 0;
          	double price = 0;
          			Item item;
          			
          			int i=0;
          			while (enu.hasMoreElements()) 
          			{
          				order = (Orders) enu.nextElement();
          				itemid = order.getItemid();
          				categoryid = order.getCategoryid();
          				
          		        inventory = new InventoryDAO().getInventory(categoryid, itemid);     		
          %>
      <tr bgcolor="#CEC9FA">
      
         
        <td bgcolor="#C3D7BA"><div align="center" class="style7"><input type="hidden" name="categoryid" value="<%=categoryid%>"/><%=cCoreHash.get(new Integer(categoryid))%></div></td> 
        <td bgcolor="#C3D7BA"><div align="center" class="style7"><input type="hidden" name="itemid" value="<%=itemid%>"/><%=iCoreHash.get(new Integer(itemid))%></div></td>
        <td bgcolor="#C3D7BA"><div align="center"><span class="style7"><input name="iquantity" type="text" value="<%=inventory.getQuantity()%>" size="5" readonly/>
        </span></div></td>
        <td bgcolor="#C3D7BA"><div align="center"><span class="style7"><input name="iprice" type="text" value="<%=inventory.getPrice()%>" size="5" readonly/>
        </span></div></td>
        <td bgcolor="#C3D7BA"><div align="center"><input name="quantity" type="text" value="1" size="5"  onkeyup="calculate(order)"/>
        </div></td>
        <td bgcolor="#C3D7BA"><div align="center"><input name="price" type="text" value="<%=inventory.getPrice()%>" size="5" readonly/>
        </div></td>
        <td valign="top" bgcolor="#DDEAD7"><div align="center" class="style9"><a href="RemovefromCart.jsp?id=<%=categoryid%><%=itemid%>"><img src="images/delete_button.png" alt="" width="26" height="26"/></a> </div></td>
      </tr>
      <%i++;
      	}%> <input type="hidden" name="count" value="<%=i%>"/>
      	
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td bgcolor="#509C16"><div align="center"><span class="style3"><strong>Total</strong></span></div></td>
        <td bgcolor="#C3D7BA"><input name="total" type="text" size="8" /></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="8"><div align="center">
         
         
          <input type="submit" name="button" id="button2" value="Place Order"/>  &nbsp; &nbsp;<input type="button" name="button" id="button2" value="Back" onClick="javascript:history.back(-1);"/>
         
        </div></td>
      </tr>
       <%
       	}
       else {
      %>
         <tr><td height="24" colspan="8"><div align="center" class="style3"><input type="hidden" name="iprice"/><strong>No Items in the Cart</strong></div></td>
         </tr>
      <%
      	}
      	} catch (Exception e) {
      		LoggerManager.writeLogWarning(e);
      	}
      	
      %>
    </table>
   
  </form>
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