package com.arthum.admin.entity;


import java.math.BigDecimal;
import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
@Entity
@Table(name = "corporate_hrms_salary_data_field")
public class SalaryDataField {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "DATA_ID")
    private Long dataId;

    @Column(name = "FIELD", length = 100)
    private String field;

    @Column(name = "DATATYPE", length = 5)
    private String datatype;

    @Column(name = "VALUE_DECI", precision = 10, scale = 3)
    private BigDecimal valueDeci;

    @Column(name = "VALUE_STR", length = 100)
    private String valueStr;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getDataId() {
        return dataId;
    }

    public void setDataId(Long dataId) {
        this.dataId = dataId;
    }

    public String getField() {
        return field;
    }

    public void setField(String field) {
        this.field = field;
    }

    public String getDatatype() {
        return datatype;
    }

    public void setDatatype(String datatype) {
        this.datatype = datatype;
    }

    public BigDecimal getValueDeci() {
        return valueDeci;
    }

    public void setValueDeci(BigDecimal valueDeci) {
        this.valueDeci = valueDeci;
    }

    public String getValueStr() {
        return valueStr;
    }

    public void setValueStr(String valueStr) {
        this.valueStr = valueStr;
    }

    @Override
    public String toString() {
        return "CorporateHrmsSalaryDataField{" +
                "id=" + id +
                ", dataId=" + dataId +
                ", field='" + field + '\'' +
                ", datatype='" + datatype + '\'' +
                '}';
    }
}
