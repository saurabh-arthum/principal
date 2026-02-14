package com.arthum.admin.service.compliance.compliance;

import com.arthum.admin.controller.compliance.helper.InputObject;
import com.arthum.admin.controller.compliance.helper.WageRate;
import com.arthum.admin.controller.compliance.helper.WageRecord;
import com.arthum.admin.entity.CompanyMaster;
import com.arthum.admin.entity.EmployeeMaster;
import com.arthum.admin.entity.Factory;
import com.arthum.admin.entity.SalaryData;
import com.arthum.admin.repository.readonly.CompanyMasterReadRepository;
import com.arthum.admin.repository.readonly.EmployeeMasterReadRepository;
import com.arthum.admin.repository.readonly.FactoryReadRepository;
import com.arthum.admin.repository.readonly.SalaryDataReadRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
public class CenterComplianceService {
    @Autowired
    CompanyMasterReadRepository companyMasterReadRepository;
    @Autowired
    EmployeeMasterReadRepository employeeMasterReadRepository;
    @Autowired
    FactoryReadRepository factoryReadRepository;
    @Autowired
    SalaryDataReadRepository salaryDataReadRepositor;

    public Map<String, Object> getcodewagesFormIPdf(InputObject inputObject) {

        Map<String, Object> resMap=new HashMap<String, Object>();
        CompanyMaster companyMaster =companyMasterReadRepository.findByCompanyId(inputObject.getCompanyId());
        Factory factory=factoryReadRepository.findByFactoryId(inputObject.getFactoryId());
        EmployeeMaster emp= employeeMasterReadRepository.findByCompanyIdAndFactoryIdAndEmployeeId(inputObject.getCompanyId(),inputObject.getFactoryId(),inputObject.getEmployeeId());
        resMap.put("company",companyMaster);
        resMap.put("factory", factory);
        resMap.put("employee", emp);
        return resMap;
    }
    public Map<String, Object> codewagesFormIexcel(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        CompanyMaster companyMaster =companyMasterReadRepository.findByCompanyId(inputObject.getCompanyId());
        List<EmployeeMaster> empList= employeeMasterReadRepository.findByCompanyIdAndFactoryId(inputObject.getCompanyId(),inputObject.getFactoryId());
        Factory factory=factoryReadRepository.findByFactoryId(inputObject.getFactoryId());
        resMap.put("company",companyMaster);
        resMap.put("factory", factory);
        resMap.put("employee", empList);
        return resMap;
    }
    public Map<String, Object> codewagesFormIVPdf() {
        Map<String, Object> resMap=new HashMap<String, Object>();
       //not required
        return resMap;
    }
    public Map<String, Object> codewagesForm4excel(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        CompanyMaster companyMaster =companyMasterReadRepository.findByCompanyId(inputObject.getCompanyId());
        List<EmployeeMaster> empList= employeeMasterReadRepository.findByCompanyIdAndFactoryId(inputObject.getCompanyId(),inputObject.getFactoryId());
        Factory factory=factoryReadRepository.findByFactoryId(inputObject.getFactoryId());
        List<SalaryData> salrayDataList=salaryDataReadRepositor.findByCompanyIdAndFactoryIdAndMonth(inputObject.getCompanyId(),inputObject.getFactoryId(),inputObject.getMonth());
        List<WageRecord>  wageRecordList=new ArrayList<>();
        for(EmployeeMaster e:empList){
            for(SalaryData s:salrayDataList){
                if(e.getEmployeeId().equals(s.getEmployeeId())){
                    WageRecord w=new WageRecord();
                    w.setEmployeeCode(e.getEmployeeId());
                    w.setName(e.getName());
                    w.setDesignation(e.getEmployeeSubtype());
                    w.setDepartment(e.getEmployeeType());
                    WageRate wRate=new WageRate();
                  //  {"HRA":1000,"PERFORMANCE ALLOW":1000,"BASIC":10000,"ATTENDANCE ALLOW":1000}
                  //  wRate.setAllowances();
               //     wRate.setBasic();
                 //   wRate.setDa();
                   // w.setNetPayment(s.getNetPay());
                    wageRecordList.add(w);
                }
            }
        }
        resMap.put("company",companyMaster);
        resMap.put("factory", factory);
        resMap.put("wageRecord", wageRecordList);
        return resMap;
    }

    public Map<String, Object> codewagesFormVpdf(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> codewagesFormVIIpdf(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> codewagesFormIXpdf(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> rulessocialsocietyFormIIIpdf(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormIIIpdf(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormIVpdf(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormVpdf(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormVIpdf(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormVIIpdf(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormVIIIAexcel(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormVIIIBexcel(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormVIIICexcel(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormVIIIexcel(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormXexcel(InputObject inputObject) {

        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }
    public Map<String, Object> oshwFormXIexcel(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormXIVexcel(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> codewagesFormIXexcel(InputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }
}
