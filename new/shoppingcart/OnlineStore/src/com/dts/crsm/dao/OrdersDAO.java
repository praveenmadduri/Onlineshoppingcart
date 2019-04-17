package com.dts.crsm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Enumeration;

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.DateWrapper;
import com.dts.core.util.LoggerManager;
import com.dts.crsm.model.Inventory;
import com.dts.crsm.model.Orders;

public class OrdersDAO extends AbstractDataAccessObject{

	public Connection con;
	private Orders order;
	private InventoryAuditDAO iadao;
	private InventoryDAO inventorydao;
	
	public OrdersDAO()
	{
		con = getConnection();
		iadao = new InventoryAuditDAO();
	}
   
	// place total order
	public boolean placeTotalOrder(Orders order, CoreHash aCoreHash)
	{
		boolean flag = false;
		try
		{
			con.setAutoCommit(false);
			int orderid = getSequenceID("TOTALORDERS", "ORDERED");
			String loginname = order.getLoginname();
			double totalamt = order.getTotalamount();
			String orderdate = order.getOrderDate();
			String status = order.getStatus();
			
			PreparedStatement pst = con.prepareStatement("insert into TOTALORDERS(ORDERED,LoginName,OrderDate,TotalAmount,status) values(?,?,?,?,?)");
			
			pst.setString(2, loginname);
			pst.setInt(1, orderid);
			pst.setDouble(4, totalamt);
			pst.setString(3, orderdate);
			pst.setString(5, status);
			
			if(pst.executeUpdate()>0)
			{
				System.out.println("this is hello order");
				flag = placeItemOrder(orderid,aCoreHash);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			LoggerManager.writeLogWarning(e);
		}
		finally
		{
			try
			{
				if(flag)
					con.commit();
				else
					con.rollback();
				con.close();
			}
			catch(Exception e)
			{
				LoggerManager.writeLogWarning(e);
			}
		}
		return flag;
	}

	//place Item Order
	
	private boolean placeItemOrder(int orderid, CoreHash aCoreHash)
	{
		boolean flag = false;
		Inventory inventory = new Inventory();
		try
		{
		   PreparedStatement pst = con.prepareStatement("insert into ITEMORDER values(?,?,?,?,?)");
		   PreparedStatement pst1 = con.prepareStatement("update inventory set quantity=(quantity-?) where  categoryid=? and itemid=?");
		   
		   Enumeration enu = aCoreHash.elements();
		   while(enu.hasMoreElements())
		   {
			   order = (Orders)enu.nextElement();
			   pst.setInt(1, orderid);
			   
			   pst.setInt(2, order.getCategoryid());
			   pst.setInt(3, order.getItemid());
			   pst.setInt(4, order.getQuantity());
			   pst.setDouble(5, order.getPrice());
			   
			   pst1.setInt(1, order.getQuantity()); 
			  
			   pst1.setInt(2, order.getCategoryid());
			   pst1.setInt(3, order.getItemid());
			   
			   //inventory.setBrandID(order.getBrandid());
			   inventory.setCategoryID(order.getCategoryid());
			   inventory.setItemID(order.getItemid());
			   int n=pst.executeUpdate();
			  int n1= pst1.executeUpdate();
			  System.out.println("this is n"+n+"This is n1"+n1);
			   if(n>0 && n1>0 && iadao.inventoryAudit(inventory, order.getQuantity()+"Quantity deducted",2,con))
			   {
				   flag = true;
				   System.gc();
			   }
			   else
			   {
				   flag = false;
				   break;
			   }
		   }
		}
		catch(Exception e)
		{
			e.printStackTrace();
			flag = false;
			LoggerManager.writeLogWarning(e);
		}		
		return flag;
	}
	
	//List Orders
	public CoreHash listOrders(String fromdate, String todate)
	{
		CoreHash aCoreHash = new CoreHash();
		String dbname = getProperties().getProperty("dbname");
		String pattern ="";
		if(dbname.equals("access"))
			pattern = "#"; 
		 
		try
		{
		   Statement st = con.createStatement();
		   ResultSet rs = st.executeQuery("select * from TOTALORDERS where orderdate>="+pattern+fromdate+pattern+" and orderdate<="+pattern+todate+pattern);
		   int orderid = 0;
		   while(rs.next())
		   {
			  order = new Orders();
			  orderid = rs.getInt(1);
			  order.setOrderID(orderid);
			  order.setLoginname(rs.getString(2));
			  order.setOrderDate1(rs.getDate(3));
			  order.setTotalamount(rs.getDouble(4));
			  order.setStatus(rs.getString(5));
			  
		      aCoreHash.put(new Integer(orderid), order);	  
		   }
		}
		catch(Exception e)
		{
			LoggerManager.writeLogWarning(e);
		}
		finally
		{
			try
			{
				con.close();
			}
			catch(Exception e)
			{
				LoggerManager.writeLogWarning(e);
			}
		}
		return aCoreHash;
	}
	
	
	//List Orders
	public CoreHash listOrder(String orderdate)
	{
		CoreHash aCoreHash = new CoreHash();
		String dbname = getProperties().getProperty("dbname");
		String pattern ="";
		if(dbname.equals("oracle"))
			//pattern = "#"; 
		 
		try
		{
		   Statement st = con.createStatement();
		   ResultSet rs = st.executeQuery("select * from TOTALORDERS where orderdate='"+orderdate+"'");
		   int orderid = 0;
		   while(rs.next())
		   {
			   System.out.println("in while");
			  order = new Orders();
			  orderid = rs.getInt(1);
			  order.setOrderID(orderid);
			  order.setLoginname(rs.getString(2));
			  order.setOrderDate1(rs.getDate(3));
			  order.setTotalamount(rs.getDouble(4));
			  order.setStatus(rs.getString(5));
			  
		      aCoreHash.put(new Integer(orderid), order);	  
		   }
		}
		catch(Exception e)
		{
			LoggerManager.writeLogWarning(e);
		}
		finally
		{
			try
			{
				con.close();
			}
			catch(Exception e)
			{
				LoggerManager.writeLogWarning(e);
			}
		}
		return aCoreHash;
	}
	
	
	//List Orders
	public CoreHash listOrders(String loginname)
	{
		CoreHash aCoreHash = new CoreHash();
		
		try
		{
		   Statement st = con.createStatement();
		   ResultSet rs = st.executeQuery("select * from TOTALORDERS where loginname='"+loginname+"' Order by Orderdate desc");
		   int orderid = 0;
		   while(rs.next())
		   {
			  order = new Orders();
			  orderid = rs.getInt(1);
			  order.setOrderID(orderid);
			  order.setLoginname(rs.getString(2));
			  order.setOrderDate1(rs.getDate(3));
			  order.setTotalamount(rs.getDouble(4));
			  order.setStatus(rs.getString(5));
			  
		      aCoreHash.put(new Integer(orderid), order);	  
		   }
		}
		catch(Exception e)
		{
			LoggerManager.writeLogWarning(e);
		}
		finally
		{
			try
			{
				con.close();
			}
			catch(Exception e)
			{
				LoggerManager.writeLogWarning(e);
			}
		}
		return aCoreHash;
	}
	
	//List Orders
	public CoreHash listOrdersOfAllUser(String logintype)
	{
		CoreHash aCoreHash = new CoreHash();
		
		try
		{
		   Statement st = con.createStatement();
		   ResultSet rs = st.executeQuery("select t.ORDERED,t.LOGINNAME,t.ORDERDATE,t.TOTALAMOUNT,t.STATUS from TOTALORDERS t,logindetails ld where ld.loginname=t.loginname and ld.logintype='"+logintype+"' Order by t.Orderdate desc");
		   int orderid = 0;
		   while(rs.next())
		   {
			  order = new Orders();
			  orderid = rs.getInt(1);
			  order.setOrderID(orderid);
			  order.setLoginname(rs.getString(2));
			  order.setOrderDate1(rs.getDate(3));
			  order.setTotalamount(rs.getDouble(4));
			  order.setStatus(rs.getString(5));
			  
		      aCoreHash.put(new Integer(orderid), order);	  
		   }
		}
		catch(Exception e)
		{
			e.printStackTrace();
			LoggerManager.writeLogWarning(e);
		}
		finally
		{
			try
			{
				con.close();
			}
			catch(Exception e)
			{
				LoggerManager.writeLogWarning(e);
			}
		}
		return aCoreHash;
	}
	
	//List Orders Items
	public CoreHash listOrderDetails(int orderid)
	{
		CoreHash aCoreHash = new CoreHash();
		
		try
		{
		   Statement st = con.createStatement();
		   ResultSet rs = st.executeQuery("select * from ITEMORDER where Orderid="+orderid);
		   int i=0;
		   while(rs.next())
		   {
			  order = new Orders();
			  orderid = rs.getInt(1);
			  
			  order.setCategoryid(rs.getInt(2));
			  order.setItemid(rs.getInt(3));
			  order.setQuantity(rs.getInt(4));
			  order.setPrice(rs.getDouble(5));
			  
		      aCoreHash.put(new Integer(i++), order);	  
		   }
		}
		catch(Exception e)
		{
			LoggerManager.writeLogWarning(e);
		}
		finally
		{
			try
			{
				con.close();
			}
			catch(Exception e)
			{
				LoggerManager.writeLogWarning(e);
			}
		}
		return aCoreHash;
	}
	
	
	
	
	//update order status
	
	public boolean updateOrderStatus(int orderid, int statusid)
	{
		boolean flag = false;
		try
		{
			String status = "Rejected";
			con.setAutoCommit(false);
			PreparedStatement pst = con.prepareStatement("update totalorders set status=? where ordered=?");
			
			if( statusid == 2)
			{
				if(new InventoryDAO().updateInventory(orderid)) 
				{
					status = "Rejected";
					pst.setString(1, status);
					pst.setInt(2, orderid);
		       	
					pst.executeUpdate();
					con.commit();
					flag = true;
				}
			}
			else if(statusid == 1)
			{
	        	status = "Accepted";
	        	pst.setString(1, status);
		       	pst.setInt(2, orderid);
		       	
	        	pst.executeUpdate();
	        	con.commit();
	        	flag = true;
			}
	        else
	        {
	        	con.rollback();
	        	flag = false;
	        }
		}
		catch(Exception e)
		{
			try
			{
				con.rollback();
				flag = false;
			}
			catch(Exception ex)
			{
				LoggerManager.writeLogWarning(ex);
			}
			LoggerManager.writeLogWarning(e);
		}
		finally
		{
			try
			{
				con.close();
			}
			catch(Exception e)
			{
				LoggerManager.writeLogWarning(e);
			}
		}
		return flag;
	}
}
