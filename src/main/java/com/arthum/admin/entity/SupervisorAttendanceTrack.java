package com.arthum.admin.entity;

import jakarta.persistence.*;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(name = "corporate_hrms_supervisor_attandance_track")
public class SupervisorAttendanceTrack {

    @Id
    @Column(name = "ID", length = 50)
    private String id;

    @Column(name = "SUPERVISOR_ID", length = 50)
    private String supervisorId;

    @Column(name = "COMPANY_ID", length = 50)
    private String companyId;

    @Column(name = "FACTORY_ID", length = 50)
    private String factoryId;

    @Column(name = "LATITUDE", length = 100)
    private String latitude;

    @Column(name = "LONGITUDE", length = 100)
    private String longitude;

    @Column(name = "ATTENDANCE_DATE")
    private LocalDate attendanceDate;

    @Column(name = "MARK_TYPE", length = 25)
    private String markType;

    @Column(name = "MARK_TIME")
    private LocalDateTime markTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSupervisorId() {
        return supervisorId;
    }

    public void setSupervisorId(String supervisorId) {
        this.supervisorId = supervisorId;
    }

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public String getFactoryId() {
        return factoryId;
    }

    public void setFactoryId(String factoryId) {
        this.factoryId = factoryId;
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

    public LocalDate getAttendanceDate() {
        return attendanceDate;
    }

    public void setAttendanceDate(LocalDate attendanceDate) {
        this.attendanceDate = attendanceDate;
    }

    public String getMarkType() {
        return markType;
    }

    public void setMarkType(String markType) {
        this.markType = markType;
    }

    public LocalDateTime getMarkTime() {
        return markTime;
    }

    public void setMarkTime(LocalDateTime markTime) {
        this.markTime = markTime;
    }

    @Override
    public String toString() {
        return "CorporateHrmsSupervisorAttandanceTrack{" +
                "id='" + id + '\'' +
                ", supervisorId='" + supervisorId + '\'' +
                ", companyId='" + companyId + '\'' +
                ", attendanceDate=" + attendanceDate +
                ", markType='" + markType + '\'' +
                ", markTime=" + markTime +
                '}';
    }
}
