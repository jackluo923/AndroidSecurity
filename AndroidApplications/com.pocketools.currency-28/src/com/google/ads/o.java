package com.google.ads;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.internal.a;
import com.google.ads.internal.d;
import com.google.ads.util.b;
import com.pocketools.currency.R;
import java.util.HashMap;
import java.util.Map;

public class o implements n {
    private static final a a;

    static {
        a = (a) a.a.b();
    }

    public void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        String str = (String) hashMap.get("urls");
        if (str == null) {
            b.e("Could not get the urls param from canOpenURLs gmsg.");
        } else {
            String[] split = str.split(",");
            Map hashMap2 = new HashMap();
            PackageManager packageManager = webView.getContext().getPackageManager();
            int length = split.length;
            int i = 0;
            while (i < length) {
                String str2 = split[i];
                String[] split2 = str2.split(";", R.styleable.com_admob_android_ads_AdView_textColor);
                String str3 = split2[0];
                hashMap2.put(str2, Boolean.valueOf(packageManager.resolveActivity(new Intent(split2.length >= 2 ? split2[1] : "android.intent.action.VIEW", Uri.parse(str3)), 65536) != null));
                i++;
            }
            a.a(webView, hashMap2);
        }
    }
}