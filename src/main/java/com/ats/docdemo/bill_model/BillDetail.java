package com.ats.docdemo.bill_model;

//Author-Sachin Handge
//Created On-13-07-2020
//Modified By-Sachin Handge
//Modified On-13-07-2020

public class BillDetail {

	private int billDetailId;
	private int billId;
	private String detailDttime;
	
	private Integer totalAmt;
	private Integer qty;
	private Integer rate;
	
	private String workDesc;
	
	private int delStatus;

	public int getBillDetailId() {
		return billDetailId;
	}

	public void setBillDetailId(int billDetailId) {
		this.billDetailId = billDetailId;
	}

	public int getBillId() {
		return billId;
	}

	public void setBillId(int billId) {
		this.billId = billId;
	}

	public String getDetailDttime() {
		return detailDttime;
	}

	public void setDetailDttime(String detailDttime) {
		this.detailDttime = detailDttime;
	}

	public Integer getTotalAmt() {
		return totalAmt;
	}

	public void setTotalAmt(Integer totalAmt) {
		this.totalAmt = totalAmt;
	}

	public Integer getQty() {
		return qty;
	}

	public void setQty(Integer qty) {
		this.qty = qty;
	}

	public Integer getRate() {
		return rate;
	}

	public void setRate(Integer rate) {
		this.rate = rate;
	}

	public String getWorkDesc() {
		return workDesc;
	}

	public void setWorkDesc(String workDesc) {
		this.workDesc = workDesc;
	}

	public int getDelStatus() {
		return delStatus;
	}

	public void setDelStatus(int delStatus) {
		this.delStatus = delStatus;
	}

	@Override
	public String toString() {
		return "BillDetail [billDetailId=" + billDetailId + ", billId=" + billId + ", detailDttime=" + detailDttime
				+ ", totalAmt=" + totalAmt + ", qty=" + qty + ", rate=" + rate + ", workDesc=" + workDesc
				+ ", delStatus=" + delStatus + "]";
	}
	
}
