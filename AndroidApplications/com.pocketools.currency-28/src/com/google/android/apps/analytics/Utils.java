package com.google.android.apps.analytics;

import android.net.Uri;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

class Utils {
    Utils() {
    }

    static String addQueueTimeParameter(String str, long j) {
        String queryParameter = Uri.parse(str).getQueryParameter("utmht");
        if (queryParameter == null) {
            return str;
        }
        try {
            return str + "&utmqt=" + (j - Long.valueOf(Long.parseLong(queryParameter)).longValue());
        } catch (NumberFormatException e) {
            Log.e(GoogleAnalyticsTracker.LOG_TAG, "Error parsing utmht parameter: " + e.toString());
            return str;
        }
    }

    static Map<String, String> parseURLParameters(String str) {
        Map<String, String> hashMap = new HashMap();
        String[] split = str.split("&");
        int length = split.length;
        int i = 0;
        while (i < length) {
            String[] split2 = split[i].split("=");
            if (split2.length > 1) {
                hashMap.put(split2[0], split2[1]);
            } else if (split2.length == 1) {
                hashMap.put(split2[0], null);
            }
            i++;
        }
        return hashMap;
    }
}