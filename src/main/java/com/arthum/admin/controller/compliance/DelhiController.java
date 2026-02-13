package com.arthum.admin.controller.compliance;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;

@RequestMapping("state/delhi/")
public class DelhiController {
    @GetMapping("/codewages/formI/excel")
    public ResponseEntity<Map<String,String>> codewagesFormIExcel(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formIV/excel")
    public ResponseEntity<Map<String,String> > codewagesForm4excel(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formIV/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formV/excel")
    public ResponseEntity<Map<String,String> > codewagesFormVexcel(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/codewages/formVII/pdf")
    public ResponseEntity<Map<String,String> > codewagesFormVIIpdf(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/rulessocialsociety/formIII/pdf")
    public ResponseEntity<Map<String,String> > rulessocialsocietyFormIIIpdf(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formII/excel")
    public ResponseEntity<Map<String,String> >oshwFormIIexcel(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formIII/pdf")
    public ResponseEntity<Map<String,String> >oshwFormIIIpdf(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formV/excel")
    public ResponseEntity<Map<String,String> >oshwFormVexcel(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formVII/pdf")
    public ResponseEntity<Map<String,String> >oshwFormVIIpdf(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formIX/pdf")
    public ResponseEntity<Map<String,String> >oshwFormIXpdf(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formX/excel")
    public ResponseEntity<Map<String,String> >oshwFormXexcel(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formXI/excel")
    public ResponseEntity<Map<String,String> >oshwFormXIexcel(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formXII/excel")
    public ResponseEntity<Map<String,String> >oshwFormXIIexcel(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formXIII/excel")
    public ResponseEntity<Map<String,String> >oshwFormXIIIexcel(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formXX/pdf")
    public ResponseEntity<Map<String,String> >oshwFormXXpdf(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
    @GetMapping("/oshw/formXXV/excel")
    public ResponseEntity<Map<String,String> >oshwFormXXVexcel(Map<String, Object> payload) {
        Map<String,String> response=new HashMap<>();
        System.out.println("odewages/formx/pdf: " + payload);
        return ResponseEntity.ok(response);
    }
}
