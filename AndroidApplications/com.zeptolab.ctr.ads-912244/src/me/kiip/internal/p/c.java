package me.kiip.internal.p;

import android.annotation.TargetApi;
import android.graphics.Paint;
import android.os.Build.VERSION;
import android.webkit.WebView;

public class c {

    @TargetApi(11)
    private static class a {
        static void a_(WebView webView, int i, Paint paint) {
            webView.setLayerType(i, paint);
        }
    }

    public static void a(WebView webView, int i, Paint paint) {
        if (VERSION.SDK_INT >= 11) {
            a.a(webView, i, paint);
        }
    }
}