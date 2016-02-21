package com.yanex.emoticons;

import java.util.ArrayList;
import java.util.List;

public final class j {
    public static String a(List list) {
        String str = "";
        int i = 0;
        while (i < list.size()) {
            str = str + ((String) list.get(i)) + "\u00161";
            if (i < list.size() - 1) {
                str = str + "\u0015";
            }
            i++;
        }
        return str;
    }

    public static List a(String str) {
        List arrayList = new ArrayList();
        if (str != null) {
            String[] split = str.split("\u0015");
            int i = 0;
            while (i < split.length) {
                String[] split2 = split[i].split("\u0016");
                if (split2.length >= 2 && split2[0].length() > 0 && split2[1].length() > 0) {
                    arrayList.add(split2[0]);
                }
                i++;
            }
        }
        return arrayList;
    }
}