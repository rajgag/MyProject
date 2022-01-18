package com.pack.models;

public class AccountModel {
	
	private String CorporateId;
	private String AccountNo;
	private String AccountName;
	private String Branch;
	private String Currency;
	private double availableBalance;
	
	public String getCorporateId() {
		return CorporateId;
	}
	public void setCorporateId(String corporateId) {
		CorporateId = corporateId;
	}
	public String getAccountNo() {
		return AccountNo;
	}
	public void setAccountNo(String accountNo) {
		AccountNo = accountNo;
	}
	public String getAccountName() {
		return AccountName;
	}
	public void setAccountName(String accountName) {
		AccountName = accountName;
	}
	public String getBranch() {
		return Branch;
	}
	public void setBranch(String branch) {
		Branch = branch;
	}
	public String getCurrency() {
		return Currency;
	}
	public void setCurrency(String currency) {
		Currency = currency;
	}
	public double getAvailableBalance() {
		return availableBalance;
	}
	public void setAvailableBalance(double availableBalance) {
		this.availableBalance = availableBalance;
	}

}
