package com.mopub.mobileads.util;

import org.apache.http.Header;
import org.apache.http.HttpResponse;

public class HttpResponses {
    public static String a(HttpResponse httpResponse, String str) {
        Header firstHeader = httpResponse.getFirstHeader(str);
        return firstHeader != null ? firstHeader.getValue() : null;
    }

    public static int b(HttpResponse httpResponse, String str) {
        String a = a(httpResponse, str);
        return a != null ? Integer.parseInt(a.trim()) : 0;
    }

    public static boolean c(HttpResponse httpResponse, String str) {
        return !"0".equals(a(httpResponse, str));
    }
}