package com.dts.crsm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.LoggerManager;
import com.dts.crsm.model.Category;

public class CategoryDAO extends AbstractDataAccessObject{

	public Connection con;
	public Category category;
	public CategoryDAO() 
	{
		
	}
	
	// Add new Category
    public boolean addCategory(Category category)
    {
    	boolean flag = false;
    	try
    	{
    		con=getConnection();
    		int id = getSequenceID("CATEGORY","id");
    		PreparedStatement pst = con.prepareStatement("insert into Category values(?,?,?)");
    		pst.setInt(1, id);
    		pst.setString(2, category.getCategoryName());
    		pst.setString(3, category.getCategoryDesc());
    		
    		if(pst.executeUpdate()>0)
    			flag = true;
    		con.close();
    		
    	}
    	catch(SQLException se)
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
    			se.printStackTrace();
    			LoggerManager.writeLogWarning(se);
    		}
    	}
    	return flag;
    }
    
 // Update Category
    public boolean updateCategory(Category category)
    {
    	boolean flag = false;
    	try
    	{
    		int id = category.getCategoryID();
    		con=getConnection();
    		PreparedStatement pst = con.prepareStatement("update Category set Categoryname=?,Categorydesc=? where id=?");
    		
    		pst.setString(1, category.getCategoryName());
    		pst.setString(2, category.getCategoryDesc());
    		pst.setInt(3, id);
    		
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
    
 // Update Category
    public boolean deleteCategory(int categoryid)
    {
    	boolean flag = false;
    	try
    	{
    		con=getConnection();
    		PreparedStatement pst = con.prepareStatement("delete from Category  where id=?");
    		
    		pst.setInt(1, categoryid);
    		
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
    
    
    //list Categories
    
    public CoreHash listCategories()
	{
		CoreHash aCoreHash = new CoreHash();
		aCoreHash.clear();
		int categoryid;
		Statement st;
		try {
			con = getConnection();
			st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from Category order by ID");
			while(rs.next())
			{
				categoryid = rs.getInt(1);
				category = new Category();
				category.setCategoryID(categoryid);
				category.setCategoryName(rs.getString(2));
				category.setCategoryDesc(rs.getString(3));
				
				
				aCoreHash.put(new Integer(categoryid), category);
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
    
    
    
//list Category namess
    
    public CoreHash listCategoryNames()
	{
		CoreHash aCoreHash = new CoreHash();
		aCoreHash.clear();
		int categoryid;
		Statement st;
		try {
			con = getConnection();
			st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from Category order by id");
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
    
    

    
//edit Category
    
    public Category editCategory(int categoryid)
	{
		
		Statement st;
		try 
		{
			con = getConnection();
			st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from CATEGORY where id="+categoryid);
			if(rs.next())
			{
				categoryid = rs.getInt(1);
				category = new Category();
				category.setCategoryID(categoryid);
				category.setCategoryName(rs.getString(2));
				category.setCategoryDesc(rs.getString(3));
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
		return category;
	}
}
