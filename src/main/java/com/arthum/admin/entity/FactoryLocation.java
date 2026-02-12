package com.arthum.admin.entity;


import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
@Entity
@Table(name = "corporate_hrms_factory_location")
public class FactoryLocation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "PRINCIPAL_ID", length = 50)
    private String principalId;

    @Column(name = "FACTORY_ID", length = 50)
    private String factoryId;

    @Column(name = "LOCATION_CODE", length = 40)
    private String locationCode;

    @Column(name = "LOCATION", length = 100)
    private String location;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPrincipalId() {
        return principalId;
    }

    public void setPrincipalId(String principalId) {
        this.principalId = principalId;
    }

    public String getFactoryId() {
        return factoryId;
    }

    public void setFactoryId(String factoryId) {
        this.factoryId = factoryId;
    }

    public String getLocationCode() {
        return locationCode;
    }

    public void setLocationCode(String locationCode) {
        this.locationCode = locationCode;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @Override
    public String toString() {
        return "CorporateHrmsFactoryLocation{" +
                "id=" + id +
                ", principalId='" + principalId + '\'' +
                ", factoryId='" + factoryId + '\'' +
                ", locationCode='" + locationCode + '\'' +
                ", location='" + location + '\'' +
                '}';
    }
}
