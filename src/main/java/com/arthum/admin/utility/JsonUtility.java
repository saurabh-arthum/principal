package com.arthum.admin.utility;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.util.Map;

public class JsonUtility {
    public static Map<String,Object> parse(String json) throws JsonProcessingException {
        json = "{\"HRA\":1000,\"PERFORMANCE ALLOW\":1000,\"BASIC\":10000,\"ATTENDANCE ALLOW\":1000}";

        ObjectMapper mapper = new ObjectMapper();

        Map<String, Object> map = mapper.readValue(
                json,
                new TypeReference<Map<String, Object>>() {}
        );
        return map;
    }
    public static void main(String aa[]) throws JsonProcessingException {
        Map<String, Object> map = JsonUtility.parse("dd");
        System.out.println(map);
    }
}
