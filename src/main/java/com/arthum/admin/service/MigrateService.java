package com.arthum.admin.service;

import com.arthum.admin.entity.SalaryData;
import com.arthum.admin.entity.SalaryDataField;
import com.arthum.admin.entity.SalaryDataStatusTemp;
import com.arthum.admin.entity.SalaryFile;
import com.arthum.admin.repository.transactional.SalaryDataFieldRepository;
import com.arthum.admin.repository.transactional.SalaryDataRepository;
import com.arthum.admin.repository.transactional.SalaryDataStatusTempRepository;
import com.arthum.admin.repository.transactional.SalaryFileRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.*;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import javax.persistence.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
@Service
public class MigrateService {
    @Autowired
    SalaryDataRepository salaryDataRepository;
    @Autowired
    SalaryDataFieldRepository salaryDataFieldRepository;
    @Autowired
    SalaryFileRepository salaryFileRepository;
    @Autowired
    SalaryDataStatusTempRepository salaryDataStatusTempRepository;

    public void migrateDataFile() {
//        /Status0 = INIT, 1 = IN_PROGRESS, 2 = FAILED, 3 = COMPLETED /
        List<SalaryDataStatusTemp> tempList = salaryDataStatusTempRepository.findAll();
        List<SalaryFile> salaryFileList = salaryFileRepository.findAll();
        for (SalaryFile file : salaryFileList) {
            for (SalaryDataStatusTemp temp : tempList) {
                if (temp.getFileId().equals(file.getFileId())) {
                    LocalDateTime start = LocalDateTime.now();
                    Duration duration = Duration.between(start, temp.getStartAt());
                    if (temp.getStatus() == 3)
                        continue;
                    else if (duration.toHours() < 2)
                        continue;
                }
                startMigrate(file);
            }
        }

    }

    Future<?> future = null;
    ExecutorService executor = Executors.newSingleThreadExecutor();

    public void migrateDateFileThread() {
        future.cancel(true);  // sends interrupt
        executor.shutdownNow();
        Future<?> future = executor.submit(() -> {
            while (!Thread.currentThread().isInterrupted()) {
                migrateDataFile();
            }
        });

    }

    public static void main(String[] args) {
        MigrateService migrateService = new MigrateService();
        Map<String, Double> map = migrateService.parseJson("[{\"answer\":\"DHOOT8965\",\"title\":\"Employee Code\",\"mandatory\":true},{\"answer\":\"OM JAISWAL\",\"title\":\"Name\",\"mandatory\":true},{\"answer\":\"7887251114\",\"title\":\"Mobile\",\"mandatory\":true},{\"answer\":\"MALE\",\"title\":\"Gender\",\"mandatory\":true},{\"answer\":\"2025-04-06\",\"title\":\"Joining Date\",\"mandatory\":true},{\"answer\":\"tester 1\",\"title\":\"Employee Type\",\"mandatory\":true},{\"answer\":\"RAKESH JAISWAL\",\"title\":\"Father Name\",\"mandatory\":true},{\"answer\":\"923010064007570\",\"title\":\"Bank Account No\",\"mandatory\":true},{\"answer\":\"UTIB0000022\",\"title\":\"Bank IFSC\",\"mandatory\":true},{\"answer\":\"\",\"title\":\"UAN\",\"mandatory\":true},{\"answer\":\"\",\"title\":\"ESIC\",\"mandatory\":true}]");
        System.out.println("map=" + map);
        map = migrateService.parseJson("[{\"answer\":\"8.0\",\"title\":\"Month\",\"mandatory\":true},{\"answer\":\"26.0\",\"title\":\"Working Days\",\"mandatory\":true},{\"answer\":\"26.0\",\"title\":\"Present\",\"mandatory\":true}]");
        System.out.println("map=" + map);
        Map<String, Double> map2 = migrateService.parseJsonKeyBased("{\"EPF EPS DIFF REMITTED\":183.54,\"EPF WAGES\":5001,\"UAN\":\"\",\"GROSS WAGES\":11820,\"EPF CONTRI REMITTED\":600.12,\"REFUND OF ADVANCES\":\"\",\"MEMBER NAME\":\"MONU ANSARI\",\"EPS WAGES\":5001,\"EDLI WAGES\":5001,\"EPS CONTRI REMITTED\":416.58,\"NCP DAYS\":15}");
        System.out.println("map=" + map2);
    }

    private void startMigrate(SalaryFile file) {
        try {
            List<SalaryData> list = salaryDataRepository.findByFileId(file.getFileId());
            for (SalaryData data : list) {
                processAndSaveSalaryDataField(data);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void processAndSaveSalaryDataField(SalaryData data) {
        Map<String, Double> basicMap = parseJson(data.getBasicDetails());
        Map<String, Double> monthMap = parseJson(data.getMonthDetails());
        Map<String, Double> inputMap = parseJson(data.getInputDetails());
        Map<String, Double> fixedMap = parseJson(data.getInputDetails());
        Map<String, Double> earningMap = parseJson(data.getEarningDetails());
        Map<String, Double> deductionMap = parseJson(data.getDeductionDetails());
        Map<String, Double> expenseMap = parseJson(data.getExpenseDetails());
        Map<String, Double> incomeMap = parseJson(data.getIncomeDetails());
        Map<String, Double> grossSalaryMap = parseJson(data.getGrossSalaryDetails());
        Map<String, Double> pfChallanMap = parseJsonKeyBased(data.getPfChallanDetails());
        Map<String, Double> esicChallanMap = parseJsonKeyBased(data.getEsicChallanDetails());

        List<SalaryDataField> list = create("BASIC_DETAILS", basicMap, data.getDataId(), data.getFileId());
        list.addAll(create("MONTH_DETAILS", monthMap, data.getDataId(), data.getFileId()));
        list.addAll(create("INPUT_DETAILS", inputMap, data.getDataId(), data.getFileId()));
        list.addAll(create("FIXED_INPUT_DETAILS", fixedMap, data.getDataId(), data.getFileId()));
        list.addAll(create("EARNING_DETAILS", earningMap, data.getDataId(), data.getFileId()));
        list.addAll(create("DEDUCTION_DETAILS", deductionMap, data.getDataId(), data.getFileId()));
        list.addAll(create("EXPENSE_DETAILS", expenseMap, data.getDataId(), data.getFileId()));
        list.addAll(create("INCOME_DETAILS", incomeMap, data.getDataId(), data.getFileId()));

        list.addAll(create("GROSS_SALARY_DETAILS", grossSalaryMap, data.getDataId(), data.getFileId()));
        list.addAll(create("PF_ESIC", pfChallanMap, data.getDataId(), data.getFileId()));
        list.addAll(create("ESIC_CHALLAN_DETAILS", esicChallanMap, data.getDataId(), data.getFileId()));
        salaryDataFieldRepository.saveAll(list);
    }

    private List<SalaryDataField> create(String preFix, Map<String, Double> map, Integer dataId, Integer fileId) {


        List<SalaryDataField> listData = new ArrayList<SalaryDataField>();
        List<SalaryDataField> list = salaryDataFieldRepository.findByDataId(dataId);
        if (!list.isEmpty()) {
            salaryDataFieldRepository.deleteAll(list);
        }
        for (Map.Entry<String, Double> entry : map.entrySet()) {
            SalaryDataField salaryData = new SalaryDataField();
            salaryData.setDataId(dataId.longValue());
            salaryData.setDatatype("DOUBLE");
           // salaryData.setFileId(fileId);
            salaryData.setField(preFix + "_" + entry.getKey());
            salaryData.setValueDeci(new BigDecimal(entry.getValue()));
            listData.add(salaryData);
        }
        return listData;
    }

    Map<String, Double> parseJson(String json) {
        Map<String, Double> map = new HashMap<String, Double>();
        ObjectMapper mapper = new ObjectMapper();
        JSONArray array = new JSONArray(json);
        for (int i = 0; i < array.length(); i++) {
            JSONObject obj = array.getJSONObject(i);
            Double answer = 0d;
            String title = obj.getString("title");
            if (obj.has("answer"))
                answer = obj.getDouble("answer");
            else if (obj.has("amount"))
                answer = obj.getDouble("amount");
            //   boolean mandatory = obj.getBoolean("mandatory");
            map.put(title, answer);
        }
        return map;
    }

    Map<String, Double> parseJsonKeyBased(String json) {
        Map<String, Double> map = new HashMap<String, Double>();
        JSONObject obj = new JSONObject(json);
        Set<String> keySet = obj.keySet();
        for (String key : keySet) {
            map.put(key, obj.getDouble(key));
        }
        return map;
    }

}