package com.arthum.admin.controller;

import com.arthum.admin.entity.Factory;
import com.arthum.admin.helper.RestResponse;
import com.arthum.admin.service.FactoryService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/factories")
@Tag(name = "Factory", description = "Factory management APIs")
public class FactoryController {
	private static final Logger log = LoggerFactory.getLogger(FactoryController.class);
	private final FactoryService factoryService;

	public FactoryController(FactoryService factoryService) {
		this.factoryService = factoryService;
	}

	@Operation(summary = "Get all factories (read-only datasource)")
	@GetMapping("/readonly")
	public List<Factory> getFactoriesReadOnly() {
		log.info("REST: Get all factories (read-only)");
		return factoryService.getAllFactoriesReadOnly();
	}

	@Operation(summary = "Get factories by state (read-only datasource)")
	@GetMapping("/readonly/state/{state}")
	public List<Factory> getFactoriesByState(@PathVariable String state) {
		return factoryService.getFactoriesByState(state);
	}

	@GetMapping("/readonly/active")
	public RestResponse getActiveFactories() {
	    List<Factory> list = factoryService.getActiveFactories();
	    RestResponse res = new RestResponse();
	    res.setStatus(200);
	    res.setMessage("Factories fetched successfully");
	    res.setData(list);
	    return res;
	}


	@Operation(summary = "Get all factories (transactional datasource)")
	@GetMapping
	public List<Factory> getFactories() {
		return factoryService.getAllFactories();
	}

	@PostMapping("/create")
	public RestResponse createFactory(@RequestBody Factory factory) {
	    System.out.println(factory);
	    Factory fact = factoryService.createFactory(factory);
	    RestResponse res = new RestResponse();
	    res.setStatus(201);
	    res.setMessage("Factory added successfully");
	    res.setData(fact);

	    return res;
	}


	@Operation(summary = "Update factory")
	@PutMapping("/{id}")
	public Factory updateFactory(@PathVariable String id, @RequestBody Factory factory) {
		log.info("REST: Update factory request - ID: {}", id);
		return factoryService.updateFactory(id, factory);
	}

	@Operation(summary = "Update factory status")
	@PutMapping("/{id}/status")
	public ResponseEntity<Integer> updateFactoryStatus(@PathVariable String id, @RequestParam String status) {
		int updated = factoryService.updateFactoryStatus(id, status);
		return ResponseEntity.ok(updated);
	}

	@Operation(summary = "Delete inactive factory")
	@DeleteMapping("/inactive/{id}")
	public ResponseEntity<Integer> deleteInactiveFactory(@PathVariable String id) {
		int deleted = factoryService.deleteInactiveFactory(id);
		return ResponseEntity.ok(deleted);
	}
}
