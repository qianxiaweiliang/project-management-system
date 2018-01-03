package com.test.project.enums;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public enum EnumProjectExport {
    /** 0:导出excel */
    EXCEL(0, "导出excel"),
    /** 1:导出模板 */
    TEMPLATE(1, "导出模板");

    private Integer code;
    private String name;

    public Integer getCode() {
        return code;
    }

    public String getName() {
        return name;
    }

    private EnumProjectExport(Integer code, String name) {
        this.code = code;
        this.name = name;
    }

    public static EnumProjectExport getEnum(Integer code) {
        for (EnumProjectExport enumValue : EnumProjectExport.values()) {
            if (enumValue.getCode().equals(code))
                return enumValue;
        }
        return null;
    }

    public static Integer[] getCodes() {
        EnumProjectExport[] values = EnumProjectExport.values();
        Integer[] result = new Integer[values.length];
        for (int i = 0; i < values.length; i++) {
            result[i] = values[i].getCode();
        }
        return result;
    }

    public static List<Map<String, Object>> convertEnum2list() {
        List<Map<String, Object>> list = new ArrayList<>();
        EnumProjectExport[] values = EnumProjectExport.values();
        for (int i = 0; i < values.length; i++) {
            Map<String, Object> map = new HashMap<>();
            map.put("code", values[i].getCode());
            map.put("name", values[i].getName());
            list.add(map);
        }
        return list;
    }
}
