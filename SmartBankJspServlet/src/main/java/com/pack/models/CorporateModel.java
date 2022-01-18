package com.pack.models;

public class CorporateModel {

	private String corporateName;
	private String corporateAddress;
	private String phoneNumber;
	public int corporateId;
	
	
	public int getCorporateId() {
		return corporateId;
	}
	public void setCorporateId(int corporateId) {
		this.corporateId = corporateId;
	}
	public String getCorporateName() {
		return corporateName;
	}
	public void setCorporateName(String corporateName) {
		this.corporateName = corporateName;
	}
	public String getCorporateAddress() {
		return corporateAddress;
	}
	public void setCorporateAddress(String address) {
		this.corporateAddress = address;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String string) {
		this.phoneNumber = string;
	}
	
}
