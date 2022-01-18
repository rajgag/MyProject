package com.pack.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.pack.models.AccountModel;

public class AccountDao {
	
	public int save(AccountModel u) {
		int status = 0;
		try {
			Connection con = MySqlConn.getCon();
			PreparedStatement ps = con.prepareStatement(
					"insert into accounts(CorporateId,AccountNo,AccountName,AccountBranch,Currency,AvailableBalance) values(?,?,?,?,?,?)");

			ps.setString(1, u.getCorporateId());
			ps.setString(2, u.getAccountNo());
			ps.setString(3, u.getAccountName());
			ps.setString(4, u.getBranch());
			ps.setString(5, u.getCurrency());
			ps.setDouble(6, u.getAvailableBalance());
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}
	public int delete(int id,String loginId) {
		int status = 0;
		String sts = "No";
		try {
			Connection con = MySqlConn.getCon();
			PreparedStatement ps = con.prepareStatement("update accounts set AccountStatus=? where CorporateId=? and AccountName=?");
			ps.setString(1, sts);
			ps.setInt(2, id);
			ps.setString(3,loginId);
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

}
