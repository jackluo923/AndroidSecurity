package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class HtmlWebViewClient extends WebViewClient {
    private final Context a;
    private HtmlWebViewListener b;
    private BaseHtmlWebView c;
    private final String d;
    private final String e;

    HtmlWebViewClient(HtmlWebViewListener htmlWebViewListener, BaseHtmlWebView baseHtmlWebView, String str, String str2) {
        this.b = htmlWebViewListener;
        this.c = baseHtmlWebView;
        this.d = str;
        this.e = str2;
        this.a = baseHtmlWebView.getContext();
    }

    private void a(Uri uri) {
        this.b.a();
        String queryParameter = uri.getQueryParameter("fnc");
        String queryParameter2 = uri.getQueryParameter("data");
        Intent intent = new Intent(queryParameter);
        intent.addFlags(268435456);
        intent.putExtra("com.mopub.intent.extra.AD_CLICK_DATA", queryParameter2);
        try {
            this.a.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Log.w("MoPub", new StringBuilder("Could not handle custom intent: ").append(queryParameter).append(". Is your intent spelled correctly?").toString());
        }
    }

    private boolean a(String str) {
        if (!str.startsWith("mopub://")) {
            return false;
        }
        Uri parse = Uri.parse(str);
        String host = parse.getHost();
        if (host.equals("finishLoad")) {
            this.b.a(this.c);
        } else if (host.equals("close")) {
            this.b.b();
        } else if (host.equals("failLoad")) {
            this.b.a(MoPubErrorCode.k);
        } else if (host.equals("custom")) {
            a(parse);
        }
        return true;
    }

    private boolean b(String str) {
        if (!c(str)) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.addFlags(268435456);
        try {
            this.a.startActivity(intent);
            this.b.a();
        } catch (ActivityNotFoundException e) {
            Log.w("MoPub", new StringBuilder("Could not handle intent with URI: ").append(str).append(". Is this intent unsupported on your phone?").toString());
        }
        return true;
    }

    private boolean c(String str) {
        return str.startsWith("tel:") || str.startsWith("voicemail:") || str.startsWith("sms:") || str.startsWith("mailto:") || str.startsWith("geo:") || str.startsWith("google.streetview:");
    }

    private boolean d(String str) {
        return str.startsWith("market://");
    }

    private boolean e(String str) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        if ((this.a.getPackageManager().queryIntentActivities(intent, 0).size() > 0) != 0) {
            return true;
        }
        Log.w("MoPub", new StringBuilder("Could not handle market action: ").append(str).append(". Perhaps you're running in the emulator, which does not have ").append("the Android Market?").toString());
        return false;
    }

    private String f(String str) {
        if (this.d == null) {
            return str;
        }
        return new StringBuilder(String.valueOf(this.d)).append("&r=").append(Uri.encode(str)).toString();
    }

    private void g(String str) {
        if (str == null || str.equals("")) {
            str = "about:blank";
        }
        Log.d("MoPub", new StringBuilder("Final URI to show in browser: ").append(str).toString());
        Intent intent = new Intent(this.a, MraidBrowser.class);
        intent.putExtra("extra_url", str);
        intent.addFlags(268435456);
        try {
            this.a.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Log.w("MoPub", new StringBuilder("Could not handle intent action: ").append(intent.getAction()).append(". Perhaps you forgot to declare com.mopub.mobileads.MraidBrowser").append(" in your Android manifest file.").toString());
            this.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("about:blank")).addFlags(268435456));
        }
    }

    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (this.e != null && str.startsWith(this.e)) {
            String f = f(str);
            webView.stopLoading();
            g(f);
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (!(a(str) || b(str))) {
            if (!d(str) || e(str)) {
                String f = f(str);
                Log.d("MoPub", new StringBuilder("Ad clicked. Click URL: ").append(f).toString());
                this.b.a();
                g(f);
            }
        }
        return true;
    }
}