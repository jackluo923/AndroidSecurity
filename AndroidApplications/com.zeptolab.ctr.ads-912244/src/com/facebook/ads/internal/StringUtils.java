package com.facebook.ads.internal;

import com.millennialmedia.android.MMException;
import java.security.MessageDigest;

public class StringUtils {
    public static boolean isNullOrEmpty(String str) {
        return str == null || str.length() <= 0;
    }

    public static String md5(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes("utf-8"));
            StringBuilder stringBuilder = new StringBuilder();
            int i = 0;
            while (i < digest.length) {
                stringBuilder.append(Integer.toString(digest[i] & 255 + 256, MMException.REQUEST_NOT_PERMITTED).substring(1));
                i++;
            }
            return stringBuilder.toString();
        } catch (Exception e) {
            return null;
        }
    }
}