package com.arthum.admin.service.compliance.compliance;

import com.arthum.admin.controller.compliance.helper.ComplianceInputObject;
import com.arthum.admin.controller.compliance.helper.WageRateDto;
import com.arthum.admin.controller.compliance.helper.WageRecordDto;
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

    public Map<String, Object> getcodewagesFormIPdf(ComplianceInputObject inputObject) {

        Map<String, Object> resMap=new HashMap<String, Object>();
        CompanyMaster companyMaster =companyMasterReadRepository.findByCompanyId(inputObject.getCompanyId());
        Factory factory=factoryReadRepository.findByFactoryId(inputObject.getFactoryId());
        EmployeeMaster emp= employeeMasterReadRepository.findByCompanyIdAndFactoryIdAndEmployeeId(inputObject.getCompanyId(),inputObject.getFactoryId(),inputObject.getEmployeeId());
        resMap.put("company",companyMaster);
        resMap.put("factory", factory);
        resMap.put("employee", emp);
        return resMap;
    }
    public Map<String, Object> codewagesFormIexcel(ComplianceInputObject inputObject) {
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
    public Map<String, Object> codewagesForm4excel(ComplianceInputObject inputObject) {
      Map<String, Object> resMap=new HashMap<String, Object>();
       /*   CompanyMaster companyMaster =companyMasterReadRepository.findByCompanyId(inputObject.getCompanyId());
        List<EmployeeMaster> empList= employeeMasterReadRepository.findByCompanyIdAndFactoryId(inputObject.getCompanyId(),inputObject.getFactoryId());
        Factory factory=factoryReadRepository.findByFactoryId(inputObject.getFactoryId());
        List<SalaryData> salrayDataList=null;//salaryDataReadRepositor.findByCompanyIdAndFactoryIdAndMonth(inputObject.getCompanyId(),inputObject.getFactoryId(),inputObject.getMonth());
        List<WageRecordDto>  wageRecordList=new ArrayList<>();
        for(EmployeeMaster e:empList){
            for(SalaryData s:salrayDataList){
                if(e.getEmployeeId().equals(s.getEmployeeId())){
                    WageRecordDto w=new WageRecordDto();
                    w.setEmployeeCode(e.getEmployeeId());
                    w.setName(e.getName());
                    w.setDesignation(e.getEmployeeSubtype());
                    w.setDepartment(e.getEmployeeType());
                    WageRateDto wRate=new WageRateDto();
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
        */return resMap;
    }

    public Map<String, Object> codewagesFormVpdf(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> codewagesFormVIIpdf(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> codewagesFormIXpdf(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> rulessocialsocietyFormIIIpdf(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormIIIpdf(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormIVpdf(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormVpdf(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormVIpdf(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormVIIpdf(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormVIIIAexcel(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormVIIIBexcel(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormVIIICexcel(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormVIIIexcel(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormXexcel(ComplianceInputObject inputObject) {

        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }
    public Map<String, Object> oshwFormXIexcel(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> oshwFormXIVexcel(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }

    public Map<String, Object> codewagesFormIXexcel(ComplianceInputObject inputObject) {
        Map<String, Object> resMap=new HashMap<String, Object>();
        return resMap;
    }
}
