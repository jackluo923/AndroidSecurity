package com.google.ads;

import android.net.Uri;

public class af {
    public static final Uri a;
    public static final Uri b;
    public static final String[] c;
    public static final String[] d;

    static {
        a = Uri.parse("content://com.google.plus.platform/ads");
        b = Uri.parse("content://com.google.plus.platform/token");
        c = new String[]{"_id", "has_plus1"};
        d = new String[]{"drt"};
    }
}