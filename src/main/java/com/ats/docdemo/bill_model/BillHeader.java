package com.ats.docdemo.bill_model;


//Author-Sachin Handge
//Created On-13-07-2020
//Modified By-Sachin Handge
//Modified On-13-07-2020

public class BillHeader {

	private Integer billId;
	private String invoiceNo;
	private Integer custId;
	
	private String billDate;
	private String billDttime;
	private String billUpdateDttime;
	
	private Integer billAmt;

	private Integer makerUserId;
    private String makerDttime;
	
	private Integer delStatus;
	
	private String exVar1;
	private Integer exInt1;
	
	
	public Integer getBillId() {
		return billId;
	}
	public void setBillId(Integer billId) {
		this.billId = billId;
	}
	public String getInvoiceNo() {
		return invoiceNo;
	}
	public void setInvoiceNo(String invoiceNo) {
		this.invoiceNo = invoiceNo;
	}
	public Integer getCustId() {
		return custId;
	}
	public void setCustId(Integer custId) {
		this.custId = custId;
	}
	
	public String getBillDate() {
		return billDate;
	}
	
	public void setBillDate(String billDate) {
		this.billDate = billDate;
	}
	
	public String getBillDttime() {
		return billDttime;
	}
	public void setBillDttime(String billDttime) {
		this.billDttime = billDttime;
	}
	public String getBillUpdateDttime() {
		return billUpdateDttime;
	}
	public void setBillUpdateDttime(String billUpdateDttime) {
		this.billUpdateDttime = billUpdateDttime;
	}
	public Integer getBillAmt() {
		return billAmt;
	}
	public void setBillAmt(Integer billAmt) {
		this.billAmt = billAmt;
	}
	public Integer getMakerUserId() {
		return makerUserId;
	}
	public void setMakerUserId(Integer makerUserId) {
		this.makerUserId = makerUserId;
	}
	public String getMakerDttime() {
		return makerDttime;
	}
	public void setMakerDttime(String makerDttime) {
		this.makerDttime = makerDttime;
	}
	public Integer getDelStatus() {
		return delStatus;
	}
	public void setDelStatus(Integer delStatus) {
		this.delStatus = delStatus;
	}
	public String getExVar1() {
		return exVar1;
	}
	public void setExVar1(String exVar1) {
		this.exVar1 = exVar1;
	}
	public Integer getExInt1() {
		return exInt1;
	}
	public void setExInt1(Integer exInt1) {
		this.exInt1 = exInt1;
	}
	
	@Override
	public String toString() {
		return "BillHeader [billId=" + billId + ", invoiceNo=" + invoiceNo + ", custId=" + custId + ", billDate="
				+ billDate + ", billDttime=" + billDttime + ", billUpdateDttime=" + billUpdateDttime + ", billAmt="
				+ billAmt + ", makerUserId=" + makerUserId + ", makerDttime=" + makerDttime + ", delStatus=" + delStatus
				+ ", exVar1=" + exVar1 + ", exInt1=" + exInt1 + "]";
	}
	
}
