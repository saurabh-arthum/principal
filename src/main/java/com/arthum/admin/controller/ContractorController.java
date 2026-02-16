package com.arthum.admin.controller;

import com.arthum.admin.controller.helper.ContractorDashboardSummary;
import com.arthum.admin.controller.helper.ContractorDto;
import com.arthum.admin.controller.helper.ContractorListDTO;
import com.arthum.admin.controller.helper.InputObject;
import com.arthum.admin.service.ContractorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/controller")
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
}
//    @PostMapping("/save")
//    public ResponseEntity<ContractorDto> save(
//            @RequestBody ContractorDto payload) {
//
//        return ResponseEntity.ok(
//                service.saveContractors(payload)
//        );
//    }
    