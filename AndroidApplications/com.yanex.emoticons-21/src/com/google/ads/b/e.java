package com.google.ads.b;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.actionbarsherlock.view.MenuItem;
import com.google.ads.AdActivity;
import com.google.ads.ag;
import com.google.ads.bq;
import com.google.ads.g;
import com.google.ads.util.AdUtil;
import com.google.ads.util.d;
import com.google.ads.util.p;
import com.google.ads.util.r;
import java.lang.ref.WeakReference;

public class e extends WebView {
    protected final bq a;
    private WeakReference b;
    private g c;
    private boolean d;
    private boolean e;
    private boolean f;

    public e(bq bqVar, g gVar) {
        super((Context) bqVar.f.a());
        this.a = bqVar;
        this.c = gVar;
        this.b = null;
        this.d = false;
        this.e = false;
        this.f = false;
        setBackgroundColor(0);
        AdUtil.a(this);
        WebSettings settings = getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        setDownloadListener(new f(this));
        if (AdUtil.a >= 17) {
            p.a(settings, bqVar);
            settings.setMediaPlaybackRequiresUserGesture(false);
        } else if (AdUtil.a >= 11) {
            p.a(settings, bqVar);
        }
        setScrollBarStyle(33554432);
        if (AdUtil.a >= 14) {
            setWebChromeClient(new d(bqVar));
        } else if (AdUtil.a >= 11) {
            setWebChromeClient(new r(bqVar));
        }
    }

    public final void a(AdActivity adActivity) {
        this.b = new WeakReference(adActivity);
    }

    public final synchronized void a(g gVar) {
        this.c = gVar;
        requestLayout();
    }

    public final void c(boolean z) {
        this.f = z;
        if (this.b != null) {
            AdActivity adActivity = (AdActivity) this.b.get();
            if (adActivity != null) {
                adActivity.a(z);
            }
        }
    }

    public final void d(boolean z) {
        this.d = z;
    }

    public void destroy() {
        try {
            super.destroy();
        } catch (Throwable th) {
            com.google.ads.util.g.d("An error occurred while destroying an AdWebView:", th);
        }
        try {
            setWebViewClient(new WebViewClient());
        } catch (Throwable th2) {
        }
    }

    public final void e_(boolean z) {
        if (z) {
            setOnTouchListener(new g(this));
        } else {
            setOnTouchListener(null);
        }
    }

    public final void f() {
        AdActivity i = i();
        if (i != null) {
            i.finish();
        }
    }

    public final void g() {
        if (AdUtil.a >= 11) {
            setLayerType(1, null);
        }
        this.e = true;
    }

    public final void h() {
        if (this.e && AdUtil.a >= 11) {
            setLayerType(0, null);
        }
        this.e = false;
    }

    public final AdActivity i() {
        return this.b != null ? (AdActivity) this.b.get() : null;
    }

    public final boolean j() {
        return this.f;
    }

    public final boolean k() {
        return this.e;
    }

    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        try {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } catch (Throwable th) {
            com.google.ads.util.g.d("An error occurred while loading data in AdWebView:", th);
        }
    }

    public void loadUrl(String str) {
        try {
            super.loadUrl(str);
        } catch (Throwable th) {
            com.google.ads.util.g.d("An error occurred while loading a URL in AdWebView:", th);
        }
    }

    protected synchronized void onMeasure(int i, int i2) {
        boolean z = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        synchronized (this) {
            if (isInEditMode()) {
                super.onMeasure(i, i2);
            } else if (this.c == null || this.d) {
                super.onMeasure(i, i2);
            } else {
                int mode = MeasureSpec.getMode(i);
                int size = MeasureSpec.getSize(i);
                int mode2 = MeasureSpec.getMode(i2);
                int size2 = MeasureSpec.getSize(i2);
                float f = getContext().getResources().getDisplayMetrics().density;
                int a = (int) (((float) this.c.a()) * f);
                int b = (int) (((float) this.c.b()) * f);
                mode = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
                if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                    int i3 = size2;
                }
                if (((float) a) - f * 6.0f > ((float) mode) || b > i) {
                    com.google.ads.util.g.b(new StringBuilder("Not enough space to show ad! Wants: <").append(a).append(", ").append(b).append(">, Has: <").append(size).append(", ").append(size2).append(">").toString());
                    setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
                    setMeasuredDimension(size, size2);
                } else {
                    setMeasuredDimension(a, b);
                }
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        ag agVar = (ag) this.a.r.a();
        if (agVar != null) {
            agVar.a(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void stopLoading() {
        try {
            super.stopLoading();
        } catch (Throwable th) {
            com.google.ads.util.g.d("An error occurred while stopping loading in AdWebView:", th);
        }
    }
}