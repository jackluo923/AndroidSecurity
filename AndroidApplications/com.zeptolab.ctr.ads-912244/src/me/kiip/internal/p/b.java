package me.kiip.internal.p;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.webkit.WebSettings;

public class b {

    @TargetApi(5)
    private static class a {
        static void a_(WebSettings webSettings, boolean z) {
            webSettings.setDatabaseEnabled(z);
        }

        static void b(WebSettings webSettings, boolean z) {
            webSettings.setGeolocationEnabled(z);
        }
    }

    @TargetApi(7)
    private static class b {
        static void a(WebSettings webSettings, boolean z) {
            webSettings.setAppCacheEnabled(z);
        }

        static void b_(WebSettings webSettings, boolean z) {
            webSettings.setDomStorageEnabled(z);
        }
    }

    public static void a(WebSettings webSettings, boolean z) {
        if (VERSION.SDK_INT >= 5) {
            a.a(webSettings, z);
        }
    }

    public static void b_(WebSettings webSettings, boolean z) {
        if (VERSION.SDK_INT >= 5) {
            a.b(webSettings, z);
        }
    }

    public static void c(WebSettings webSettings, boolean z) {
        if (VERSION.SDK_INT >= 7) {
            b.a(webSettings, z);
        }
    }

    public static void d(WebSettings webSettings, boolean z) {
        if (VERSION.SDK_INT >= 7) {
            b.b(webSettings, z);
        }
    }
}