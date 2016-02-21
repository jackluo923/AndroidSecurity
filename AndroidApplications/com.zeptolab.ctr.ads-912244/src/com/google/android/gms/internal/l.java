package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;

public class l {
    private String ko;
    private String kp;
    private String[] kq;
    private h kr;
    private final g ks;

    public l(h hVar) {
        this.ko = "googleads.g.doubleclick.net";
        this.kp = "/pagead/ads";
        this.kq = new String[]{".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
        this.ks = new g();
        this.kr = hVar;
    }

    private Uri a(Uri uri, Context context, String str, boolean z) {
        try {
            if (uri.getQueryParameter("ms") != null) {
                throw new m("Query parameter already exists: ms");
            }
            return a(uri, "ms", z ? this.kr.a(context, str) : this.kr.a(context));
        } catch (UnsupportedOperationException e) {
            throw new m("Provided Uri is not in a valid state");
        }
    }

    private Uri a(Uri uri, String str, String str2) {
        String toString = uri.toString();
        int indexOf = toString.indexOf("&adurl");
        if (indexOf == -1) {
            indexOf = toString.indexOf("?adurl");
        }
        return indexOf != -1 ? Uri.parse(new StringBuilder(toString.substring(0, indexOf + 1)).append(str).append("=").append(str2).append("&").append(toString.substring(indexOf + 1)).toString()) : uri.buildUpon().appendQueryParameter(str, str2).build();
    }

    public Uri a(Uri uri, Context context) {
        try {
            return a(uri, context, uri.getQueryParameter("ai"), true);
        } catch (UnsupportedOperationException e) {
            throw new m("Provided Uri is not in a valid state");
        }
    }

    public void a(MotionEvent motionEvent) {
        this.kr.a(motionEvent);
    }

    public boolean a(Uri uri) {
        if (uri == null) {
            throw new NullPointerException();
        }
        try {
            String host = uri.getHost();
            String[] strArr = this.kq;
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

    public h y() {
        return this.kr;
    }
}