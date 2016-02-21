package com.google.ads;

import android.webkit.WebView;
import com.google.ads.internal.d;
import com.google.ads.util.b;
import java.util.HashMap;

public class s implements n {
    protected Runnable a(String str, WebView webView) {
        return new aa(str, webView.getContext().getApplicationContext());
    }

    public void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        String str = (String) hashMap.get(AdActivity.URL_PARAM);
        if (str == null) {
            b.e("Could not get URL from click gmsg.");
        } else {
            new Thread(a(str, webView)).start();
        }
    }
}