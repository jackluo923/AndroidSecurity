package com.mopub.mobileads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import org.json.JSONObject;
import org.json.JSONTokener;

public class Utils {
    private Utils() {
    }

    public static String a(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuffer stringBuffer = new StringBuffer();
            int i = 0;
            while (i < digest.length) {
                stringBuffer.append(Integer.toHexString((digest[i] & 255) | 256).substring(1));
                i++;
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e) {
            return "";
        }
    }

    public static String a(Map map) {
        if (map == null) {
            return "{}";
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("{");
        Iterator it = map.entrySet().iterator();
        int i = 1;
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (i == 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append("\"");
            stringBuilder.append((String) entry.getKey());
            stringBuilder.append("\":\"");
            stringBuilder.append((String) entry.getValue());
            stringBuilder.append("\"");
            i = 0;
        }
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    public static Map b(String str) {
        Map hashMap = new HashMap();
        if (str == null || str.equals("")) {
            return hashMap;
        }
        JSONObject jSONObject = (JSONObject) new JSONTokener(str).nextValue();
        Iterator keys = jSONObject.keys();
        while (keys.hasNext()) {
            String str2 = (String) keys.next();
            hashMap.put(str2, jSONObject.getString(str2));
        }
        return hashMap;
    }
}