package com.test.commom.util;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 日期工具类
 * 
 * @author yangxp
 */
public class DateUtil {

    private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

    /**
     * 描述：转换为字符串
     * 
     * @param timeStamp
     * @return
     * @return String
     * @exception
     * @createTime：2018年1月5日 下午1:53:09
     * @author: yangxp
     */
    public static String format2Str(Timestamp timeStamp) {

        long time = timeStamp.getTime();
        Date date = new Date(time);

        return sdf.format(date);
    }
}
