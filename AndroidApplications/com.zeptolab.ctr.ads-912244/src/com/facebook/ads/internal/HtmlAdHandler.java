package com.facebook.ads.internal;

import android.webkit.WebView;
import com.facebook.ads.internal.AdHandler.ImpressionHelper;

public class HtmlAdHandler extends AdHandler {
    private volatile boolean adActivated;
    private final WebView webView;

    public HtmlAdHandler(WebView webView, ImpressionHelper impressionHelper, long j) {
        super(impressionHelper, j);
        this.webView = webView;
    }

    public synchronized void activateAd() {
        if (!(this.adActivated || this.adDataModel == null)) {
            HtmlAdDataModel htmlAdDataModel = (HtmlAdDataModel) this.adDataModel;
            if (!StringUtils.isNullOrEmpty(htmlAdDataModel.getActivationCommand())) {
                this.webView.loadUrl("javascript:" + htmlAdDataModel.getActivationCommand());
            }
            scheduleImpressionRetry();
            this.adActivated = true;
        }
    }

    protected synchronized void sendImpression() {
        HtmlAdDataModel htmlAdDataModel = (HtmlAdDataModel) this.adDataModel;
        if (!StringUtils.isNullOrEmpty(htmlAdDataModel.getSendImpressionCommand())) {
            this.webView.loadUrl("javascript:" + htmlAdDataModel.getSendImpressionCommand());
        }
        if (this.impressionHelper != null) {
            this.impressionHelper.afterImpressionSent();
        }
    }

    public void setAdDataModel(HtmlAdDataModel htmlAdDataModel) {
        super.setAdDataModel(htmlAdDataModel);
        this.adActivated = false;
    }
}