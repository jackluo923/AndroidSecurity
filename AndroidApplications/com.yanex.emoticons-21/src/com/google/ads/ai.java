package com.google.ads;

import android.content.Context;
import android.net.Uri;

public final class ai {
    private String a;
    private String b;
    private String[] c;
    private ae d;
    private ad e;

    public ai(ae aeVar) {
        this.a = "googleads.g.doubleclick.net";
        this.b = "/pagead/ads";
        this.c = new String[]{".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
        this.e = new ad();
        this.d = aeVar;
    }

    private Uri a(Uri uri, Context context, String str) {
        try {
            if (uri.getQueryParameter("ms") != null) {
                throw new aj("Query parameter already exists: ms");
            }
            String a = this.d.a(context, str);
            String str2 = "ms";
            String toString = uri.toString();
            int indexOf = toString.indexOf("&adurl");
            if (indexOf == -1) {
                indexOf = toString.indexOf("?adurl");
            }
            return indexOf != -1 ? Uri.parse(new StringBuilder(toString.substring(0, indexOf + 1)).append(str2).append("=").append(a).append("&").append(toString.substring(indexOf + 1)).toString()) : uri.buildUpon().appendQueryParameter(str2, a).build();
        } catch (UnsupportedOperationException e) {
            throw new aj("Provided Uri is not in a valid state");
        }
    }

    public final Uri a(Uri uri, Context context) {
        try {
            return a(uri, context, uri.getQueryParameter("ai"));
        } catch (UnsupportedOperationException e) {
            throw new aj("Provided Uri is not in a valid state");
        }
    }

    public final void a(String str) {
        this.c = str.split(",");
    }

    public final boolean a(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            String host = uri.getHost();
            String[] strArr = this.c;
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                if (host.endsWith(strArr[i])) {
                    return true;
                }
                i++;
            }
            return false;
        } catch (NullPointerException e) {
            return false;
        }
    }
}