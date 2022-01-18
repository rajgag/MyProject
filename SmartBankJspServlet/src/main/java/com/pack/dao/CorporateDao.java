package com.pack.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.pack.models.CorporateModel;

public class CorporateDao {
	
	public int save(CorporateModel u) {
		int status = 0;
		try {
			Connection con = MySqlConn.getCon();
			PreparedStatement ps = con
					.prepareStatement("insert into corporate(CorporateName,CorporateAdd,CorporatePhno)  values(?,?,?)");

			ps.setString(1, u.getCorporateName());
			ps.setString(2, u.getCorporateAddress());
			ps.setString(3, u.getPhoneNumber());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}

	public int update(CorporateModel u) {
		int status = 0;
		try {
			Connection con = MySqlConn.getCon();
			PreparedStatement ps = con
					.prepareStatement("update corporate set CorporateAdd=?,CorporatePhno=? where CorporateName=?");
			//System.out.println("id= " + u.getId() + " " + u.getName() + " " + u.getGender());
			ps.setString(1, u.getCorporateAddress());
			ps.setString(2, u.getPhoneNumber());
			ps.setString(3, u.getCorporateName());

			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}

	public int delete(String id) {
		int status = 0;
		String sts="No";
		try {
			Connection con = MySqlConn.getCon();
			PreparedStatement ps = con.prepareStatement("update corporate set status=? where CorporateName=?");
			ps.setString(1, sts);
			ps.setString(2, id);
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}
}
