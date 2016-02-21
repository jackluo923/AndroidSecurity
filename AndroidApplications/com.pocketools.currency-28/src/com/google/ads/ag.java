package com.google.ads;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.google.ads.internal.d;
import com.google.ads.internal.e;
import java.util.HashMap;

public class ag implements n {

    private static class a implements OnClickListener {
        public void onClick(DialogInterface dialog, int which) {
        }
    }

    public enum b {
        AD("ad"),
        APP("app");
        public String c;

        static {
            String str = "ad";
            a = new com.google.ads.ag.b("AD", 0, "ad");
            str = "app";
            b = new com.google.ads.ag.b("APP", 1, "app");
            d = new com.google.ads.ag.b[]{a, b};
        }

        private b(String str) {
            this.c = str;
        }
    }

    private static class c implements OnClickListener {
        private d a;

        public c(d dVar) {
            this.a = dVar;
        }

        public void onClick(DialogInterface dialog, int which) {
            HashMap hashMap = new HashMap();
            hashMap.put(AdActivity.URL_PARAM, "market://details?id=com.google.android.apps.plus");
            AdActivity.launchAdActivity(this.a, new e("intent", hashMap));
        }
    }

    public void a(d dVar, HashMap<String, String> hashMap, WebView webView) {
        Context context = (Context) dVar.g().d.a();
        String str = (String) hashMap.get("a");
        if (str != null && str.equals("resize")) {
            ae.a(webView, (String) hashMap.get(AdActivity.URL_PARAM));
            return;
        } else if (str.equals("state")) {
            ae.a((Activity) dVar.g().c.a(), webView, (String) hashMap.get(AdActivity.URL_PARAM));
            return;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.google.android.apps.plus", "com.google.android.apps.circles.platform.PlusOneActivity"));
        if (af.a(intent, context)) {
            AdActivity.launchAdActivity(dVar, new e("plusone", hashMap));
        } else if (!af.a(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.apps.plus")), context)) {
        } else {
            if (TextUtils.isEmpty((CharSequence) hashMap.get("d")) || TextUtils.isEmpty((CharSequence) hashMap.get(AdActivity.ORIENTATION_PARAM)) || TextUtils.isEmpty((CharSequence) hashMap.get("c"))) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put(AdActivity.URL_PARAM, "market://details?id=com.google.android.apps.plus");
                AdActivity.launchAdActivity(dVar, new e("intent", hashMap2));
            } else {
                Builder builder = new Builder(context);
                builder.setMessage((CharSequence) hashMap.get("d")).setPositiveButton((CharSequence) hashMap.get(AdActivity.ORIENTATION_PARAM), new c(dVar)).setNegativeButton((CharSequence) hashMap.get("c"), new a());
                builder.create().show();
            }
        }
    }
}