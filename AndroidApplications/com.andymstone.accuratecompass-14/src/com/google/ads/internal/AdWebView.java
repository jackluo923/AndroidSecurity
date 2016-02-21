package com.google.ads.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View.MeasureSpec;
import android.webkit.DownloadListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.andymstone.core.o;
import com.google.ads.AdActivity;
import com.google.ads.AdSize;
import com.google.ads.m;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import com.google.ads.util.g;
import com.google.ads.util.h.a;
import java.lang.ref.WeakReference;

public class AdWebView extends WebView {
    private WeakReference a;
    private AdSize b;
    private boolean c;
    private boolean d;
    private boolean e;

    public AdWebView(m mVar, AdSize adSize) {
        super((Context) mVar.f.a());
        this.b = adSize;
        this.a = null;
        this.c = false;
        this.d = false;
        this.e = false;
        setBackgroundColor(0);
        AdUtil.a(this);
        WebSettings settings = getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        setDownloadListener(new DownloadListener() {
            public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setDataAndType(Uri.parse(str), str4);
                    Context d = AdWebView.this.d();
                    if (d != null && AdUtil.a(intent, d)) {
                        d.startActivity(intent);
                    }
                } catch (ActivityNotFoundException e) {
                    b.a("Couldn't find an Activity to view url/mimetype: " + str + " / " + str4);
                } catch (Throwable th) {
                    b.b("Unknown error trying to start activity to view URL: " + str, th);
                }
            }
        });
        if (AdUtil.a >= 11) {
            g.a(settings, mVar);
        }
        setScrollBarStyle(33554432);
        if (AdUtil.a >= 14) {
            setWebChromeClient(new a(mVar));
        } else if (AdUtil.a >= 11) {
            setWebChromeClient(new g.a(mVar));
        }
    }

    public void a() {
        AdActivity d = d();
        if (d != null) {
            d.finish();
        }
    }

    public void b() {
        if (AdUtil.a >= 11) {
            g.a(this);
        }
        this.d = true;
    }

    public void c() {
        if (this.d && AdUtil.a >= 11) {
            g.b(this);
        }
        this.d = false;
    }

    public AdActivity d() {
        return this.a != null ? (AdActivity) this.a.get() : null;
    }

    public void destroy() {
        try {
            super.destroy();
            setWebViewClient(new WebViewClient());
        } catch (Throwable th) {
            b.b("An error occurred while destroying an AdWebView:", th);
        }
    }

    public boolean e() {
        return this.e;
    }

    public boolean f() {
        return this.d;
    }

    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        try {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } catch (Throwable th) {
            b.b("An error occurred while loading data in AdWebView:", th);
        }
    }

    public void loadUrl(String str) {
        try {
            super.loadUrl(str);
        } catch (Throwable th) {
            b.b("An error occurred while loading a URL in AdWebView:", th);
        }
    }

    protected synchronized void onMeasure(int i, int i2) {
        boolean z = Integer.MAX_VALUE;
        synchronized (this) {
            if (isInEditMode()) {
                super.onMeasure(i, i2);
            } else if (this.b == null || this.c) {
                super.onMeasure(i, i2);
            } else {
                int mode = MeasureSpec.getMode(i);
                int size = MeasureSpec.getSize(i);
                int mode2 = MeasureSpec.getMode(i2);
                int size2 = MeasureSpec.getSize(i2);
                float f = getContext().getResources().getDisplayMetrics().density;
                int a = (int) (((float) this.b.a()) * f);
                int b = (int) (((float) this.b.b()) * f);
                mode = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
                if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                    int i3 = size2;
                }
                if (((float) a) - f * 6.0f > ((float) mode) || b > i) {
                    b.e("Not enough space to show ad! Wants: <" + a + ", " + b + ">, Has: <" + size + ", " + size2 + ">");
                    setVisibility(o.MyAlertDialog_MAD_messagePadding);
                    setMeasuredDimension(size, size2);
                } else {
                    setMeasuredDimension(a, b);
                }
            }
        }
    }

    public void setAdActivity(AdActivity adActivity) {
        this.a = new WeakReference(adActivity);
    }

    public synchronized void setAdSize(AdSize adSize) {
        this.b = adSize;
        requestLayout();
    }

    public void setCustomClose(boolean z) {
        this.e = z;
        if (this.a != null) {
            AdActivity adActivity = (AdActivity) this.a.get();
            if (adActivity != null) {
                adActivity.a(z);
            }
        }
    }

    public void setIsExpandedMraid(boolean z) {
        this.c = z;
    }

    public void stopLoading() {
        try {
            super.stopLoading();
        } catch (Throwable th) {
            b.d("An error occurred while stopping loading in AdWebView:", th);
        }
    }
}