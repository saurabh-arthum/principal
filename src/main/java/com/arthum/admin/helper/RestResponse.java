package com.arthum.admin.helper;

public class RestResponse {
	Integer status;
	Object data;
	String error;
	String message;

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public static RestResponse success(String token) {
		// TODO Auto-generated method stub
		return null;
	}

}
