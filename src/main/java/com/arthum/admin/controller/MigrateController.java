package com.arthum.admin.controller;

import com.arthum.admin.service.MigrateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class MigrateController {

    @Autowired
    MigrateService migrateService;

//    @GetMapping("/movefromDataToDataField")
//    @ResponseBody
//    public ResponseMessageOperation movefromDataToDataField() {
//        ResponseMessageOperation res=new ResponseMessageOperation();
//        try {
//
//            migrateService.migrateDateFileThread();
//            res.addMessage("successful");
//            return res;
//        } catch (Exception e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//            res.addError(e.getMessage());
//
//        }
//        res.addMessage("fail");
//        return null;
//    }
}
