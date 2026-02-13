package com.arthum.admin.controller.compliance;

import com.arthum.admin.service.compliance.compliance.CenterComplianceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("center/all/")
public class CenterController {
    @Autowired
    CenterComplianceService centerService;
    //center/all/A Code On Wages/Form X/
    @GetMapping("/codewages/formI/pdf")
    public ResponseEntity<Map<String,String> > codewagesFormIPdf(Map<String, Object> payload) {
        Map<String,String> response=centerService.getcodewagesFormIPdf();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formI/excel")
    public ResponseEntity<List<Map<String,String>> > codewagesFormIexcel(Map<String, Object> payload) {
        List<Map<String,String>> response=centerService.codewagesFormIexcel();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formIV/pdf")
    public ResponseEntity<Map<String,String> > codewagesFormIVPdf(Map<String, Object> payload) {
        Map<String,String> response=centerService.codewagesFormIVPdf();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formIV/excel")
    public ResponseEntity<List<Map<String,String> >> codewagesForm4excel(Map<String, Object> payload) {
        List<Map<String,String>> response=centerService.codewagesForm4excel();
        System.out.println("odewages/formIV/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formV/pdf")
    public ResponseEntity<Map<String,String> > codewagesFormVpdf(Map<String, Object> payload) {
        Map<String,String> response=centerService.codewagesFormVpdf();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formVII/pdf")
    public ResponseEntity<Map<String,String> > codewagesFormVIIpdf(Map<String, Object> payload) {
        Map<String,String> response=centerService.codewagesFormVIIpdf();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formIX/pdf")
    public ResponseEntity<Map<String,String> > codewagesFormIXpdf(Map<String, Object> payload) {
        Map<String,String> response=centerService.codewagesFormIXpdf();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formIX/pdf")
    public ResponseEntity<List<Map<String,String> >> codewagesFormIXexcel(Map<String, Object> payload) {
        List<Map<String,String>> response=centerService.codewagesForm4excel();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/rulessocialsociety/formIII/pdf")
    public ResponseEntity<Map<String,String> > rulessocialsocietyFormIIIpdf(Map<String, Object> payload) {
        Map<String,String> response=centerService.rulessocialsocietyFormIIIpdf();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formIII/pdf")
    public ResponseEntity<Map<String,String> >oshwFormIIIpdf(Map<String, Object> payload) {
        Map<String,String> response=centerService.oshwFormIIIpdf();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formIV/pdf")
    public ResponseEntity<Map<String,String> >oshwFormIVpdf(Map<String, Object> payload) {
        Map<String,String> response=centerService.oshwFormIVpdf();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formV/pdf")
    public ResponseEntity<Map<String,String> >oshwFormVpdf(Map<String, Object> payload) {
        Map<String,String> response=centerService.oshwFormVpdf();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formVI/pdf")
    public ResponseEntity<Map<String,String> >oshwFormVIpdf(Map<String, Object> payload) {
        Map<String,String> response=centerService.oshwFormVIpdf();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formVII/pdf")
    public ResponseEntity<Map<String,String> >oshwFormVIIpdf(Map<String, Object> payload) {
        Map<String,String> response=centerService.oshwFormVIIpdf();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formVIIIA/excel")
    public ResponseEntity<List<Map<String,String>> >oshwFormVIIIAexcel(Map<String, Object> payload) {
        List<Map<String,String>> response=centerService.oshwFormVIIIAexcel();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formVIIIB/excel")
    public ResponseEntity<List<Map<String,String>> >oshwFormVIIIBexcel(Map<String, Object> payload) {
        List<Map<String,String>> response=centerService.oshwFormVIIIBexcel();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formVIIIC/excel")
    public ResponseEntity< List<Map<String,String>> >oshwFormVIIICexcel(Map<String, Object> payload) {
        List<Map<String,String>> response=centerService.oshwFormVIIICexcel();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formVIII/excel")
    public ResponseEntity< List<Map<String,String>>  >oshwFormVIIIexcel(Map<String, Object> payload) {
        List<Map<String,String>> response=centerService.oshwFormVIIIexcel();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formX/excel")
    public ResponseEntity<List<Map<String,String>>>oshwFormXexcel(Map<String, Object> payload) {
        List<Map<String,String>> response=centerService.oshwFormXexcel();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formXI/excel")
    public ResponseEntity<List<Map<String,String>> >oshwFormXIexcel(Map<String, Object> payload) {
        List<Map<String,String>> response=centerService.oshwFormXIexcel();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formXIV/excel")
    public ResponseEntity<List<Map<String,String>> >oshwFormXIVexcel(Map<String, Object> payload) {
        List<Map<String,String>> response=centerService.oshwFormXIVexcel();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }

}
