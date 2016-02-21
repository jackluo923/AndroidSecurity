package com.google.android.apps.analytics;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class AnalyticsParameterEncoder {
    private AnalyticsParameterEncoder() {
    }

    public static String encode(String str) {
        return encode(str, "UTF-8");
    }

    static String encode(String str, String str2) {
        try {
            return URLEncoder.encode(str, str2).replace("+", "%20");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError("URL encoding failed for: " + str);
        }
    }
}