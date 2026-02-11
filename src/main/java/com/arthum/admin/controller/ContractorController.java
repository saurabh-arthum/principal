package com.arthum.admin.controller;

import com.arthum.admin.service.ContractorService;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
@RestController
@RequestMapping("/web/contractor")
@Tag(name = "Contractor", description = "Contractor management APIs")
public class ContractorController {

    private static final Logger log = LoggerFactory.getLogger(ContractorController.class);

    @Autowired
    ContractorService contractorService;

    



}
