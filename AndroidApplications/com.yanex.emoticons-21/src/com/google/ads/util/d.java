package com.google.ads.util;

import android.view.View;
import android.webkit.WebChromeClient.CustomViewCallback;
import com.google.ads.bq;

public final class d extends r {
    public d(bq bqVar) {
        super(bqVar);
    }

    public final void onShowCustomView(View view, int i, CustomViewCallback customViewCallback) {
        customViewCallback.onCustomViewHidden();
    }
}