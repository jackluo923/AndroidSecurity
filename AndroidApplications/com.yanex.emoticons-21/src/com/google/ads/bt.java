package com.google.ads;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.webkit.WebView;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.view.Menu;
import com.google.ads.b.h;
import com.google.ads.b.w;
import com.google.ads.util.g;
import java.util.HashMap;
import java.util.Map;

public final class bt implements br {
    private static final h a;

    static {
        a = (h) h.a.a();
    }

    public final void a(w wVar, HashMap hashMap, WebView webView) {
        String str = (String) hashMap.get("urls");
        if (str == null) {
            g.e("Could not get the urls param from canOpenURLs gmsg.");
        } else {
            String[] split = str.split(",");
            Map hashMap2 = new HashMap();
            PackageManager packageManager = webView.getContext().getPackageManager();
            int length = split.length;
            int i = 0;
            while (i < length) {
                String str2 = split[i];
                String[] split2 = str2.split(";", IcsLinearLayout.SHOW_DIVIDER_MIDDLE);
                String str3 = split2[0];
                hashMap2.put(str2, Boolean.valueOf(packageManager.resolveActivity(new Intent(split2.length >= 2 ? split2[1] : "android.intent.action.VIEW", Uri.parse(str3)), Menu.CATEGORY_CONTAINER) != null));
                i++;
            }
            h hVar = a;
            h.a(webView, hashMap2);
        }
    }
}