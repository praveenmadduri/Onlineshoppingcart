package com.dts.crsm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.DateWrapper;
import com.dts.core.util.LoggerManager;
import com.dts.crsm.model.Inventory;

public class InventoryAuditDAO extends AbstractDataAccessObject{

	public Connection con;
	public Inventory inventory;
	public String dbname;
	public String pattern;
	
	public InventoryAuditDAO() 
	{
		con=getConnection();
		dbname = getProperties().getProperty("dbname");
		if(dbname.equals("access"))
			pattern = "#"; 
	}
	
	// Add new Inventory
	
    public boolean inventoryAudit(Inventory inventory,String comments, int mode,Connection con1)
    {
    	boolean flag = false;
    	PreparedStatement pst = null;
    	try
    	{
    		pst = con1.prepareStatement("insert into INVENTORYAUDIT values(?,?,?,?,?)");
    		
    		pst.setInt(1, inventory.getCategoryID());
    		pst.setInt(2, inventory.getItemID());
    		pst.setString(3, DateWrapper.parseDate(new Date()));
    		pst.setInt(4, mode);
    		
    		pst.setString(5, comments);
    		
    		if(pst.executeUpdate()>0)
    			flag = true;
    	}
    	catch(SQLException se)
    	{
    		se.printStackTrace();
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
    			pst.close();
    		}
    		catch(SQLException se)
    		{
    			LoggerManager.writeLogWarning(se);
    		}
    	}
    	return flag;
    }
    

    // List Inventory Audit By Date
	
    public CoreHash InventoryAuditbyDate(String auditdate)
    {
    	CoreHash aCoreHash = new CoreHash();
		aCoreHash.clear();
		Statement st;
		try {
			con = getConnection();
			st = con.createStatement();
			int count = 0;
			ResultSet rs = st.executeQuery("select * from INVENTORYAUDIT where ModifiedDate="+pattern+auditdate+pattern);
			while(rs.next())
			{
				inventory = new Inventory();
				inventory.setBrandID(rs.getInt(1));
				inventory.setCategoryID(rs.getInt(2));
				inventory.setItemID(rs.getInt(3));
				inventory.setQuantity(rs.getInt(4));
				inventory.setPrice(rs.getDouble(5));
				inventory.setVat(rs.getDouble(6));
				
				count++;
				aCoreHash.put(new Integer(count), inventory);
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
 
}
