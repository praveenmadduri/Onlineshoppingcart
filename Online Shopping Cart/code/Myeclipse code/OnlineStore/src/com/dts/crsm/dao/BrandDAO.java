package com.dts.crsm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.LoggerManager;
import com.dts.crsm.model.Brand;

public class BrandDAO extends AbstractDataAccessObject{

	public Connection con;
	public Brand brand;
	public BrandDAO() 
	{
		
	}
	
	// Add new Brand
    public boolean addBrand(Brand brand)
    {
    	boolean flag = false;
    	try
    	{
    		int id = getSequenceID("BRAND","brandid");
    		con=getConnection();
    		PreparedStatement pst = con.prepareStatement("insert into BRAND values(?,?,?)");
    		pst.setInt(1, id);
    		pst.setString(2, brand.getBrandName());
    		pst.setString(3, brand.getBrandDesc());
    		
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
    
 // Update Brand
    public boolean updateBrand(Brand brand)
    {
    	boolean flag = false;
    	try
    	{
    		int id = brand.getBrandID();
    		con=getConnection();
    		PreparedStatement pst = con.prepareStatement("update BRAND set brandname=?,branddesc=? where brandid=?");
    		
    		pst.setString(1, brand.getBrandName());
    		pst.setString(2, brand.getBrandDesc());
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
    
 // Delete Brand
    public boolean deleteBrand(int brandid)
    {
    	boolean flag = false;
    	try
    	{
    		con=getConnection();
    		PreparedStatement pst = con.prepareStatement("delete from BRAND  where brandid=?");
    		
    		pst.setInt(1, brandid);
    		
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
    
    
    //list brands
    
    public CoreHash listBrands()
	{
		CoreHash aCoreHash = new CoreHash();
		aCoreHash.clear();
		int brandid;
		Statement st;
		try {
			con = getConnection();
			st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from BRAND order by brandid");
			while(rs.next())
			{
				brandid = rs.getInt(1);
				brand = new Brand();
				brand.setBrandID(brandid);
				brand.setBrandName(rs.getString(2));
				brand.setBrandDesc(rs.getString(3));
				
				
				aCoreHash.put(new Integer(brandid), brand);
			}
			
			con.close();
		} catch (SQLException e) {
			LoggerManager.writeLogWarning(e);
		}
        
		return aCoreHash;
	}
    
    
//list brand names
    
    public CoreHash listBrandNames()
	{
		CoreHash aCoreHash = new CoreHash();
		aCoreHash.clear();
		int brandid;
		Statement st;
		try {
			con = getConnection();
			st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from BRAND order by brandid");
			while(rs.next())
			{
				brandid = rs.getInt(1);
						
				aCoreHash.put(new Integer(brandid), rs.getString(2));
			}
			
			con.close();
		} catch (SQLException e) {
			LoggerManager.writeLogWarning(e);
		}
        
		return aCoreHash;
	}
   
    
//edit brand
    
    public Brand editBrand(int brandid)
	{
		
		Statement st;
		try 
		{
			con = getConnection();
			st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from BRAND where brandid="+brandid);
			if(rs.next())
			{
				brandid = rs.getInt(1);
				brand = new Brand();
				brand.setBrandID(brandid);
				brand.setBrandName(rs.getString(2));
				brand.setBrandDesc(rs.getString(3));
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
		return brand;
	}
}
