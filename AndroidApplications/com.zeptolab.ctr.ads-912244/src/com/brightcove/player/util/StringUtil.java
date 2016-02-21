package com.brightcove.player.util;

import java.util.Arrays;
import java.util.List;

public class StringUtil {
    public static boolean isEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static String join(List list, String str) {
        if (list == null || list.size() == 0) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < list.size()) {
            stringBuilder.append((String) list.get(i));
            if (i < list.size() - 1) {
                stringBuilder.append(str);
            }
            i++;
        }
        return stringBuilder.toString();
    }

    public static String join(String[] strArr, String str) {
        return (strArr == null || strArr.length == 0) ? null : join(Arrays.asList(strArr), str);
    }
}