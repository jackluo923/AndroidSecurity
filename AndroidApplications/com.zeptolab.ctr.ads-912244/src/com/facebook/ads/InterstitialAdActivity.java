package com.facebook.ads;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.facebook.ads.internal.AdWebViewInterface;
import com.facebook.ads.internal.AdWebViewUtils;
import com.facebook.ads.internal.HtmlAdDataModel;
import com.facebook.ads.internal.HtmlAdHandler;
import com.facebook.ads.internal.action.AdAction;
import com.facebook.ads.internal.action.AdActionFactory;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class InterstitialAdActivity extends Activity {
    private static final int AD_WEBVIEW_ID = 100001;
    private static final String DATA_MODEL_KEY = "dataModel";
    private static final String LAST_REQUESTED_ORIENTATION_KEY = "lastRequestedOrientation";
    private static final int ORIENTATION_REVERSE_LANDSCAPE = 8;
    private static final int ORIENTATION_REVERSE_PORTRAIT = 9;
    private static final String TAG;
    private HtmlAdHandler adHandler;
    private WebView adWebView;
    private HtmlAdDataModel dataModel;
    private int displayHeight;
    private int displayWidth;
    private boolean isRestart;
    private int lastRequestedOrientation;
    private String placementId;

    private class AdWebViewClient extends WebViewClient {
        private static final String FBAD_CLOSE = "close";

        private AdWebViewClient() {
        }

        public void onLoadResource(WebView webView, String str) {
            InterstitialAdActivity.this.adHandler.activateAd();
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Uri parse = Uri.parse(str);
            if (AdWebViewUtils.FBAD_SCHEME.equals(parse.getScheme()) && FBAD_CLOSE.equals(parse.getAuthority())) {
                InterstitialAdActivity.this.finish();
            } else {
                InterstitialAdActivity.this.sendBroadcastForEvent(INTERSTITIAL_CLICKED);
                AdAction adAction = AdActionFactory.getAdAction(InterstitialAdActivity.this, parse);
                if (adAction != null) {
                    try {
                        adAction.execute();
                    } catch (Exception e) {
                        Log.e(TAG, "Error executing action", e);
                    }
                }
            }
            return true;
        }
    }

    static {
        TAG = InterstitialAdActivity.class.getSimpleName();
    }

    public InterstitialAdActivity() {
        this.isRestart = false;
    }

    private void loadAdFromIntentOrSavedState(Intent intent, Bundle bundle) {
        if (bundle == null || !bundle.containsKey(DATA_MODEL_KEY)) {
            this.displayWidth = intent.getIntExtra(DISPLAY_WIDTH_INTENT_EXTRA, 0);
            this.displayHeight = intent.getIntExtra(DISPLAY_HEIGHT_INTENT_EXTRA, 0);
            this.placementId = intent.getStringExtra(INTERSTITIAL_UNIQUE_ID_EXTRA);
            this.dataModel = HtmlAdDataModel.fromIntentExtra(intent);
            if (this.dataModel != null) {
                this.adHandler.setAdDataModel(this.dataModel);
                this.adWebView.loadDataWithBaseURL(AdWebViewUtils.WEBVIEW_BASE_URL, this.dataModel.getMarkup(), WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
            }
        } else {
            this.dataModel = HtmlAdDataModel.fromBundle(bundle.getBundle(DATA_MODEL_KEY));
            if (this.dataModel != null) {
                this.adHandler.setAdDataModel(this.dataModel);
                this.adWebView.loadDataWithBaseURL(AdWebViewUtils.WEBVIEW_BASE_URL, this.dataModel.getMarkup(), WebRequest.CONTENT_TYPE_HTML, "utf-8", null);
            }
            this.lastRequestedOrientation = bundle.getInt(LAST_REQUESTED_ORIENTATION_KEY, -1);
            this.placementId = bundle.getString(INTERSTITIAL_UNIQUE_ID_EXTRA);
            this.isRestart = true;
        }
    }

    private void sendBroadcastForEvent(String str) {
        Intent intent = new Intent(str);
        intent.putExtra(INTERSTITIAL_UNIQUE_ID_EXTRA, this.placementId);
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    private void setScreenOrientation(int i, int i2) {
        int i3 = i2 >= i;
        int rotation = ((WindowManager) getSystemService("window")).getDefaultDisplay().getRotation();
        if (i3 != 0) {
            switch (rotation) {
                case GoogleScorer.CLIENT_GAMES:
                case GoogleScorer.CLIENT_PLUS:
                    setRequestedOrientation(ORIENTATION_REVERSE_PORTRAIT);
                default:
                    setRequestedOrientation(1);
            }
        } else {
            switch (rotation) {
                case GoogleScorer.CLIENT_PLUS:
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    setRequestedOrientation(ORIENTATION_REVERSE_LANDSCAPE);
                default:
                    setRequestedOrientation(0);
            }
        }
    }

    public void finish() {
        this.adHandler.cancelImpressionRetry();
        this.adWebView.loadUrl("about:blank");
        this.adWebView.clearCache(true);
        sendBroadcastForEvent(INTERSTITIAL_DISMISSED);
        super.finish();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT, AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
        View relativeLayout = new RelativeLayout(this);
        this.adWebView = new WebView(this);
        this.adWebView.setId(AD_WEBVIEW_ID);
        this.adWebView.setLayoutParams(new LayoutParams(-1, -1));
        AdWebViewUtils.config(this.adWebView, new AdWebViewClient(null), new AdWebViewInterface());
        relativeLayout.addView(this.adWebView);
        this.adHandler = new HtmlAdHandler(this.adWebView, null, 1000);
        setContentView(relativeLayout, new LayoutParams(-1, -1));
        loadAdFromIntentOrSavedState(getIntent(), bundle);
        sendBroadcastForEvent(INTERSTITIAL_DISPLAYED);
    }

    public void onRestart() {
        super.onRestart();
        this.isRestart = true;
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.dataModel != null) {
            bundle.putBundle(DATA_MODEL_KEY, this.dataModel.saveToBundle());
        }
        bundle.putInt(LAST_REQUESTED_ORIENTATION_KEY, this.lastRequestedOrientation);
        bundle.putString(INTERSTITIAL_UNIQUE_ID_EXTRA, this.placementId);
    }

    public void onStart() {
        super.onStart();
        if (!this.isRestart) {
            setScreenOrientation(this.displayWidth, this.displayHeight);
        } else if (this.lastRequestedOrientation >= 0) {
            setRequestedOrientation(this.lastRequestedOrientation);
            this.lastRequestedOrientation = -1;
        }
        this.isRestart = false;
    }

    public void setRequestedOrientation(int i) {
        this.lastRequestedOrientation = i;
        super.setRequestedOrientation(i);
    }
}