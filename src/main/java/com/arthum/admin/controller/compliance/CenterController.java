package com.arthum.admin.controller.compliance;

import com.arthum.admin.controller.compliance.helper.ComplianceInputObject;
import com.arthum.admin.service.compliance.compliance.CenterComplianceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("center/all/")
public class CenterController {
    @Autowired
    CenterComplianceService centerService;
    //center/all/A Code On Wages/Form X/
    @GetMapping("/codewages/formI/pdf")
    public ResponseEntity<Map<String,Object> > codewagesFormIPdf( @RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.getcodewagesFormIPdf(inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formI/excel")
    public ResponseEntity<Map<String,Object> > codewagesFormIexcel( @RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.codewagesFormIexcel( inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formIV/pdf")
    public ResponseEntity<Map<String,Object> > codewagesFormIVPdf(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.codewagesFormIVPdf();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formIV/excel")
    public ResponseEntity<Map<String,Object> > codewagesForm4excel(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.codewagesForm4excel(inputObject);
        System.out.println("odewages/formIV/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formV/pdf")
    public ResponseEntity<Map<String,Object> > codewagesFormVpdf(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject ComplianceInputObject =new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.codewagesFormVpdf(ComplianceInputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formVII/pdf")
    public ResponseEntity<Map<String,Object> > codewagesFormVIIpdf(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.codewagesFormVIIpdf(inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formIX/pdf")
    public ResponseEntity<Map<String,Object> > codewagesFormIXpdf(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.codewagesFormIXpdf(inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formIX/excel")
    public ResponseEntity<Map<String,Object>> codewagesFormIXexcel(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject ComplianceInputObject =new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.codewagesFormIXexcel(ComplianceInputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/rulessocialsociety/formIII/pdf")
    public ResponseEntity<Map<String,Object> > rulessocialsocietyFormIIIpdf(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.rulessocialsocietyFormIIIpdf(inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formIII/pdf")
    public ResponseEntity<Map<String,Object> >oshwFormIIIpdf(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.oshwFormIIIpdf(inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formIV/pdf")
    public ResponseEntity<Map<String,Object> >oshwFormIVpdf(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.oshwFormIVpdf(inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formV/pdf")
    public ResponseEntity<Map<String,Object> >oshwFormVpdf(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.oshwFormVpdf(inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formVI/pdf")
    public ResponseEntity<Map<String,Object> >oshwFormVIpdf(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.oshwFormVIpdf(inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formVII/pdf")
    public ResponseEntity<Map<String,Object> >oshwFormVIIpdf(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.oshwFormVIIpdf(inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formVIIIA/excel")
    public ResponseEntity<Map<String,Object> >oshwFormVIIIAexcel(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
       Map<String,Object> response=centerService.oshwFormVIIIAexcel(inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formVIIIB/excel")
    public ResponseEntity<Map<String,Object>>oshwFormVIIIBexcel(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject ComplianceInputObject =new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.oshwFormVIIIBexcel(ComplianceInputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formVIIIC/excel")
    public ResponseEntity< Map<String,Object> >oshwFormVIIICexcel(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.oshwFormVIIICexcel(inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formVIII/excel")
    public ResponseEntity< Map<String,Object>  >oshwFormVIIIexcel(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.oshwFormVIIIexcel(inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formX/excel")
    public ResponseEntity<Map<String,Object>>oshwFormXexcel(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.oshwFormXexcel(inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formXI/excel")
    public ResponseEntity<Map<String,Object> >oshwFormXIexcel(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.oshwFormXIexcel(inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formXIV/excel")
    public ResponseEntity<Map<String,Object> >oshwFormXIVexcel(@RequestBody Map<String, Object> payload) {
        ComplianceInputObject inputObject=new ComplianceInputObject(payload);
        Map<String,Object> response=centerService.oshwFormXIVexcel(inputObject);
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }

}
