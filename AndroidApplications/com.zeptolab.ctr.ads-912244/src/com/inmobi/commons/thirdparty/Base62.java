package com.inmobi.commons.thirdparty;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;

public class Base62 {
    public static final String ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    public static final int BASE;

    static {
        BASE = ALPHABET.length();
    }

    private Base62() {
    }

    private static int a(int i, int i2) {
        return ((int) Math.pow((double) BASE, (double) i2)) * i;
    }

    private static int a(char[] cArr) {
        int i = 0;
        int length = cArr.length - 1;
        while (length >= 0) {
            i += a(ALPHABET.indexOf(cArr[length]), length);
            length--;
        }
        return i;
    }

    private static long a(long j, StringBuilder stringBuilder) {
        stringBuilder.append(ALPHABET.charAt((int) (j % ((long) BASE))));
        return j / ((long) BASE);
    }

    public static String fromBase10(long j) {
        try {
            StringBuilder stringBuilder = new StringBuilder(AdTrackerConstants.BLANK);
            while (j > 0) {
                j = a(j, stringBuilder);
            }
            return stringBuilder.reverse().toString();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to convert to base 62", e);
            return null;
        }
    }

    public static int toBase10(String str) {
        return a(new StringBuilder(str).reverse().toString().toCharArray());
    }
}