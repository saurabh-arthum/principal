package com.arthum.admin.service;

import com.arthum.admin.controller.helper.ContractorDashboardSummary;
import com.arthum.admin.controller.helper.ContractorListDTO;
import com.arthum.admin.controller.helper.InputObject;
import com.arthum.admin.repository.readonly.CompanyMasterReadRepository;
import com.arthum.admin.repository.transactional.CompanyMasterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import java.util.List;

@Service
public class ContractorService {

    @Autowired
    CompanyMasterReadRepository companyMasterReadRepository;
    @Autowired
    CompanyMasterRepository companyMasterRepository;



    public ContractorDashboardSummary getSummary(String principalId) {
        return new ContractorDashboardSummary(100, 200, 300,10);
    }
    public List<ContractorListDTO> getContractors(String id, int page, int size) {
       /* Pageable pageable = PageRequest.of(page, size);

        return repo.findById(id, pageable);
        */return null;
    }

    public List<ContractorListDTO> getContractor(InputObject payload) {
        return null;
    }
}
