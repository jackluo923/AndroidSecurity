package com.google.ads.util;

public class j {
    static final /* synthetic */ boolean a;

    static {
        a = !j.class.desiredAssertionStatus();
    }

    private j() {
    }

    public static byte[] a(String str) {
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        l lVar = new l(new byte[((length * 3) / 4)]);
        if (!lVar.a(bytes, length)) {
            throw new IllegalArgumentException("bad base-64");
        } else if (lVar.b == lVar.a.length) {
            return lVar.a;
        } else {
            Object obj = new Object[lVar.b];
            System.arraycopy(lVar.a, 0, obj, 0, lVar.b);
            return obj;
        }
    }
}