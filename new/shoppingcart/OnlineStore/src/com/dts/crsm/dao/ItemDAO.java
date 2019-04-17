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
import com.dts.crsm.model.Item;

public class ItemDAO extends AbstractDataAccessObject{

	public Connection con;
	public Item item;
	public ItemDAO() 
	{
		
	}
	
	// Add new Item
    public boolean addItem(Item item)
    {
    	boolean flag = false;
    	try
    	{
    		con=getConnection();
    		int id = getSequenceID("ITEM","itemid");
    		PreparedStatement pst = con.prepareStatement("insert into Item values(?,?,?,?)");
    		pst.setInt(1, id);
    		pst.setInt(2, item.getCategoryID());
    		pst.setString(3, item.getItemName());
    		pst.setString(4, item.getItemDesc());
    		
    		if(pst.executeUpdate()>0)
    			flag = true;
    		if(flag)
    		{
    			//new InventoryDAO().addInventory(inventory)
    		}
    	}
    	catch(Exception se)
    	{
    		se.printStackTrace();
    		LoggerManager.writeLogWarning(se);
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
    
 // Update Item
    public boolean updateItem(Item item)
    {
    	boolean flag = false;
    	try
    	{
    		con=getConnection();
    		int id = item.getItemID();
    		
    		PreparedStatement pst = con.prepareStatement("update Item set categoryid=?,itemname=?,itemdesc=? where itemid=?");
    		
    		pst.setInt(1, item.getCategoryID());    		
    		pst.setString(2, item.getItemName());
    		pst.setString(3, item.getItemDesc());
    		pst.setInt(4, id);
    		
    		if(pst.executeUpdate()>0)
    			flag = true;
    	}
    	catch(SQLException se)
    	{
    		LoggerManager.writeLogWarning(se);
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
    
 // Update Item
    public boolean deleteItem(int itemid)
    {
    	boolean flag = false;
    	try
    	{
    		con=getConnection();
    		PreparedStatement pst = con.prepareStatement("delete from ITEM  where itemid=?");
    		
    		pst.setInt(1, itemid);
    		
    		if(pst.executeUpdate()>0)
    			flag = true;
    	}
    	catch(SQLException se)
    	{
    		LoggerManager.writeLogWarning(se);
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
    
    
    //list Items
    
    public CoreList listItems()
	{
    	
		CoreList aCoreList = new CoreList();
		aCoreList.clear();
		int itemid;
		Statement st;
		try 
		{
			con = getConnection();
			st = con.createStatement();
			ResultSet rs = st.executeQuery("select i.ITEMID,i.CATEGORYID,i.ITEMNAME,i.ITEMDESC,c.CATEGORYNAME from ITEM i,CATEGORY c where i.CATEGORYID=c.ID order by i.ITEMID");
			while(rs.next())
			{
				itemid = rs.getInt(1);
				item = new Item();
				item.setItemID(itemid);
				item.setCategoryID(rs.getInt(2));
				item.setItemName(rs.getString(3));
				item.setItemDesc(rs.getString(4));
				item.setCategoryName(rs.getString(5));
				
				
				aCoreList.add(item);
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
			catch(Exception e)
			{
				LoggerManager.writeLogWarning(e);
			}
		}
		return aCoreList;
	}
    
    
 //list Item Name
    
    public CoreHash listItemNames()
	{
    	
		CoreHash aCoreHash = new CoreHash();
		aCoreHash.clear();
		int itemid;
		Statement st;
		try 
		{
			con = getConnection();
			st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from ITEM order by categoryid");
			while(rs.next())
			{
				aCoreHash.put(new Integer(rs.getInt(1)), rs.getString(3));
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
			catch(Exception e)
			{
				LoggerManager.writeLogWarning(e);
			}
		}
		return aCoreHash;
	}
    
    
    
//edit Item
    
    public Item editItem(int itemid)
	{
		
		Statement st;
		try 
		{
			con = getConnection();
			st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from item where itemid="+itemid);
			if(rs.next())
			{
				itemid = rs.getInt(1);
				item = new Item();
				item.setItemID(itemid);
				item.setCategoryID(rs.getInt(2));
				item.setItemName(rs.getString(3));
				item.setItemDesc(rs.getString(4));
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
			catch(Exception e)
			{
				LoggerManager.writeLogWarning(e);
			}
		}
		return item;
	}
    
//list Items by category
    
    public CoreHash listItemsByCategory(int categoryid)
	{
		CoreHash aCoreHash = new CoreHash();
		aCoreHash.clear();
		int itemid;
		Statement st;
		try 
		{
			con = getConnection();
			st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from ITEM where categoryid="+categoryid);
			while(rs.next())
			{
				itemid = rs.getInt(1);
				item = new Item();
				item.setItemID(itemid);
				item.setCategoryID(rs.getInt(2));
				item.setItemName(rs.getString(3));
				item.setItemDesc(rs.getString(4));

				aCoreHash.put(new Integer(itemid), item);
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
			catch(Exception e)
			{
				LoggerManager.writeLogWarning(e);
			}
		}
		return aCoreHash;
	}
}
