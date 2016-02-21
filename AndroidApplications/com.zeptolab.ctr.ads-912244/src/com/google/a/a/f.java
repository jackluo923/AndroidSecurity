package com.google.a.a;

import android.content.Context;
import android.net.Uri;

public final class f {
    private String a;
    private String b;
    private String[] c;
    private b d;

    public f(b bVar) {
        this.a = "googleads.g.doubleclick.net";
        this.b = "/pagead/ads";
        this.c = new String[]{".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
        this.d = bVar;
    }

    private Uri b(Uri uri, Context context) {
        try {
            if (uri.getQueryParameter("ms") != null) {
                throw new g("Query parameter already exists: ms");
            }
            String a = this.d.a(context);
            String str = "ms";
            String toString = uri.toString();
            int indexOf = toString.indexOf("&adurl");
            if (indexOf == -1) {
                indexOf = toString.indexOf("?adurl");
            }
            return indexOf != -1 ? Uri.parse(new StringBuilder(toString.substring(0, indexOf + 1)).append(str).append("=").append(a).append("&").append(toString.substring(indexOf + 1)).toString()) : uri.buildUpon().appendQueryParameter(str, a).build();
        } catch (UnsupportedOperationException e) {
            throw new g("Provided Uri is not in a valid state");
        }
    }

    public final Uri a(Uri uri, Context context) {
        return b(uri, context);
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