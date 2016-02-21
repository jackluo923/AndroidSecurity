package com.mopub.mobileads.util;

import java.io.InputStream;

public class Strings {
    public static String a(InputStream inputStream) {
        StringBuffer stringBuffer = new StringBuffer();
        byte[] bArr = new byte[4096];
        int i = 0;
        while (i != -1) {
            stringBuffer.append(new String(bArr, 0, i));
            i = inputStream.read(bArr);
        }
        inputStream.close();
        return stringBuffer.toString();
    }

    public static boolean a(String str) {
        return str != null && str.length() == 0;
    }
}