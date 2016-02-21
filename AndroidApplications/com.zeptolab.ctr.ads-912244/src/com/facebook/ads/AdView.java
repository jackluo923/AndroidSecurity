package com.facebook.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.AdDataModel;
import com.facebook.ads.internal.AdHandler.ImpressionHelper;
import com.facebook.ads.internal.AdRequest.Callback;
import com.facebook.ads.internal.AdRequestController;
import com.facebook.ads.internal.AdResponse;
import com.facebook.ads.internal.AdType;
import com.facebook.ads.internal.AdWebViewInterface;
import com.facebook.ads.internal.AdWebViewUtils;
import com.facebook.ads.internal.HtmlAdDataModel;
import com.facebook.ads.internal.HtmlAdHandler;
import com.facebook.ads.internal.action.AdAction;
import com.facebook.ads.internal.action.AdActionFactory;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;

public class AdView extends RelativeLayout implements Ad {
    private static final int DEFAULT_ALPHA = 255;
    private static final String DEFAULT_ENCODING = "utf-8";
    private static final String DEFAULT_MIME_TYPE = "text/html";
    private static final int MIN_ALPHA = 229;
    private static final String TAG;
    private HtmlAdHandler adHandler;
    private AdListener adListener;
    private AdRequestController adRequestController;
    private final AdSize adSize;
    private WebView adWebView;
    private int currentAlpha;
    private final DisplayMetrics metrics;
    private final String placementId;
    private final ScreenStateReceiver screenStateReceiver;

    private class AdWebViewClient extends WebViewClient {
        private AdWebViewClient() {
        }

        public void onLoadResource(WebView webView, String str) {
            AdView.this.adHandler.activateAd();
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (AdView.this.adListener != null) {
                AdView.this.adListener.onAdClicked(AdView.this);
            }
            AdAction adAction = AdActionFactory.getAdAction(AdView.this.getContext(), Uri.parse(str));
            if (adAction != null) {
                try {
                    adAction.execute();
                } catch (Exception e) {
                    Log.e(TAG, "Error executing action", e);
                }
            }
            return true;
        }
    }

    private class ScreenStateReceiver extends BroadcastReceiver {
        private ScreenStateReceiver() {
        }

        public void onReceive(Context context, Intent intent) {
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                AdView.this.adHandler.cancelImpressionRetry();
            } else {
                AdView.this.adHandler.scheduleImpressionRetry();
            }
        }
    }

    static {
        TAG = AdView.class.getSimpleName();
    }

    public AdView(Context context, String str, AdSize adSize) {
        super(context);
        this.currentAlpha = 255;
        this.adListener = null;
        if (adSize == null || adSize == AdSize.INTERSTITIAL) {
            throw new IllegalArgumentException("adSize");
        }
        this.placementId = str;
        this.adSize = adSize;
        this.metrics = context.getResources().getDisplayMetrics();
        this.screenStateReceiver = new ScreenStateReceiver(null);
        initializeView(context);
        this.adHandler = new HtmlAdHandler(this.adWebView, new ImpressionHelper() {
            public void afterImpressionSent() {
                if (AdView.this.adRequestController != null) {
                    AdView.this.adRequestController.scheduleRefresh("on imp sent");
                }
            }

            public boolean shouldSendImpression() {
                return AdView.this.isAdViewVisible();
            }
        }, 1000);
        registerScreenStateReceiver();
    }

    private Callback createAdRequestCallback() {
        return new Callback() {
            public void onCompleted(AdResponse adResponse) {
                AdView.this.adHandler.cancelImpressionRetry();
                AdDataModel dataModel = adResponse.getDataModel();
                if (dataModel != null && dataModel instanceof HtmlAdDataModel) {
                    AdView.this.adHandler.setAdDataModel((HtmlAdDataModel) dataModel);
                    AdView.this.updateView((HtmlAdDataModel) dataModel);
                    if (AdView.this.adListener != null) {
                        AdView.this.adListener.onAdLoaded(AdView.this);
                    }
                } else if (dataModel == null) {
                    if (AdView.this.adListener != null) {
                        AdView.this.adListener.onError(AdView.this, adResponse.getError() != null ? adResponse.getError() : AdError.INTERNAL_ERROR);
                    }
                    if (AdView.this.adRequestController != null) {
                        AdView.this.adRequestController.scheduleRefresh("on no fill");
                    }
                } else {
                    if (AdView.this.adListener != null) {
                        AdView.this.adListener.onError(AdView.this, AdError.INTERNAL_ERROR);
                    }
                    if (AdView.this.adRequestController != null) {
                        AdView.this.adRequestController.scheduleRefresh("on internal error");
                    }
                }
            }

            public void onError(AdError adError) {
                AdView.this.adHandler.cancelImpressionRetry();
                if (AdView.this.adListener != null) {
                    AdView.this.adListener.onError(AdView.this, adError);
                }
            }
        };
    }

    private void ensureAdRequestController() {
        if (this.adRequestController == null) {
            throw new RuntimeException("No request controller available, has the AdView been destroyed?");
        }
    }

    private void initializeView(Context context) {
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(((int) (((float) this.metrics.widthPixels) / this.metrics.density)) >= this.adSize.getWidth() ? this.metrics.widthPixels : (int) Math.ceil((double) (((float) this.adSize.getWidth()) * this.metrics.density)), (int) Math.ceil((double) (((float) this.adSize.getHeight()) * this.metrics.density)));
        layoutParams.addRule(MMException.REQUEST_NOT_FILLED);
        setLayoutParams(layoutParams);
        this.adWebView = new WebView(context);
        this.adWebView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.adWebView.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        AdWebViewUtils.config(this.adWebView, new AdWebViewClient(null), new AdWebViewInterface());
        addView(this.adWebView);
        this.adRequestController = new AdRequestController(getContext(), this.placementId, this.adSize, true, AdType.HTML, createAdRequestCallback());
    }

    private boolean isAdViewVisible() {
        if (getVisibility() != 0 || getParent() == null || this.currentAlpha < 229) {
            return false;
        }
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        if (iArr[0] < 0 || this.metrics.widthPixels - iArr[0] < ((int) Math.ceil((double) (((float) this.adSize.getWidth()) * this.metrics.density)))) {
            return false;
        }
        int ceil = (int) Math.ceil((double) (((float) this.adSize.getHeight()) * this.metrics.density));
        return (iArr[1] >= 0 || Math.abs(iArr[1]) <= ceil / 2) && iArr[1] + ceil - this.metrics.heightPixels <= ceil / 2;
    }

    private void registerScreenStateReceiver() {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        getContext().registerReceiver(this.screenStateReceiver, intentFilter);
    }

    private void unregisterScreenStateReceiver() {
        getContext().unregisterReceiver(this.screenStateReceiver);
    }

    private void updateView(HtmlAdDataModel htmlAdDataModel) {
        this.adWebView.loadUrl("about:blank");
        this.adWebView.clearCache(true);
        this.adWebView.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
        this.adWebView.loadDataWithBaseURL(AdWebViewUtils.WEBVIEW_BASE_URL, htmlAdDataModel.getMarkup(), DEFAULT_MIME_TYPE, DEFAULT_ENCODING, null);
        this.adWebView.setVisibility(0);
    }

    public void destroy() {
        if (this.adRequestController != null) {
            this.adRequestController.destroy();
            this.adRequestController = null;
        }
        this.adHandler.cancelImpressionRetry();
        unregisterScreenStateReceiver();
    }

    public void loadAd() {
        ensureAdRequestController();
        this.adRequestController.loadAd();
    }

    protected boolean onSetAlpha(int i) {
        this.currentAlpha = i;
        return super.onSetAlpha(i);
    }

    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (this.adRequestController != null) {
            this.adRequestController.onWindowVisibilityChanged(i);
        }
        if (i == 0) {
            this.adHandler.scheduleImpressionRetry();
        } else {
            this.adHandler.cancelImpressionRetry();
        }
    }

    public void setAdListener(AdListener adListener) {
        this.adListener = adListener;
    }
}