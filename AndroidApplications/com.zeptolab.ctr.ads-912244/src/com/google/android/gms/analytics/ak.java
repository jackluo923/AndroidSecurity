package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.zeptolab.utils.HTMLEncoder;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

class ak {
    private static final char[] uR;

    static {
        uR = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    public static Map I(String str) {
        Map hashMap = new HashMap();
        String[] split = str.split("&");
        int length = split.length;
        int i = 0;
        while (i < length) {
            String[] split2 = split[i].split("=");
            if (split2.length > 1) {
                hashMap.put(split2[0], split2[1]);
            } else if (split2.length == 1 && split2[0].length() != 0) {
                hashMap.put(split2[0], null);
            }
            i++;
        }
        return hashMap;
    }

    public static String J(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.contains("?")) {
            String[] split = str.split("[\\?]");
            if (split.length > 1) {
                str = split[1];
            }
        }
        if (str.contains("%3D")) {
            try {
                str = URLDecoder.decode(str, HTMLEncoder.ENCODE_NAME_DEFAULT);
            } catch (UnsupportedEncodingException e) {
                return null;
            }
        } else if (!str.contains("=")) {
            return null;
        }
        Map I = I(str);
        String[] strArr = new String[]{"dclid", "utm_source", "gclid", "utm_campaign", "utm_medium", "utm_term", "utm_content", "utm_id", "gmob_t"};
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < strArr.length) {
            if (!TextUtils.isEmpty((CharSequence) I.get(strArr[i]))) {
                if (stringBuilder.length() > 0) {
                    stringBuilder.append("&");
                }
                stringBuilder.append(strArr[i]).append("=").append((String) I.get(strArr[i]));
            }
            i++;
        }
        return stringBuilder.toString();
    }

    public static double a(String str, double d) {
        if (str == null) {
            return d;
        }
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException e) {
            return d;
        }
    }

    static String a(Locale locale) {
        if (locale == null || TextUtils.isEmpty(locale.getLanguage())) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(locale.getLanguage().toLowerCase());
        if (!TextUtils.isEmpty(locale.getCountry())) {
            stringBuilder.append("-").append(locale.getCountry().toLowerCase());
        }
        return stringBuilder.toString();
    }

    public static void a(Map map, String str, String str2) {
        if (!map.containsKey(str)) {
            map.put(str, str2);
        }
    }

    public static boolean d(String str, boolean z) {
        if (str == null) {
            return z;
        }
        if (str.equalsIgnoreCase("true") || str.equalsIgnoreCase("yes") || str.equalsIgnoreCase("1")) {
            return true;
        }
        return (str.equalsIgnoreCase("false") || str.equalsIgnoreCase("no") || str.equalsIgnoreCase("0")) ? false : z;
    }

    static String s(boolean z) {
        return z ? "1" : "0";
    }
}