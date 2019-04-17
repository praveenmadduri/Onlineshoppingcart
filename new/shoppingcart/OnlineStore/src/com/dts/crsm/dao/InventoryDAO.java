package com.dts.crsm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.CoreList;
import com.dts.core.util.LoggerManager;
import com.dts.crsm.model.Inventory;

public class InventoryDAO extends AbstractDataAccessObject{

	public Connection con;
	private Inventory inventory;
	private InventoryAuditDAO iadao;
	
	public InventoryDAO() 
	{
		
		iadao = new InventoryAuditDAO();
	}
	
	// Add new Inventory
	
    public boolean addInventory(Inventory inventory)
    {
    	boolean flag = false;
    	try
    	{
    		con=getConnection();
    		PreparedStatement pst = con.prepareStatement("insert into INVENTORY values(?,?,?,?)");
    		
    		pst.setInt(1, inventory.getCategoryID());
    		pst.setInt(2, inventory.getItemID());
    		pst.setInt(3, inventory.getQuantity());
    		pst.setDouble(4, inventory.getPrice());
    		    		
    		if(pst.executeUpdate()>0)
    		{
    			flag = true;
    			iadao.inventoryAudit(inventory, "New Inventory Added",1,con);
    		}
    	}
    	catch(SQLException se)
    	{
    		LoggerManager.writeLogWarning(se);
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
    		catch(SQLException se)
    		{
    			LoggerManager.writeLogWarning(se);
    		}
    	}
    	return flag;
    }
    
// Update Inventory
	
    public boolean updateInventory(Inventory inventory)
    {
    	boolean flag = false;
    	try
    	{
    		con=getConnection();
    		PreparedStatement pst = con.prepareStatement("update INVENTORY set quantity=(quantity+?),price=? where  categoryid=? and itemid=?");
    		pst.setInt(1, inventory.getQuantity());
    		pst.setDouble(2, inventory.getPrice());
    		 		
    		pst.setInt(3, inventory.getCategoryID());	
    		pst.setInt(4, inventory.getItemID());
    		    		if(pst.executeUpdate()>0)
    		{
    			flag = true;
    			iadao.inventoryAudit(inventory, "Inventory Modified",1,con);
    		}
    		else
    			flag = false;
    	}
       	catch(SQLException se)
    	{
    		LoggerManager.writeLogWarning(se);
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
    		catch(SQLException se)
    		{
    			LoggerManager.writeLogWarning(se);
    		}
    	}
    	return flag;
    }
    
// Delete Inventory
	
    public boolean deleteInventory(Inventory inventory)
    {
    	boolean flag = false;
    	try
    	{
    		con=getConnection();
    		PreparedStatement pst = con.prepareStatement("delete from INVENTORY  where  categoryid=? and itemid=?");
    		
    			
    		pst.setInt(1, inventory.getCategoryID());	
    		pst.setInt(2, inventory.getItemID());
    		
    		if(pst.executeUpdate()>0)
    		{
    			flag = true;
    			iadao.inventoryAudit(inventory, "Inventory Deleated",2,con);
    		}
    		else
    			flag = false;
    	}
       	catch(SQLException se)
    	{
    		LoggerManager.writeLogWarning(se);
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
    		catch(SQLException se)
    		{
    			LoggerManager.writeLogWarning(se);
    		}
    	}
    	return flag;
    }
// Update Inventory by orderid
	
    public boolean updateInventory(int orderid)
    {
    	boolean flag = false;
    	try
    	{
    		con=getConnection();
    		con.setAutoCommit(false);
    		PreparedStatement pst1 = con.prepareStatement("select  categoryid, itemid, quantity from itemorder where orderid=?");
    		PreparedStatement pst = con.prepareStatement("update INVENTORY set quantity=(quantity+?) where   categoryid=? and itemid=?");
    		pst1.setInt(1, orderid);
    		
    		ResultSet rs = pst1.executeQuery();
    		while(rs.next())
    		{   
    			 		
    			pst.setInt(3, rs.getInt(2));	
    			pst.setInt(2, rs.getInt(1));
    			pst.setInt(1, rs.getInt(3)); 
    		     
    			if(pst.executeUpdate()>0)
    			{
    				flag = true;
    				iadao.inventoryAudit(inventory, "Quantity Updated",1,con);
    			}
    			else
    			{
    				flag = false;
    				break;
    			}
    		}
    	}
       	catch(SQLException se)
    	{se.printStackTrace();
       		flag = false;
    		LoggerManager.writeLogWarning(se);
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    		flag = false;
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
    		catch(SQLException se)
    		{
    			LoggerManager.writeLogWarning(se);
    		}
    	}
    	return flag;
    }
    
    
//list Category by brand
    
    public CoreHash listCategorybyBrand(int brandid)
	{
		CoreHash aCoreHash = new CoreHash();
		aCoreHash.clear();
		int categoryid;
		Statement st;
		try {
			con = getConnection();
			st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from inventory where brandid="+brandid);
			while(rs.next())
			{				
				aCoreHash.put(new Integer(rs.getInt(1)), rs.getString(2));
			}
		} 
		catch (SQLException e)
		{
			LoggerManager.writeLogWarning(e);
		}
		finally
    	{
    		try
    		{
    			con.close();
    		}
    		catch(SQLException se)
    		{
    			LoggerManager.writeLogWarning(se);
    		}
    	}
		return aCoreHash;
	}
    
    
//list items by brand and category
    
    public CoreHash listItemsbyBrandCategory(String categoryid)
	{
		CoreHash aCoreHash = new CoreHash();
		aCoreHash.clear();
		Statement st;
		try {
			con = getConnection();
			st = con.createStatement();
			ResultSet rs = st.executeQuery("select i.itemid, i.itemname from item i where i.categoryid="+categoryid);
			while(rs.next())
			{				
				aCoreHash.put(new Integer(rs.getInt(1)), rs.getString(2));
			}
		} 
		catch (SQLException e)
		{
			LoggerManager.writeLogWarning(e);
		}
		finally
    	{
    		try
    		{
    			con.close();
    		}
    		catch(SQLException se)
    		{
    			LoggerManager.writeLogWarning(se);
    		}
    	}
		return aCoreHash;
	}
    
    
    
// List Inventory By Brand
	
    public CoreList InventoryByBrand(int brandid)
    {
    	CoreList aCoreList = new CoreList();
		aCoreList.clear();
		Statement st;
		try {
			con = getConnection();
			st = con.createStatement();
			int count = 0;
			ResultSet rs = st.executeQuery("select * from INVENTORY where brandid="+brandid+" order by brandid");
			while(rs.next())
			{
				inventory = new Inventory();
				inventory.setBrandID(rs.getInt(1));
				inventory.setCategoryID(rs.getInt(2));
				inventory.setItemID(rs.getInt(3));
				inventory.setQuantity(rs.getInt(4));
				inventory.setPrice(rs.getDouble(5));
				
				count++;
				aCoreList.add(inventory);
			}	
    	}
    	catch(SQLException se)
    	{
    		LoggerManager.writeLogWarning(se);
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
    		catch(SQLException se)
    		{
    			LoggerManager.writeLogWarning(se);
    		}
    	}
    	return aCoreList;
    }
    
    
// List Inventory By Category
	
    public CoreList InventoryByCategory(int categoryid)
    {
    	CoreList aCoreList = new CoreList();
		aCoreList.clear();
		Statement st;
		try {
			con = getConnection();
			st = con.createStatement();
			int count = 0;
			ResultSet rs = st.executeQuery("select * from INVENTORY where categoryid="+categoryid+" ");
			while(rs.next())
			{
				inventory = new Inventory();
				//inventory.setBrandID(rs.getInt(1));
				inventory.setCategoryID(rs.getInt(1));
				inventory.setItemID(rs.getInt(2));
				inventory.setQuantity(rs.getInt(3));
				inventory.setPrice(rs.getDouble(4));
				
				count++;
				aCoreList.add(inventory);
			}	
    	}
    	catch(SQLException se)
    	{
    		LoggerManager.writeLogWarning(se);
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
    		catch(SQLException se)
    		{
    			LoggerManager.writeLogWarning(se);
    		}
    	}
    	return aCoreList;
    } 
    
    
// List Inventory By Item
	
    public CoreList InventoryByItem(int itemid)
    {
    	CoreList aCoreList = new CoreList();
		aCoreList.clear();
		Statement st;
		try {
			con = getConnection();
			st = con.createStatement();
			int count = 0;
			ResultSet rs = st.executeQuery("select * from INVENTORY where itemid="+itemid+" order by brandid");
			while(rs.next())
			{
				inventory = new Inventory();
				inventory.setBrandID(rs.getInt(1));
				inventory.setCategoryID(rs.getInt(2));
				inventory.setItemID(rs.getInt(3));
				inventory.setQuantity(rs.getInt(4));
				inventory.setPrice(rs.getDouble(5));
				
				count++;
				aCoreList.add(inventory);
			}	
    	}
    	catch(SQLException se)
    	{
    		LoggerManager.writeLogWarning(se);
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
    		catch(SQLException se)
    		{
    			LoggerManager.writeLogWarning(se);
    		}
    	}
    	return aCoreList;
    } 
    
    
    //list Search Inventory
    public CoreHash searchInventory(int categoryid, int itemid)
    {
    	CoreHash aCoreHash = new CoreHash();
		Statement st;
		try {
			con = getConnection();
			st = con.createStatement();
			int count = 0;
			String query="select * from INVENTORY where ";
			
			if(categoryid!=0)
			{
				query+=" categoryid="+categoryid;
				count=1;
			}
			if(count==1 && itemid!=0)
			{
				query+=" and ";
				count=0;
			}
			if(itemid!=0)
			{
				query+=" itemid="+itemid;
			}
			System.out.println(query);
			ResultSet rs = st.executeQuery(query);
			count=0;
			while(rs.next())
			{
				inventory = new Inventory();
				//inventory.setBrandID(rs.getInt(1));
				inventory.setCategoryID(rs.getInt(1));
				inventory.setItemID(rs.getInt(2));
				inventory.setQuantity(rs.getInt(3));
				inventory.setPrice(rs.getDouble(4));
				
				count++;
				aCoreHash.put(new Integer(count),inventory);
			}	
    	}
    	catch(SQLException se)
    	{
    		LoggerManager.writeLogWarning(se);
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
    		catch(SQLException se)
    		{
    			LoggerManager.writeLogWarning(se);
    		}
    	}
    	return aCoreHash;
    }
    
    
    //get price by inventory
    public Inventory getInventory(int categoryid, int itemid)
    {
    	CoreHash aCoreHash = new CoreHash();
		Statement st;
		try {
			con = getConnection();
			st = con.createStatement();
			int count = 0;
			String query="select * from INVENTORY where   categoryid="+categoryid+" and itemid="+itemid+"";
			ResultSet rs = st.executeQuery(query);
			count=0;
			if(rs.next())
			{
				inventory = new Inventory();
				inventory.setCategoryID(rs.getInt(1));
				inventory.setItemID(rs.getInt(2));
				inventory.setQuantity(rs.getInt(3));
				inventory.setPrice(rs.getDouble(4));
			}	
    	}
    	catch(SQLException se)
    	{
    		LoggerManager.writeLogWarning(se);
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
    		catch(SQLException se)
    		{
    			LoggerManager.writeLogWarning(se);
    		}
    	}
    	return inventory;
    }
    
}
