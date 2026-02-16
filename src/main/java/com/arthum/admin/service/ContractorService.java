package com.arthum.admin.service;

import com.arthum.admin.controller.helper.ContractorDashboardSummary;
import com.arthum.admin.controller.helper.ContractorDto;
import com.arthum.admin.controller.helper.ContractorListDTO;
import com.arthum.admin.controller.helper.InputObject;
import com.arthum.admin.entity.CompanyMaster;
import com.arthum.admin.entity.EntityMaster;
import com.arthum.admin.repository.readonly.CompanyMasterReadRepository;
import com.arthum.admin.repository.readonly.EntityMasterReadRepository;
import com.arthum.admin.repository.transactional.CompanyMasterRepository;

import org.apache.catalina.Store;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

@Service
public class ContractorService {

    @Autowired
    CompanyMasterReadRepository companyMasterReadRepository;
    @Autowired
    CompanyMasterRepository companyMasterRepository;
    @Autowired EntityMasterReadRepository entityMasterReadRepository;


static List<ContractorListDTO>list=new ArrayList<ContractorListDTO>();
    public ContractorDashboardSummary getSummary(String principalId) {
        return new ContractorDashboardSummary(100, 200, 300,10);
    }
    
    public List<ContractorListDTO> getContractors(InputObject payload) {
       /* Pageable pageable = PageRequest.of(page, size);
		
        return repo.findById(id, pageable);
        */
    //	 List<ContractorListDTO>list=new ArrayList<ContractorListDTO>() ;
    	return list;
    }

    public ContractorListDTO getContractor(InputObject payload) {
    	ContractorListDTO contract=list.get(0);
        return contract;
    }
    public ContractorListDTO save(ContractorListDTO cont)
    {
    	list.add(cont);
    	return cont;
    	
    }

	public Object saveContractors(ContractorDto payload) {
		EntityMaster entityMaster=	entityMasterReadRepository.findByGst(payload.getGst());
		CompanyMaster company=	companyMasterRepository.findByEntityId(entityMaster.getEntityId());

//if not exist Store in  cmpmanyMasterr
		//entry in factory and status is approved.
		
		return null;
	}
}
