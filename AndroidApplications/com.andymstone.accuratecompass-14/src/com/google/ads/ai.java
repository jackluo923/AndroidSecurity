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

public class ai implements n {

    class a implements OnClickListener {
        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    public enum b {
        AD("ad"),
        APP("app");
        public String c;

        static {
            String str = "ad";
            a = new com.google.ads.ai.b("AD", 0, "ad");
            str = "app";
            b = new com.google.ads.ai.b("APP", 1, "app");
            d = new com.google.ads.ai.b[]{a, b};
        }

        private b(String str) {
            this.c = str;
        }
    }

    class c implements OnClickListener {
        private d a;

        public c(d dVar) {
            this.a = dVar;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            HashMap hashMap = new HashMap();
            hashMap.put("u", "market://details?id=com.google.android.apps.plus");
            AdActivity.a(this.a, new e("intent", hashMap));
        }
    }

    public void a(d dVar, HashMap hashMap, WebView webView) {
        Context context = (Context) dVar.h().f.a();
        String str = (String) hashMap.get("a");
        if (str != null && str.equals("resize")) {
            ag.a(webView, (String) hashMap.get("u"));
            return;
        } else if (str.equals("state")) {
            ag.a((Activity) dVar.h().e.a(), webView, (String) hashMap.get("u"));
            return;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName("com.google.android.apps.plus", "com.google.android.apps.circles.platform.PlusOneActivity"));
        if (ah.a(intent, context)) {
            AdActivity.a(dVar, new e("plusone", hashMap));
        } else if (!ah.a(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.apps.plus")), context)) {
        } else {
            if (TextUtils.isEmpty((CharSequence) hashMap.get("d")) || TextUtils.isEmpty((CharSequence) hashMap.get("o")) || TextUtils.isEmpty((CharSequence) hashMap.get("c"))) {
                HashMap hashMap2 = new HashMap();
                hashMap2.put("u", "market://details?id=com.google.android.apps.plus");
                AdActivity.a(dVar, new e("intent", hashMap2));
            } else {
                Builder builder = new Builder(context);
                builder.setMessage((CharSequence) hashMap.get("d")).setPositiveButton((CharSequence) hashMap.get("o"), new c(dVar)).setNegativeButton((CharSequence) hashMap.get("c"), new a());
                builder.create().show();
            }
        }
    }
}