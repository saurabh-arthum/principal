package com.arthum.admin.entity;

import java.io.Serializable;
import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
import java.util.Objects;

@Entity
@Table(name = "corporate_hrms_sequence")
public class Sequence {

    @Id
    @Column(name = "COMPANY_ID", length = 50)
    private String companyId;

    @Id
    @Column(name = "YEAR")
    private Integer year;

    @Column(name = "SEQUENCE")
    private Integer sequence;

    public String getCompanyId() {
        return companyId;
    }

    public void setCompanyId(String companyId) {
        this.companyId = companyId;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Integer getSequence() {
        return sequence;
    }

    public void setSequence(Integer sequence) {
        this.sequence = sequence;
    }

    @Override
    public String toString() {
        return "CorporateHrmsSequence{" +
                "companyId='" + companyId + '\'' +
                ", year=" + year +
                ", sequence=" + sequence +
                '}';
    }
}
