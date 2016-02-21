package com.chartboost.sdk.impl;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout.LayoutParams;
import com.admarvel.android.ads.Constants;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.impl.g.b;
import com.millennialmedia.android.MMException;
import com.zeptolab.utils.HTMLEncoder;
import org.json.JSONObject;

public class h extends b implements b {
    private WebView b;

    public h(Context context) {
        super(context);
        this.b = new WebView(context);
        addView(this.b, new LayoutParams(-1, -1));
        this.b.setBackgroundColor(0);
        this.b.setWebViewClient(new WebViewClient() {
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (str == null) {
                    return false;
                }
                if (str.contains("chartboost") && str.contains("click") && h.this != null) {
                    h.this.onClick(h.this);
                }
                return true;
            }
        });
    }

    public int a() {
        return CBUtility.a(MMException.UNKNOWN_ERROR, getContext());
    }

    public void a(JSONObject jSONObject, int i) {
        String optString = jSONObject.optString(Constants.HTML);
        if (optString != null) {
            try {
                this.b.loadDataWithBaseURL("file:///android_res/", optString, WebRequest.CONTENT_TYPE_HTML, HTMLEncoder.ENCODE_NAME_DEFAULT, null);
            } catch (Exception e) {
                CBLogging.a("CBNativeMoreAppsWebViewCell", "Exception raised loading data into webview", e);
            }
        }
    }
}