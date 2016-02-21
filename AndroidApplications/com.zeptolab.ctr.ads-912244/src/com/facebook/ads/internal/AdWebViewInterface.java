package com.facebook.ads.internal;

import android.util.Log;
import android.webkit.JavascriptInterface;

public class AdWebViewInterface {
    private static final String TAG;

    static {
        TAG = AdWebViewInterface.class.getSimpleName();
    }

    @JavascriptInterface
    public void alert(String str) {
        Log.e(TAG, str);
    }

    @JavascriptInterface
    public String getAnalogInfo() {
        return AdUtilities.jsonEncode(AdAnalogData.getAnalogInfo());
    }
}