package com.dts.crsm.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.dts.core.dao.AbstractDataAccessObject;
import com.dts.core.util.CoreHash;
import com.dts.core.util.LoggerManager;
import com.dts.dae.model.Profile;

public class DealersDAO extends AbstractDataAccessObject{
	
	public Connection con;
	CoreHash aCoreHash;
	Profile profile;
	
	//get All Dealers Profiles
	
	public CoreHash getDealers()
	{
		aCoreHash = new CoreHash();
		try
		{
			String loginname = "";
			con = getConnection();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select ld.loginname,ld.firstname,ld.lastname,lp.city,lp.DOB,lp.hno,lp.street,lp.state,lp.country,lp.PIN,ld.loginstatus from logindetails ld,loginprofile lp where ld.loginname=lp.LOGINNAME and ld.logintype='Employee'");
			while(rs.next())
			{
				  loginname = rs.getString(1);
	              profile = new Profile();
	              profile.setLoginID(loginname);
	              profile.setFirstName(rs.getString(2));
	              profile.setLastName(rs.getString(3));
	              profile.setCity(rs.getString(4));
	             // profile.setPhoneNo(rs.getString(5));
	              profile.setBirthDate1(rs.getDate(5));
	              profile.setHno(rs.getString(6));
	              profile.setStreet(rs.getString(7));
	              profile.setState(rs.getString(8));
	              profile.setCountry(rs.getString(9));
	              profile.setPincode(rs.getString(10));
	              //profile.setEmail(rs.getString(12));
	              profile.setStatus(rs.getInt(11));
	              
	              aCoreHash.put(loginname,profile);
			}
		}
		catch(Exception e)
		{
			LoggerManager.writeLogWarning(e);
		}
		return aCoreHash;
	}
}
