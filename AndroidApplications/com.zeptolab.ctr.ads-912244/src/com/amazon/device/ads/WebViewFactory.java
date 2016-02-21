package com.amazon.device.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build.VERSION;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewDatabase;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;

class WebViewFactory {
    private static WebViewFactory a;
    private static boolean b;
    private boolean c;

    static {
        a = new WebViewFactory();
        b = false;
    }

    protected WebViewFactory() {
        this.c = false;
    }

    private void a() {
        if (this.c) {
            String adId = InternalAdRegistration.getInstance().getRegistrationInfo().getAdId();
            if (adId == null) {
                adId = AdTrackerConstants.BLANK;
            }
            a("http://amazon-adsystem.com", "ad-id=" + adId + "; Domain=.amazon-adsystem.com");
        }
    }

    protected static void a(WebViewFactory webViewFactory) {
        a = webViewFactory;
    }

    protected static boolean a(Exception exception) {
        return VERSION.SDK_INT >= 11 ? AndroidTargetUtils.isInstanceOfSQLiteDatabaseLockedException(exception) : a(exception);
    }

    protected static boolean a(Exception exception) {
        String str = "database is locked";
        return (exception == null || exception.getMessage() == null) ? false : exception.getMessage().contains("database is locked");
    }

    public static final WebViewFactory getInstance() {
        return a;
    }

    public static boolean isWebViewOk(Context context) {
        if (VERSION.SDK_INT <= 8 && !b && WebViewDatabase.getInstance(context) == null) {
            return false;
        }
        try {
            SQLiteDatabase openOrCreateDatabase = context.openOrCreateDatabase("webviewCache.db", 0, null);
            if (openOrCreateDatabase != null) {
                openOrCreateDatabase.close();
            }
            b = true;
        } catch (SQLiteException e) {
            try {
                boolean a = a(e);
                if (0 == 0) {
                    return a;
                }
                null.close();
                return a;
            } catch (Throwable th) {
                if (0 != 0) {
                    null.close();
                }
            }
        }
        return true;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public static final boolean setJavaScriptEnabledForWebView(boolean z, WebView webView, String str) {
        try {
            webView.getSettings().setJavaScriptEnabled(z);
            return true;
        } catch (NullPointerException e) {
            Log.w(str, "Could not set JavaScriptEnabled because a NullPointerException was encountered.");
            return false;
        }
    }

    protected void a(String str, String str2) {
        CookieManager.getInstance().setCookie(str, str2);
    }

    public synchronized WebView createWebView(Context context) {
        WebView webView;
        webView = new WebView(context);
        if (!this.c) {
            CookieSyncManager.createInstance(context);
            this.c = true;
        }
        a();
        return webView;
    }
}