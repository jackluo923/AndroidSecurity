package com.google.ads.util;

import android.view.View;
import android.webkit.WebChromeClient.CustomViewCallback;
import com.google.ads.m;

public class h {

    public static class a extends com.google.ads.util.g.a {
        public a(m mVar) {
            super(mVar);
        }

        public void onShowCustomView(View view, int requestedOrientation, CustomViewCallback callback) {
            callback.onCustomViewHidden();
        }
    }
}