package com.google.ads.mediation.jsadapter;

import android.app.Activity;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdSize;
import com.google.ads.mediation.EmptyNetworkExtras;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.android.gms.internal.da;

public final class JavascriptAdapter implements MediationBannerAdapter {
    private WebView C;
    private FrameLayout D;
    private boolean E;
    private MediationBannerListener k;
    private int v;
    private int w;

    public void destroy() {
        this.E = true;
    }

    public Class getAdditionalParametersType() {
        return EmptyNetworkExtras.class;
    }

    public View getBannerView() {
        return this.D;
    }

    public Class getServerParametersType() {
        return JavascriptServerParameters.class;
    }

    public WebView getWebView() {
        return this.C;
    }

    public int getWebViewHeight() {
        return this.v;
    }

    public int getWebViewWidth() {
        return this.w;
    }

    public void passbackReceived() {
        da.s("Passback received");
        sendAdNotReceivedUpdate();
    }

    public void requestBannerAd(MediationBannerListener mediationBannerListener, Activity activity, JavascriptServerParameters javascriptServerParameters, AdSize adSize, MediationAdRequest mediationAdRequest, EmptyNetworkExtras emptyNetworkExtras) {
        this.k = mediationBannerListener;
        this.v = javascriptServerParameters.height != null ? javascriptServerParameters.height.intValue() : adSize.getHeightInPixels(activity);
        this.w = javascriptServerParameters.width != null ? javascriptServerParameters.width.intValue() : adSize.getWidthInPixels(activity);
        this.E = false;
        this.C = new WebView(activity);
        this.C.getSettings().setJavaScriptEnabled(true);
        this.C.setWebViewClient(new BannerWebViewClient(this, javascriptServerParameters.passBackUrl));
        this.C.setBackgroundColor(0);
        this.D = new FrameLayout(activity);
        this.D.addView(this.C, new LayoutParams(this.w, this.v, 17));
        this.C.loadDataWithBaseURL(null, javascriptServerParameters.htmlScript, WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
    }

    public void sendAdNotReceivedUpdate() {
        if (!this.E) {
            this.E = true;
            this.k.onFailedToReceiveAd(this, ErrorCode.NO_FILL);
        }
    }

    public void sendAdReceivedUpdate() {
        if (!this.E) {
            this.E = true;
            this.k.onReceivedAd(this);
        }
    }

    public boolean shouldStopAdCheck() {
        return this.E;
    }

    public void startCheckingForAd() {
        new AdViewCheckTask(this, 200, 100).start();
    }
}