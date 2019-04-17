<%@ page import="com.dts.crsm.model.Item,com.dts.crsm.model.Category,com.dts.crsm.dao.ItemDAO,com.dts.crsm.dao.CategoryDAO,com.dts.core.util.CoreHash,java.util.*"%>
<%@ page import="com.dts.core.util.LoggerManager,com.dts.crsm.dao.BrandDAO, com.dts.crsm.dao.InventoryDAO" %>
<%@ page import="com.dts.crsm.model.Item,com.dts.crsm.model.Category,com.dts.crsm.dao.CategoryDAO,com.dts.crsm.dao.ItemDAO,com.dts.core.util.LoggerManager,com.dts.core.util.CoreHash,java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html><head>
<%--<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">--%>


<title> Online Stores  </title>
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
                 <marquee><H1><font color="Blue">Online Stores </font></H1></marquee>  <p align="center">&nbsp;</p>
               


                  <p align="center"><fieldset>
					<legend><span class="style3">Add New Inventory</span></legend>
  <br />
                    <form  method="post" action="addNewInventory.do" name="inventory">
 
    <table width="259" border="0" align="center" bordercolor="#8692E3">
      <tr>
        <td><span class="style9"></span></td>
        <td><label>
          <%
		  		try
		  		{
		  		   CoreHash bCoreHash = new BrandDAO().listBrandNames();
		  		   Enumeration enu = bCoreHash.keys();
		  		   String select = "";
		  		   int brandid1 = 0;
		  		   int brandid = 0;
		  %>		  
        </label></td>
      </tr>
      <tr>
        <td width="107"><span class="style9">Category</span></td>
        <td width="142"><label class="textfield">
          <select name="categoryID" id="textfield"  onchange="javascript:if(document.inventory.categoryID.value==''){alert('select Any Category');}else{location.href='AddNewInventory.jsp?categoryid='+document.inventory.categoryID.value;}">
             <option>--select--</option>
            <%
            
                CoreHash aCoreHash = new CoreHash();
                Category aCategory = new Category();
                aCoreHash = new CategoryDAO().listCategories(); 
                enu = aCoreHash.elements();
                int categoryid = 0;
                while(enu.hasMoreElements())
                {
                   aCategory = (Category)enu.nextElement();
                   categoryid=aCategory.getCategoryID();
                   select = "";
                   if(request.getParameter("categoryid")!=null)
                   {
                   		if(categoryid ==Integer.parseInt(request.getParameter("categoryid")))
                   		{
                       		select = "selected";
                   		}
                   }	
                 %>
               
                   <option value="<%=aCategory.getCategoryID()%>" <%=select%>><%=aCategory.getCategoryName()%></option>
                   
                <% }
               
                 %>
          </select>
        </label></td>
      </tr>    
      <tr>
        <td class="style9">Item</td>
        <td><label>
          <select name="itemID" id="select2">
           <option>--select--</option>
            <%
            if( request.getParameter("categoryid")!=null)
            {
                 aCoreHash = new CoreHash();
                 aCategory = new Category();
                aCoreHash = new InventoryDAO().listItemsbyBrandCategory(request.getParameter("categoryid")); 
                enu = aCoreHash.keys();
                int itemid = 0;
                while(enu.hasMoreElements())
                {
                  itemid = Integer.parseInt(enu.nextElement().toString());
                 %>
                   <option value="<%=itemid%>"><%=aCoreHash.get(new Integer(itemid))%></option>
                   
                <% }
                }
                }
                catch(Exception e)
                {
                    LoggerManager.writeLogWarning(e);
                }%>
          </select>
        </label></td>
      </tr>
      <tr>
        <td width="107"><span class="style9">Quantity</span></td>
        <td width="142"><label class="textfield">
          <input name="quantity" type="text" id="textfield" value="0" />
        </label></td>
      </tr>
      <tr>
        <td><span class="style9">Price/item</span></td>
        <td><label>
          <input name="price" type="text" id="textfield2" value="0" />
        </label></td>
      </tr>
      <tr>
        <td colspan="2"><div align="center">
         
          <input type="submit" name="button" id="button" value="Add"/>
          &nbsp;</div></td>
      </tr>
    </table>
  </form>
  <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("f");
  
 
  
   frmvalidator.addValidation("categoryID","dontselect=0");
   
   
   
     frmvalidator.addValidation("itemID","dontselect=0");
  
  frmvalidator.addValidation("quantity","req","Please enter quantity");
  
   frmvalidator.addValidation("quantity","age");
  
   
   frmvalidator.addValidation("price","req","Please enter price");
  
   frmvalidator.addValidation("price","age");
    
 </script>
 
					</fieldset>
				
			
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
                              <img src="images_files/1.jpg" width="106" height="160"><img src="images_files/2.jpg"><img src="images_files/3.jpg" width="106" height="160"><img src="images_files/4.jpg" width="106" height="160"><img src="images_files/5.jpg"><img src="images_files/6.jpg" width="106" height="160"><img src="images_files/7.jpg" width="106" height="160"><img src="images_files/8.jpg"><img src="images_files/9.jpg" width="106" height="160"><img src="images_files/10.jpg"><img src="images_files/11.jpg" width="106" height="160"><img src="images_files/12.jpg"><img src="images_files/13.jpg" width="106" height="160"><img src="images_files/14.jpg" width="106" height="160"><img src="images_files/15.jpg"><img src="images_files/16.jpg"><img src="images_files/17.jpg"><img src="images_files/18.jpg"><img src="images_files/19.jpg"><img src="images_files/20.jpg"><img src="images_files/21.jpg"><img src="images_files/22.jpg"><img src="images_files/23.jpg"><img src="images_files/24.jpg"/> 
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