package com.google.android.gms.internal;

import java.util.HashMap;
import java.util.Iterator;

public class fq {
    public static void a(StringBuilder stringBuilder, HashMap hashMap) {
        stringBuilder.append("{");
        Iterator it = hashMap.keySet().iterator();
        int i = 1;
        while (it.hasNext()) {
            boolean z;
            String str = (String) it.next();
            if (i == 0) {
                stringBuilder.append(",");
                int i2 = i;
            } else {
                z = 0;
            }
            String str2 = (String) hashMap.get(str);
            stringBuilder.append("\"").append(str).append("\":");
            if (str2 == null) {
                stringBuilder.append("null");
            } else {
                stringBuilder.append("\"").append(str2).append("\"");
            }
            boolean z2 = z;
        }
        stringBuilder.append("}");
    }
}