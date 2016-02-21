package com.mopub.mobileads;

import android.content.Context;
import android.net.Uri;
import android.provider.Settings.Secure;
import com.mopub.mobileads.util.Strings;

public abstract class BaseUrlGenerator {
    private StringBuilder a;
    private boolean b;

    private String b() {
        if (!this.b) {
            return "&";
        }
        this.b = false;
        return "?";
    }

    protected String a() {
        return this.a.toString();
    }

    protected String a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception e) {
            return null;
        }
    }

    protected void a(String str, String str2) {
        this.a = new StringBuilder(new StringBuilder("http://").append(str).append(str2).toString());
        this.b = true;
    }

    protected String b(Context context) {
        return Secure.getString(context.getContentResolver(), "android_id");
    }

    protected void b(String str, String str2) {
        if (str2 != null && !Strings.a(str2)) {
            this.a.append(b());
            this.a.append(str);
            this.a.append("=");
            this.a.append(Uri.encode(str2));
        }
    }

    protected void d(String str) {
        b("v", str);
    }

    protected void e(String str) {
        b("av", str);
    }

    protected void f(String str) {
        b("udid", new StringBuilder("sha:").append(str == null ? "" : Utils.a(str)).toString());
    }
}