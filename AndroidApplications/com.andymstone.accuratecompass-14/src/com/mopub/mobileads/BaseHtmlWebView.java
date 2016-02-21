package com.mopub.mobileads;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

public class BaseHtmlWebView extends BaseWebView {
    public BaseHtmlWebView(Context context) {
        super(context);
        a();
        getSettings().setJavaScriptEnabled(true);
        getSettings().setPluginsEnabled(true);
        setBackgroundColor(0);
    }

    private void a() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
    }

    void a(String str) {
        loadDataWithBaseURL("http://ads.mopub.com/", str, "text/html", "utf-8", null);
    }

    public void a(boolean z) {
        setWebViewScrollingEnabled(z);
    }

    public void loadUrl(String str) {
        if (str != null) {
            Log.d("MoPub", new StringBuilder("Loading url: ").append(str).toString());
            if (str.startsWith("javascript:")) {
                super.loadUrl(str);
            }
        }
    }

    void setWebViewScrollingEnabled(boolean z) {
        if (z) {
            setOnTouchListener(null);
        } else {
            setOnTouchListener(new OnTouchListener() {
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return motionEvent.getAction() == 2;
                }
            });
        }
    }
}