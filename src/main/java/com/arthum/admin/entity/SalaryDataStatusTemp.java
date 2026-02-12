package com.arthum.admin.entity;

import java.time.LocalDateTime;
import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

@Entity
@Table(name = "corporate_hrms_salary_data_status_temp")
public class SalaryDataStatusTemp {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "FILE_ID")
    private Integer fileId;

    @Column(name = "STATUS")
    private Integer status;

    @Column(name = "START_AT")
    private LocalDateTime startAt;

    @Column(name = "END_AT")
    private LocalDateTime endAt;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getFileId() {
        return fileId;
    }

    public void setFileId(Integer fileId) {
        this.fileId = fileId;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public LocalDateTime getStartAt() {
        return startAt;
    }

    public void setStartAt(LocalDateTime startAt) {
        this.startAt = startAt;
    }

    public LocalDateTime getEndAt() {
        return endAt;
    }

    public void setEndAt(LocalDateTime endAt) {
        this.endAt = endAt;
    }

    @Override
    public String toString() {
        return "CorporateHrmsSalaryDataStatusTemp{" +
                "id=" + id +
                ", fileId=" + fileId +
                ", status=" + status +
                ", startAt=" + startAt +
                ", endAt=" + endAt +
                '}';
    }
}
