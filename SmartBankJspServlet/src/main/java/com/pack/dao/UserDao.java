package com.pack.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.pack.models.UserModel;

public class UserDao {

	public int save(UserModel u) {
		int status = 0;
		try {
			Connection con = MySqlConn.getCon();
			PreparedStatement ps = con.prepareStatement(
					"insert into users(CorporateId,UserLoginId,UserPassword,UserAdd,UserDept,UserPhno) values(?,?,?,?,?,?)");

			ps.setString(1, u.getCorporateId());
			ps.setString(2, u.getUserLoginId());
			ps.setString(3, u.getUserPassword());
			ps.setString(4, u.getUserAdd());
			ps.setString(5, u.getUserDept());
			ps.setString(6, u.getUserPhno());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}

	public int update(UserModel u) {
		int status = 0;

		try {
			Connection con = MySqlConn.getCon();
			PreparedStatement ps = con.prepareStatement("update users set UserAdd=?,UserPhno=?,UserDept=? where UserLoginId=?");

			ps.setString(1, u.getUserAdd());
			ps.setString(2, u.getUserPhno());
			ps.setString(3, u.getUserDept());
			ps.setString(4, u.getUserLoginId());

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
			PreparedStatement ps = con.prepareStatement("update users set UserStatus=? where CorporateId=? and UserLoginId=?");
			ps.setString(1, sts);
			ps.setInt(2, id);
			ps.setString(3,loginId);
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}
	
	public int change(String uid,UserModel u)
	{	
		int status=0;
		String sts="Yes";
		Connection con=MySqlConn.getCon();
		try {
			PreparedStatement ps= con.prepareStatement("update users set PassChanged=?,UserPassword=? where UserLoginId=?");
			ps.setString(1,sts);
			ps.setString(2, u.getUserPassword());
			ps.setString(3, uid);
			status=ps.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		return status;
		
		
	}

}
