package com.test.commom.util;

/**
 * 日期字符串工具类
 * 
 * @author yangxp
 */
public class StringUtil {

    public static boolean isNotNull(String str) {

        if (str != null && !"".equals(str.trim())) {
            return true;
        }

        return false;
    }

    public static boolean isNull(String str) {

        if (str == null || "".equals(str.trim())) {
            return true;
        }

        return false;
    }
}
