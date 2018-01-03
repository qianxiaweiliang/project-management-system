package com.test.config.enums;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public enum EnumConfigStatus {
    /** 0:启用 */
    VALID(0, "启用"),
    /** 1:禁用 */
    INVALID(1, "禁用");

    private Integer code;
    private String name;

    public Integer getCode() {
        return code;
    }

    public String getName() {
        return name;
    }

    private EnumConfigStatus(Integer code, String name) {
        this.code = code;
        this.name = name;
    }

    public static EnumConfigStatus getEnum(Integer code) {
        for (EnumConfigStatus enumValue : EnumConfigStatus.values()) {
            if (enumValue.getCode().equals(code))
                return enumValue;
        }
        return null;
    }

    public static Integer[] getCodes() {
        EnumConfigStatus[] values = EnumConfigStatus.values();
        Integer[] result = new Integer[values.length];
        for (int i = 0; i < values.length; i++) {
            result[i] = values[i].getCode();
        }
        return result;
    }

    public static List<Map<String, Object>> convertEnum2list() {
        List<Map<String, Object>> list = new ArrayList<>();
        EnumConfigStatus[] values = EnumConfigStatus.values();
        for (int i = 0; i < values.length; i++) {
            Map<String, Object> map = new HashMap<>();
            map.put("code", values[i].getCode());
            map.put("name", values[i].getName());
            list.add(map);
        }
        return list;
    }
}
