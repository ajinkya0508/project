package com.entity;

public class PayBill {
	
	private int pay_id;
	private int user_id;
	private String cardNo;
	private String cardType;
	private String cvvNo;
	private String ammount;
	private String NameOnCard;
	private String expiry;
	
	public int getPay_id() {
		return pay_id;
	}
	public void setPay_id(int pay_id) {
		this.pay_id = pay_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public String getCvvNo() {
		return cvvNo;
	}
	public void setCvvNo(String cvvNo) {
		this.cvvNo = cvvNo;
	}
	public String getAmmount() {
		return ammount;
	}
	public void setAmmount(String ammount) {
		this.ammount = ammount;
	}
	public String getNameOnCard() {
		return NameOnCard;
	}
	public void setNameOnCard(String nameOnCard) {
		NameOnCard = nameOnCard;
	}
	public String getExpiry() {
		return expiry;
	}
	public void setExpiry(String expiry) {
		this.expiry = expiry;
	}
	@Override
	public String toString() {
		return "PayBill [pay_id=" + pay_id + ", user_id=" + user_id + ", cardNo=" + cardNo + ", cardType=" + cardType
				+ ", cvvNo=" + cvvNo + ", ammount=" + ammount + ", NameOnCard=" + NameOnCard + ", expiry=" + expiry
				+ "]";
	}
	
	
}