package com.arthum.admin.service;

import com.arthum.admin.repository.readonly.CompanyMasterReadRepository;
import com.arthum.admin.repository.transactional.CompanyMasterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
@Service
public class ContractorService {

    @Autowired
    CompanyMasterReadRepository companyMasterReadRepository;
    @Autowired
    CompanyMasterRepository companyMasterRepository;


}
