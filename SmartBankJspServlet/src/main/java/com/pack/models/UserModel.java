package com.pack.models;

public class UserModel {
	
	private String CorporateId;
	private String UserLoginId;
	private String UserAdd;
	private String UserPassword;
	private String UserDept;
	private String UserPhno;
	private String PassChanged;
	
	
	public String getCorporateId() {
		return CorporateId;
	}
	public void setCorporateId(String corporateId) {
		CorporateId =  corporateId ;
	}
	public String getUserLoginId() {
		return UserLoginId;
	}
	public void setUserLoginId(String userLoginId) {
		UserLoginId = userLoginId;
	}
	public String getUserAdd() {
		return UserAdd;
	}
	public void setUserAdd(String userAdd) {
		UserAdd = userAdd;
	}
	public String getUserPassword() {
		return UserPassword;
	}
	public void setUserPassword(String userPassword) {
		UserPassword = userPassword;
	}
	public String getUserDept() {
		return UserDept;
	}
	public void setUserDept(String userDept) {
		UserDept = userDept;
	}
	public String getUserPhno() {
		return UserPhno;
	}
	public void setUserPhno(String userPhno) {
		UserPhno = userPhno;
	}
	public String getPassChanged() {
		return PassChanged;
	}
	public void setPassChanged(String passChanged) {
		PassChanged = passChanged;
	}
}
