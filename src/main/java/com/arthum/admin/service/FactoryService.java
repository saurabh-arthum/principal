package com.arthum.admin.service;

import com.arthum.admin.entity.Factory;
import com.arthum.admin.exception.ResourceNotFoundException;
import com.arthum.admin.repository.readonly.FactoryReadRepository;
import com.arthum.admin.repository.transactional.FactoryRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;

@Service
public class FactoryService {
	private static final Logger log = LoggerFactory.getLogger(FactoryService.class);
	private final FactoryRepository factoryRepository;
	private final FactoryReadRepository factoryReadRepository;

	public FactoryService(FactoryRepository factoryRepository, FactoryReadRepository factoryReadRepository) {
		this.factoryRepository = factoryRepository;
		this.factoryReadRepository = factoryReadRepository;
	}

	public List<Factory> getAllFactoriesReadOnly() {
		log.info("Fetching all factories from read-only datasource");
		return factoryReadRepository.findAll();
	}

	public List<Factory> getFactoriesByState(String state) {
		log.info("Fetching factories by state: {}", state);
		return factoryReadRepository.findByStateNative(state);
	}

	public List<Factory> getActiveFactories() {
		log.info("Fetching active factories");
		return factoryReadRepository.findActiveFactories("b6f87ad5-db08-4337-9cb4-6b818f43ba45");
	}

	@Cacheable(value = "factories", key = "#page + '-' + #size")
	public Page<Factory> getFactoriesPaginated(int page, int size) {
		log.info("Fetching paginated factories - Page: {}, Size: {}", page, size);
		return factoryRepository.findAll(PageRequest.of(page, size));
	}

	public Page<Factory> searchFactories(String factoryId, String factoryName, String address, int page, int size) {
		log.info("Searching factories - ID: {}, Name: {}, Address: {}, Page: {}", factoryId, factoryName, address,
				page);
		return factoryRepository.searchFactories(factoryId != null && !factoryId.isEmpty() ? factoryId : null,
				factoryName != null && !factoryName.isEmpty() ? factoryName : null,
				address != null && !address.isEmpty() ? address : null, PageRequest.of(page, size));
	}

	public int getTotalPages(int size) {
		long total = factoryRepository.count();
		return (int) Math.ceil((double) total / size);
	}

	public Factory getFactoryById(String factoryId) {
		log.info("Fetching factory by ID: {}", factoryId);
		return factoryRepository.findById(factoryId)
				.orElseThrow(() -> new ResourceNotFoundException("Factory not found with ID: " + factoryId));
	}

	public List<Factory> getAllFactories() {
		log.info("Fetching all factories from transactional datasource");
		return factoryRepository.findAll();
	}

	@CacheEvict(value = "factories", allEntries = true)
	@Transactional
	public Factory createFactory(Factory factory) {
		log.info("Creating factory: {}", factory.getFactoryId());
		factory.setPrincipalId("b6f87ad5-db08-4337-9cb4-6b818f43ba45");
		factory.setCompanyId("b6f87ad5-db08-4337-9cb4-6b818f43ba67");
		factory.setFactoryId(UUID.randomUUID().toString());
		factory.setStatus("ACTIVE");
		factory.setRecordDate(LocalDateTime.now());
		Factory saved = factoryRepository.save(factory);
		log.info("Factory created successfully");
		return saved;
	}

	@CacheEvict(value = "factories", allEntries = true)
	@Transactional
	public Factory updateFactory(String id, Factory factory) {
		log.info("Updating factory: {}", id);
		factory.setFactoryId(id);
		factory.setUpdateDate(LocalDateTime.now());
		Factory updated = factoryRepository.save(factory);
		log.info("Factory updated successfully");
		return updated;
	}

	@CacheEvict(value = "factories", allEntries = true)
	@Transactional
	public int updateFactoryStatus(String factoryId, String status) {
		log.info("Updating factory status - ID: {}, Status: {}", factoryId, status);
		return factoryRepository.updateFactoryStatus(factoryId, status);
	}

	@CacheEvict(value = "factories", allEntries = true)
	@Transactional
	public int deleteInactiveFactory(String factoryId) {
		log.info("Deleting inactive factory: {}", factoryId);
		return factoryRepository.deleteInactiveFactory(factoryId);
	}

	@CacheEvict(value = "factories", allEntries = true)
	@Transactional
	public void deleteFactory(String id) {
		log.info("Deleting factory: {}", id);
		factoryRepository.deleteById(id);
		log.info("Factory deleted successfully");
	}

	public List<Factory> getFactoryByName(String factoryName, String principalId) {
		List<Factory> list = factoryRepository.findByFactoryNameContainingAndPrincipalId(factoryName, principalId);
		return list;
	}
	
	@Transactional
	public Factory addOrUpdateFactory(Factory factory) {

	    factory.setPrincipalId("b6f87ad5-db08-4337-9cb4-6b818f43ba45");
	    factory.setCompanyId("b6f87ad5-db08-4337-9cb4-6b818f43ba67");

	    if (factory.getFactoryId() != null &&
	        factoryRepository.existsById(factory.getFactoryId())) {

	        Factory existing = factoryRepository.findById(factory.getFactoryId())
	                .orElseThrow(() -> new RuntimeException("Factory not found"));

	        existing.setFactoryName(factory.getFactoryName());
	        existing.setAddress(factory.getAddress());
	        existing.setDistrict(factory.getDistrict());
	        existing.setState(factory.getState());
	        existing.setPin(factory.getPin());
	        existing.setContactDetails(factory.getContactDetails());
	        existing.setStatus(factory.getStatus());
	        existing.setUpdateDate(LocalDateTime.now());
	        return factoryRepository.save(existing);
	    }

	    factory.setFactoryId(UUID.randomUUID().toString());
	    factory.setStatus("ACTIVE");
	    factory.setRecordDate(LocalDateTime.now());
	    return factoryRepository.save(factory);
	}

}
