package com.ats.docdemo.common;

public class Info {
	
	private boolean isError; 
	private String msg;
	
	private int statusCode;
	private String statusText;
	
	private int isSessionAlive;
	
	public boolean isError() {
		return isError;
	}
	public void setError(boolean isError) {
		this.isError = isError;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public int getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}
	public String getStatusText() {
		return statusText;
	}
	public void setStatusText(String statusText) {
		this.statusText = statusText;
	}
	public int getIsSessionAlive() {
		return isSessionAlive;
	}
	public void setIsSessionAlive(int isSessionAlive) {
		this.isSessionAlive = isSessionAlive;
	}
	
	@Override
	public String toString() {
		return "Info [isError=" + isError + ", msg=" + msg + ", statusCode=" + statusCode + ", statusText=" + statusText
				+ ", isSessionAlive=" + isSessionAlive + "]";
	}
	
	

}
