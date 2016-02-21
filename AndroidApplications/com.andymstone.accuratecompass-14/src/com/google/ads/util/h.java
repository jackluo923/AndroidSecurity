package com.google.ads.util;

import android.annotation.TargetApi;
import android.view.View;
import android.webkit.WebChromeClient.CustomViewCallback;
import com.google.ads.m;

@TargetApi(14)
public class h {

    public class a extends com.google.ads.util.g.a {
        public a(m mVar) {
            super(mVar);
        }

        public void onShowCustomView(View view, int i, CustomViewCallback customViewCallback) {
            customViewCallback.onCustomViewHidden();
        }
    }
}