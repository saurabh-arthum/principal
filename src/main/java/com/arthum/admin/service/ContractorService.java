package com.arthum.admin.service;

import com.arthum.admin.repository.readonly.CompanyMasterReadRepository;
import com.arthum.admin.repository.transactional.CompanyMasterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContractorService {

    @Autowired
    CompanyMasterReadRepository companyMasterReadRepository;
    @Autowired
    CompanyMasterRepository companyMasterRepository;


}
