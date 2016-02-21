package com.google.ads.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.WebSettings;
import com.google.ads.bo;
import com.google.ads.bp;
import com.google.ads.bq;
import java.io.File;

@TargetApi(11)
public final class p {
    public static void a(WebSettings webSettings, bq bqVar) {
        Context context = (Context) bqVar.f.a();
        bp bpVar = (bp) ((bo) bqVar.d.a()).b.a();
        webSettings.setAppCacheEnabled(true);
        webSettings.setAppCacheMaxSize(((Long) bpVar.i.a()).longValue());
        webSettings.setAppCachePath(new File(context.getCacheDir(), "admob").getAbsolutePath());
        webSettings.setDatabaseEnabled(true);
        webSettings.setDatabasePath(context.getDatabasePath("admob").getAbsolutePath());
        webSettings.setDomStorageEnabled(true);
        webSettings.setSupportZoom(true);
        webSettings.setBuiltInZoomControls(true);
        webSettings.setDisplayZoomControls(false);
    }
}