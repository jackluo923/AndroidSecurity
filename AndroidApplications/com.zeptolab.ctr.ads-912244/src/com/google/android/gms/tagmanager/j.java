package com.google.android.gms.tagmanager;

import com.millennialmedia.android.MMException;

class j {
    public static byte[] aX(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("purported base16 string has odd number of characters");
        }
        byte[] bArr = new byte[(length / 2)];
        int i = 0;
        while (i < length) {
            int digit = Character.digit(str.charAt(i), MMException.REQUEST_NOT_PERMITTED);
            int digit2 = Character.digit(str.charAt(i + 1), MMException.REQUEST_NOT_PERMITTED);
            if (digit != -1 && digit2 != -1) {
                bArr[i / 2] = (byte) (digit << 4 + digit2);
                i += 2;
            }
            throw new IllegalArgumentException("purported base16 string has illegal char");
        }
        return bArr;
    }

    public static String d(byte[] bArr) {
        StringBuilder stringBuilder = new StringBuilder();
        int length = bArr.length;
        int i = 0;
        while (i < length) {
            byte b = bArr[i];
            if ((b & 240) == 0) {
                stringBuilder.append("0");
            }
            stringBuilder.append(Integer.toHexString(b & 255));
            i++;
        }
        return stringBuilder.toString().toUpperCase();
    }
}