package com.arthum.admin.controller;

import com.arthum.admin.entity.Factory;
import com.arthum.admin.service.FactoryService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/web/factories")
public class FactoryWebController {
    private static final Logger log = LoggerFactory.getLogger(FactoryWebController.class);
    private final FactoryService factoryService;

    public FactoryWebController(FactoryService factoryService) {
        this.factoryService = factoryService;
    }

    @GetMapping
    public String listFactories(@RequestParam(defaultValue = "0") int page,
                                @RequestParam(required = false) String factoryId,
                                @RequestParam(required = false) String factoryName,
                                @RequestParam(required = false) String address,
                                Model model) {
        Page<Factory> factories;
        if ((factoryId != null && !factoryId.isEmpty()) ||
                (factoryName != null && !factoryName.isEmpty()) ||
                (address != null && !address.isEmpty())) {
            factories = factoryService.searchFactories(factoryId, factoryName, address, page, 10);
        } else {
            factories = factoryService.getFactoriesPaginated(page, 10);
        }

        model.addAttribute("factories", factories);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", factories.getTotalPages());
        model.addAttribute("factoryId", factoryId);
        model.addAttribute("factoryName", factoryName);
        model.addAttribute("address", address);
        return "factory-list";
    }

    @GetMapping("/create")
    public String showCreateForm(Model model) {
        model.addAttribute("factory", new Factory());
        return "factory-form";
    }

    @PostMapping("/save")
    public String saveFactory(@ModelAttribute Factory factory) {
        log.info("Web: Save factory request");
        factoryService.createFactory(factory);
        return "redirect:/web/factories";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable String id, Model model) {
        log.info("Web: Edit factory form - ID: {}", id);
        Factory factory = factoryService.getFactoryById(id);
        if (factory == null) {
            factory = new Factory();
        }
        model.addAttribute("factory", factory);
        return "factory-form";
    }

    @PostMapping("/update/{id}")
    public String updateFactory(@PathVariable String id, @ModelAttribute Factory factory) {
        log.info("Web: Update factory request - ID: {}", id);
        factoryService.updateFactory(id, factory);
        return "redirect:/web/factories";
    }

    @GetMapping("/delete/{id}")
    public String deleteFactory(@PathVariable String id) {
        log.info("Web: Delete factory request - ID: {}", id);
        factoryService.deleteFactory(id);
        return "redirect:/web/factories";
    }



    @GetMapping("/dashboard")
    public String dashboards(Model model) {
        return "masterdashboard";
    }


    @GetMapping("/viewFactories")
    public String openFactoryPage(Model model) {
        return "factories";
    }

}
