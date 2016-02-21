package com.mopub.mobileads;

import android.content.Context;
import android.webkit.WebView;

public class BaseWebView extends WebView {
    public BaseWebView(Context context) {
        super(context.getApplicationContext());
    }
}