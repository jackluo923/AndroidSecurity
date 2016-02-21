package com.jirbo.adcolony;

import java.security.MessageDigest;

class AeSimpleSHA1 {
    AeSimpleSHA1() {
    }

    private static String convertToHex(byte[] bArr) {
        StringBuilder stringBuilder = new StringBuilder();
        int length = bArr.length;
        int i = 0;
        while (i < length) {
            byte b = bArr[i];
            int i2 = (b >>> 4) & 15;
            int i3 = 0;
            while (true) {
                char c;
                c = (i2 < 0 || i2 > 9) ? (char) (i2 - 10 + 97) : (char) (i2 + 48);
                stringBuilder.append(c);
                int i4 = b & 15;
                i2 = i3 + 1;
                if (i3 >= 1) {
                    break;
                }
                i3 = i2;
                i2 = i4;
            }
            i++;
        }
        return stringBuilder.toString();
    }

    public static String sha1(String str) {
        MessageDigest instance = MessageDigest.getInstance("SHA-1");
        instance.update(str.getBytes("iso-8859-1"), 0, str.length());
        return convertToHex(instance.digest());
    }
}