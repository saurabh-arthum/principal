package com.arthum.admin.entity;

import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_factory")
public class Factory {
	
	@Id
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "FACTORY_ID")
	private String factoryId;

	@Column(name = "PRINCIPAL_ID")
	private String principalId;

	@Column(name = "COMPANY_ID")
	private String companyId;

	@Column(name = "BRANCH_ID")
	private String branchId;

	@Column(name = "FACTORY_NAME")
	private String factoryName;

	@Column(name = "ADDRESS")
	private String address;

	@Column(name = "DISTRICT")
	private String district;

	@Column(name = "STATE")
	private String state;

	@Column(name = "PIN")
	private String pin;

	@Column(name = "CONTACT_DETAILS", columnDefinition = "json")
	private String contactDetails;

	@Column(name = "RECORD_DATE")
	private LocalDateTime recordDate;

	@Column(name = "STATUS")
	private String status;

	@Column(name = "UPDATE_DATE")
	private LocalDateTime updateDate;

	@Column(name = "GST")
	private String gst;

	@Column(name = "LATITUDE")
	private String latitude;

	@Column(name = "LONGITUDE")
	private String longitude;

	@Column(name = "ESIC_CODE")
	private String esicCode;

	@Column(name = "ATTENDANCE_TYPE")
	private String attendanceType;

	@Column(name = "PF_CODE")
	private String pfCode;

	@Column(name = "INVOICE_TYPE_ID")
	private Integer invoiceTypeId;
    @Column(name = "FACTORY_MASTER_ID")
    private Integer factoryMasterId;
	@Override
	public String toString() {
		return "Factory{" + "factoryId='" + factoryId + '\'' + ", principalId='" + principalId + '\'' + ", companyId='"
				+ companyId + '\'' + ", branchId='" + branchId + '\'' + ", factoryName='" + factoryName + '\''
				+ ", address='" + address + '\'' + ", district='" + district + '\'' + ", state='" + state + '\''
				+ ", pin='" + pin + '\'' + ", contactDetails='" + contactDetails + '\'' + ", recordDate=" + recordDate
				+ ", status='" + status + '\'' + ", updateDate=" + updateDate + ", gst='" + gst + '\'' + ", latitude='"
				+ latitude + '\'' + ", longitude='" + longitude + '\'' + ", esicCode='" + esicCode + '\''
				+ ", attendanceType='" + attendanceType + '\'' + ", pfCode='" + pfCode + '\'' + ", invoiceTypeId="
				+ invoiceTypeId + '}';
	}

	public String getFactoryId() {
		return factoryId;
	}

	public void setFactoryId(String factoryId) {
		this.factoryId = factoryId;
	}

	public String getPrincipalId() {
		return principalId;
	}

	public void setPrincipalId(String principalId) {
		this.principalId = principalId;
	}

	public String getCompanyId() {
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getBranchId() {
		return branchId;
	}

	public void setBranchId(String branchId) {
		this.branchId = branchId;
	}

	public String getFactoryName() {
		return factoryName;
	}

	public void setFactoryName(String factoryName) {
		this.factoryName = factoryName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getContactDetails() {
		return contactDetails;
	}

	public void setContactDetails(String contactDetails) {
		this.contactDetails = contactDetails;
	}

	public LocalDateTime getRecordDate() {
		return recordDate;
	}

	public void setRecordDate(LocalDateTime recordDate) {
		this.recordDate = recordDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public LocalDateTime getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(LocalDateTime updateDate) {
		this.updateDate = updateDate;
	}

	public String getGst() {
		return gst;
	}

	public void setGst(String gst) {
		this.gst = gst;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getEsicCode() {
		return esicCode;
	}

	public void setEsicCode(String esicCode) {
		this.esicCode = esicCode;
	}

	public String getAttendanceType() {
		return attendanceType;
	}

	public void setAttendanceType(String attendanceType) {
		this.attendanceType = attendanceType;
	}

	public String getPfCode() {
		return pfCode;
	}

	public void setPfCode(String pfCode) {
		this.pfCode = pfCode;
	}

	public Integer getInvoiceTypeId() {
		return invoiceTypeId;
	}

	public void setInvoiceTypeId(Integer invoiceTypeId) {
		this.invoiceTypeId = invoiceTypeId;
	}

    public Integer getFactoryMasterId() {
        return factoryMasterId;
    }

    public void setFactoryMasterId(Integer factoryMasterId) {
        this.factoryMasterId = factoryMasterId;
    }
}
