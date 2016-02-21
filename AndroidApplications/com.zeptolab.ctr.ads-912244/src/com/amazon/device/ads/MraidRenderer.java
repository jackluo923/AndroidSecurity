package com.amazon.device.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.WebView;
import android.widget.FrameLayout.LayoutParams;
import com.amazon.device.ads.MraidView.OnCloseListener;
import com.amazon.device.ads.MraidView.OnExpandListener;
import com.amazon.device.ads.MraidView.OnReadyListener;
import com.amazon.device.ads.MraidView.OnSpecialUrlClickListener;
import com.amazon.device.ads.MraidView.ViewState;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Map;

class MraidRenderer extends AdRenderer implements OnCloseListener, OnExpandListener, OnReadyListener, OnSpecialUrlClickListener {
    private static final String m = "MraidRenderer";
    protected MraidView l;
    private WebView n;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[AdState.values().length];
            a[AdState.EXPANDED.ordinal()] = 1;
        }
    }

    protected MraidRenderer(AdData adData, IAdController iAdController, WebView webView, Context context) {
        super(adData, iAdController, context);
        this.n = webView;
    }

    protected void a(AdProperties adProperties) {
        super.a(adProperties);
    }

    protected boolean a(AdState adState) {
        if (this.l == null) {
            Log.w(m, "Unable to retrieve ad state.");
            return false;
        } else {
            switch (AnonymousClass_1.a[adState.ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    return this.l.i().g();
                default:
                    return false;
            }
        }
    }

    protected boolean a(String str, Map map) {
        Log.d(m, "sendCommand: %s", new Object[]{str});
        if (!str.equals("close") || this.l == null || !this.l.i().g()) {
            return false;
        }
        this.l.i().h();
        return true;
    }

    protected boolean d() {
        if (b()) {
            return false;
        }
        this.l = i();
        if (this.l.getShouldForceRenderFailure() || !this.l.loadHtmlData(this.h.b())) {
            return false;
        }
        j();
        return true;
    }

    protected void e() {
        if (this.l != null) {
            this.l.prepareToGoAway();
        }
    }

    protected boolean f() {
        return false;
    }

    protected void g() {
        if (!this.i && !this.j) {
            try {
                this.f.getAdLayout().removeAllViews();
            } catch (NullPointerException e) {
            }
            this.i = true;
        }
    }

    protected void h() {
        if (this.l != null) {
            this.l.destroy();
            this.l = null;
            this.j = true;
        }
        this.n = null;
    }

    protected MraidView i() {
        return new MraidView(this, this.f.getWindowWidth(), this.f.getWindowHeight(), a(), this.g, this.n);
    }

    @SuppressLint({"InlinedApi"})
    protected void j() {
        this.l.setOnReadyListener(this);
        this.l.setOnSpecialUrlClickListener(this);
        this.l.setOnExpandListener(this);
        this.l.setOnCloseListener(this);
        this.f.getAdLayout().removeAllViews();
        this.f.getAdLayout().addView(this.l, new LayoutParams(-1, -1, 17));
    }

    public boolean launchExternalBrowserForLink(String str) {
        return isAdViewRenderable() ? AdUtils.launchActivityForIntentLink(str, this.g) : false;
    }

    public void onClose(MraidView mraidView, ViewState viewState) {
        if (!c()) {
            this.f.adClosedExpansion();
        }
    }

    public void onExpand(MraidView mraidView) {
        if (!c()) {
            this.f.adExpanded();
        }
    }

    public void onPageFinished() {
        if (this.l == null) {
            Log.w(m, "Call to onPageFinished() ignored because view is null.");
        } else {
            this.l.k();
        }
    }

    public void onReady(MraidView mraidView) {
        a(this.h.c());
    }

    public void onSpecialUrlClick(MraidView mraidView, String str) {
        if (isAdViewRenderable()) {
            getSpecialUrlExecutor().execute(str);
        }
    }
}