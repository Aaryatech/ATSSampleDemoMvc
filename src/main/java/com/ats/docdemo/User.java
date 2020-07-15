package com.ats.docdemo;

public class User {
	
	private int userId;
	
	private String userName;
	
	private String userPass;
	
	private int empId;
	private String userMobNo;
	private String userEmail;
	
	private int isEnrolled;
	
	private int makerUserId;
    private String makerDttime;
    
    private int delStatus;
    

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPass() {
		return userPass;
	}

	public void setUserPass(String userPass) {
		this.userPass = userPass;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getUserMobNo() {
		return userMobNo;
	}

	public void setUserMobNo(String userMobNo) {
		this.userMobNo = userMobNo;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public int getIsEnrolled() {
		return isEnrolled;
	}

	public void setIsEnrolled(int isEnrolled) {
		this.isEnrolled = isEnrolled;
	}

	public int getMakerUserId() {
		return makerUserId;
	}

	public void setMakerUserId(int makerUserId) {
		this.makerUserId = makerUserId;
	}

	public String getMakerDttime() {
		return makerDttime;
	}

	public void setMakerDttime(String makerDttime) {
		this.makerDttime = makerDttime;
	}

	public int getDelStatus() {
		return delStatus;
	}

	public void setDelStatus(int delStatus) {
		this.delStatus = delStatus;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userPass=" + userPass + ", empId=" + empId
				+ ", userMobNo=" + userMobNo + ", userEmail=" + userEmail + ", isEnrolled=" + isEnrolled
				+ ", makerUserId=" + makerUserId + ", makerDttime=" + makerDttime + ", delStatus=" + delStatus + "]";
	}

}
