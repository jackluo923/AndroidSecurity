package com.flurry.sdk;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class cw {
    private static final String a;

    static {
        a = cw.class.getSimpleName();
    }

    public Map a(String str) {
        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "Parsing referrer map");
        if (str == null) {
            return Collections.emptyMap();
        }
        Map hashMap = new HashMap();
        String[] split = str.split("&");
        int length = split.length;
        int i = 0;
        while (i < length) {
            String[] split2 = split[i].split("=");
            if (split2.length != 2) {
                el.a((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, a, "Invalid referrer Element: " + split[i] + " in referrer tag " + str);
            } else {
                String decode = URLDecoder.decode(split2[0]);
                String decode2 = URLDecoder.decode(split2[1]);
                if (hashMap.get(decode) == null) {
                    hashMap.put(decode, new ArrayList());
                }
                ((List) hashMap.get(decode)).add(decode2);
            }
            i++;
        }
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, a, "entry: " + ((String) entry.getKey()) + "=" + entry.getValue());
        }
        StringBuilder stringBuilder = new StringBuilder();
        if (hashMap.get("utm_source") == null) {
            stringBuilder.append("Campaign Source is missing.\n");
        }
        if (hashMap.get("utm_medium") == null) {
            stringBuilder.append("Campaign Medium is missing.\n");
        }
        if (hashMap.get("utm_campaign") == null) {
            stringBuilder.append("Campaign Name is missing.\n");
        }
        if (stringBuilder.length() > 0) {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR, a, "Detected missing referrer keys : " + stringBuilder.toString());
        }
        return hashMap;
    }
}