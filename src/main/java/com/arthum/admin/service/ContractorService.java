package com.arthum.admin.service;

import com.arthum.admin.controller.helper.ContractorDashboardSummary;
import com.arthum.admin.controller.helper.ContractorDto;
import com.arthum.admin.controller.helper.ContractorListDTO;
import com.arthum.admin.controller.helper.InputObject;
import com.arthum.admin.entity.ApplyDetails;
import com.arthum.admin.entity.CompanyMaster;
import com.arthum.admin.entity.EntityMaster;
import com.arthum.admin.entity.FactoryMaster;
import com.arthum.admin.repository.readonly.ApplyDetailsReadRepository;
import com.arthum.admin.repository.readonly.CompanyMasterReadRepository;
import com.arthum.admin.repository.readonly.EntityMasterReadRepository;
import com.arthum.admin.repository.transactional.CompanyMasterRepository;

import com.arthum.admin.repository.transactional.FactoryMasterRepository;
import com.arthum.admin.utility.UniqueId;
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
    @Autowired
    ApplyDetailsReadRepository applyDetailsReadRepository;
    @Autowired
    FactoryMasterRepository factoryMasterRepository;


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
        if(entityMaster==null)
        {
            entityMaster=new EntityMaster(payload.getGst(),payload.getPanNumber(),payload.getEntityName(),payload.getEntityType());
            entityMaster=  entityMasterReadRepository.save(entityMaster);
        }
        ApplyDetails applyDetails= applyDetailsReadRepository.findByPan(payload.getPanNumber());
        if(applyDetails==null)
        {
            applyDetails=new ApplyDetails();
            applyDetails.setPan(payload.getPanNumber());
            applyDetails.setMobile(payload.getMobile());
            applyDetails=  applyDetailsReadRepository.save(applyDetails);
        }
		CompanyMaster company=	companyMasterRepository.findByEntityId(entityMaster.getEntityId());
        if(company==null)
        {
        	company=new CompanyMaster();
        	company.setEntityId(entityMaster.getEntityId());
            company.setCompanyId(UniqueId.getId());
            company.setAddress(entityMaster.getEntityAddress());
           /* company.setCompanyType()
            company.setEmail();
            company.setGst();
            company.setContactDetails();
            company.setDistrict();
            company.setEntityId();
*/
        	company=companyMasterRepository.save(company);
        }
        FactoryMaster factoryMaster = factoryMasterRepository.findByFactoryMasterId(payload.getFactoryId());


//if not exist Store in  cmpmanyMasterr
		//entry in factory and status is approved.
		
		return null;
	}
}
