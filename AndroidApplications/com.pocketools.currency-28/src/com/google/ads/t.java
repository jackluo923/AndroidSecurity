package com.google.ads;

import android.webkit.WebView;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.internal.c;
import com.google.ads.internal.d;
import com.google.ads.util.b;
import java.util.HashMap;

public class t implements n {
    public void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        String str = (String) hashMap.get("errors");
        b.e("Invalid " + ((String) hashMap.get("type")) + " request error: " + str);
        c i = dVar.i();
        if (i != null) {
            i.a(ErrorCode.INVALID_REQUEST);
        }
    }
}