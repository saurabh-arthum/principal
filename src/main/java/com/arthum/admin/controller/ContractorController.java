package com.arthum.admin.controller;

import com.arthum.admin.controller.helper.ContractorDashboardSummary;
import com.arthum.admin.controller.helper.ContractorListDTO;
import com.arthum.admin.controller.helper.InputObject;
import com.arthum.admin.service.ContractorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/dashboard")
public class ContractorController {

    @Autowired
    private ContractorService service;

    @GetMapping("/summary")
    public ResponseEntity<ContractorDashboardSummary> getSummary() {
        String principalId="1000";
        return ResponseEntity.ok(service.getSummary( principalId));
    }
    @PostMapping("/list")
    public ResponseEntity<List<ContractorListDTO>> list(
            @RequestBody InputObject payload) {

        return ResponseEntity.ok(
                service.getContractors(payload)
        );
    }
    @PostMapping("/contractor")
    public ResponseEntity<List<ContractorListDTO>> contractor(
            @RequestBody InputObject payload) {

        return ResponseEntity.ok(
                service.getContractor(payload)
        );
    }
}