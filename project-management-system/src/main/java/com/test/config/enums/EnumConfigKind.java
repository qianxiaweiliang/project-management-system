package com.test.config.enums;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public enum EnumConfigKind {
    /** 0: */
    SOURCE(0, "来源配置"),
    /** 1:禁用 */
    EMPLOYEE(1, "人员配置");

    private Integer code;
    private String name;

    public Integer getCode() {
        return code;
    }

    public String getName() {
        return name;
    }

    private EnumConfigKind(Integer code, String name) {
        this.code = code;
        this.name = name;
    }

    public static EnumConfigKind getEnum(Integer code) {
        for (EnumConfigKind enumValue : EnumConfigKind.values()) {
            if (enumValue.getCode().equals(code))
                return enumValue;
        }
        return null;
    }

    public static Integer[] getCodes() {
        EnumConfigKind[] values = EnumConfigKind.values();
        Integer[] result = new Integer[values.length];
        for (int i = 0; i < values.length; i++) {
            result[i] = values[i].getCode();
        }
        return result;
    }

    public static List<Map<String, Object>> convertEnum2list() {
        List<Map<String, Object>> list = new ArrayList<>();
        EnumConfigKind[] values = EnumConfigKind.values();
        for (int i = 0; i < values.length; i++) {
            Map<String, Object> map = new HashMap<>();
            map.put("code", values[i].getCode());
            map.put("name", values[i].getName());
            list.add(map);
        }
        return list;
    }
}
