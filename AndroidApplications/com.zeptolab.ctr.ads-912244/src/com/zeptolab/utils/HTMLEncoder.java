package com.zeptolab.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class HTMLEncoder {
    public static final String ENCODE_NAME_DEFAULT = "UTF-8";
    private static String encodingName;

    static {
        encodingName = ENCODE_NAME_DEFAULT;
    }

    public static String encode(String str) {
        try {
            return URLEncoder.encode(str, encodingName);
        } catch (UnsupportedEncodingException e) {
            return str;
        }
    }

    public static void setEncoding(String str) {
        encodingName = str;
    }
}