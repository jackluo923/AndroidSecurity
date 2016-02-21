package com.amazon.device.ads;

import android.content.Context;
import android.os.Build.VERSION;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout.LayoutParams;
import java.util.Map;

class HtmlRenderer extends AdRenderer {
    public static final String LOG_TAG;
    protected WebView l;
    protected boolean m;
    protected boolean n;

    static {
        LOG_TAG = HtmlRenderer.class.getSimpleName();
    }

    protected HtmlRenderer(AdData adData, IAdController iAdController, WebView webView, Context context) {
        super(adData, iAdController, context);
        this.m = false;
        this.n = false;
        this.l = webView;
        i();
        if (VERSION.SDK_INT >= 11 && this.f.shouldDisableWebViewHardwareAcceleration()) {
            j();
        }
    }

    protected void a(AdProperties adProperties) {
        this.f.getAdLayout().addView(this.l, new LayoutParams(-2, -2, 17));
        super.a(adProperties);
    }

    protected boolean a(AdState adState) {
        return false;
    }

    protected boolean a(String str, Map map) {
        return true;
    }

    protected boolean d() {
        if (l() || b() || this.n) {
            return false;
        }
        k();
        return true;
    }

    protected void e() {
    }

    protected boolean f() {
        return true;
    }

    protected void g() {
        if (this.f.getAdLayout() != null) {
            this.f.getAdLayout().removeView(this.l);
        }
        this.i = true;
    }

    protected void h() {
        if (l()) {
            Log.w(LOG_TAG, "Called destroy(), but view is already null.");
        } else {
            this.l.destroy();
            this.l = null;
        }
        this.j = true;
    }

    protected void i() {
        boolean z = true;
        this.l.setHorizontalScrollBarEnabled(false);
        this.l.setHorizontalScrollbarOverlay(false);
        this.l.setVerticalScrollBarEnabled(false);
        this.l.setVerticalScrollbarOverlay(false);
        this.l.getSettings().setSupportZoom(false);
        if (WebViewFactory.setJavaScriptEnabledForWebView(true, this.l, LOG_TAG)) {
            z = false;
        }
        this.n = z;
        this.l.setBackgroundColor(0);
        WebViewClient adWebViewClient = new AdWebViewClient(this, this.g);
        adWebViewClient.putUrlExecutor(AdWebViewClient.AMAZON_MOBILE, this.f.getSpecialUrlExecutor());
        this.l.setWebViewClient(adWebViewClient);
    }

    public void initialize() {
        i();
        super.initialize();
    }

    protected void j() {
        AndroidTargetUtils.disableHardwareAcceleration(this.l);
    }

    protected void k() {
        this.l.loadUrl("about:blank");
        this.m = false;
        this.l.loadDataWithBaseURL("http://amazon-adsystem.amazon.com/", ("<html><meta name=\"viewport\" content=\"width=" + this.f.getWindowWidth() + ", height=" + this.f.getWindowHeight() + ", initial-scale=" + AdUtils.getViewportInitialScale(a()) + ", minimum-scale=" + a() + ", maximum-scale=" + a() + "\">" + this.h.b() + "</html>").replace("<head>", "<head><script type=\"text/javascript\">htmlWillCallFinishLoad = 1;</script>"), WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
    }

    protected boolean l() {
        return this.l == null;
    }

    public boolean launchExternalBrowserForLink(String str) {
        AdUtils.launchActivityForIntentLink(str, this.g);
        return true;
    }

    public void onPageFinished() {
        if (!this.j && !this.m) {
            this.m = true;
            a(this.h.c());
        }
    }
}