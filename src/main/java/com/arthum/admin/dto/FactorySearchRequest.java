package com.arthum.admin.dto;

public class FactorySearchRequest {

	private String factoryName;
	private String state;
	private String attendanceType;
	private String district;
	private String status;

	public String getFactoryName() {
		return factoryName;
	}

	public void setFactoryName(String factoryName) {
		this.factoryName = factoryName;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getAttendanceType() {
		return attendanceType;
	}

	public void setAttendanceType(String attendanceType) {
		this.attendanceType = attendanceType;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "FactorySearchRequest [factoryName=" + factoryName + ", state=" + state + ", attendanceType="
				+ attendanceType + ", district=" + district + ", status=" + status + "]";
	}

}
