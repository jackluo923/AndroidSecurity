package com.amazon.device.ads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.drive.DriveFile;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class AdWebViewClient extends WebViewClient {
    public static final String AMAZON_MOBILE = "amazonmobile";
    public static final String GEO = "geo";
    public static final String GOOGLE_STREETVIEW = "google.streetview";
    public static final String MAILTO = "mailto";
    public static final String MOPUB = "mopub";
    public static final String MRAID = "mraid";
    public static final String SMS = "sms";
    public static final String TELEPHONE = "tel";
    public static final String VOICEMAIL = "voicemail";
    protected static final HashSet a;
    protected static Set b;
    private static final String c;
    private final Context d;
    private final AdView e;
    private final HashMap f;

    static interface UrlExecutor {
        boolean execute(String str);
    }

    static class AmazonMobileExecutor implements UrlExecutor {
        private final AdView a;
        private final Context b;

        AmazonMobileExecutor(AdView adView, Context context) {
            this.a = adView;
            this.b = context;
        }

        protected void a(String str) {
            Log.i(c, "Special url clicked, but was not handled by SDK. Url: %s", new Object[]{str});
        }

        protected boolean b(String str) {
            Intent intent = new Intent();
            if (str.startsWith("intent:")) {
                try {
                    intent = Intent.parseUri(str, 1);
                } catch (URISyntaxException e) {
                    return false;
                }
            } else {
                intent.setData(Uri.parse(str));
            }
            try {
                intent.setAction("android.intent.action.VIEW");
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                this.b.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException e2) {
                return false;
            }
        }

        public boolean execute(String str) {
            specialUrlClicked(str);
            return true;
        }

        public void specialUrlClicked(String str) {
            if (this.a == null || !this.a.isAdViewRenderable()) {
                Log.d(c, "AdView is Null");
            } else {
                List queryParameters;
                Log.d(c, "Executing AmazonMobile Intent");
                Uri parse = Uri.parse(str);
                try {
                    queryParameters = parse.getQueryParameters("intent");
                } catch (UnsupportedOperationException e) {
                    queryParameters = null;
                }
                if (queryParameters != null && queryParameters.size() > 0) {
                    Iterator it = queryParameters.iterator();
                    while (it.hasNext()) {
                        if (b((String) it.next())) {
                            return;
                        }
                    }
                    a(str);
                } else if (!AmazonDeviceLauncher.a(this.b)) {
                    a(str);
                } else if (parse.getHost().equals("shopping")) {
                    String queryParameter = parse.getQueryParameter("app-action");
                    if (queryParameter != null && queryParameter.length() != 0) {
                        if (queryParameter.equals("detail")) {
                            queryParameter = parse.getQueryParameter("asin");
                            if (queryParameter != null && queryParameter.length() != 0) {
                                AmazonDeviceLauncher.a(this.b, queryParameter);
                            }
                        } else if (queryParameter.equals("search")) {
                            queryParameter = parse.getQueryParameter("keyword");
                            if (queryParameter != null && queryParameter.length() != 0) {
                                AmazonDeviceLauncher.b(this.b, queryParameter);
                            }
                        } else if (queryParameter.equals("webview")) {
                            a(str);
                        }
                    }
                }
            }
        }
    }

    class DefaultExecutor implements UrlExecutor {
        DefaultExecutor() {
        }

        public boolean execute(String str) {
            AdWebViewClient.this.e.launchExternalBrowserForLink(str);
            return true;
        }
    }

    class IntentExecutor implements UrlExecutor {
        IntentExecutor() {
        }

        public boolean execute(String str) {
            boolean z = true;
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            try {
                AdWebViewClient.this.d.startActivity(intent);
            } catch (ActivityNotFoundException e) {
                String a = c;
                String str2 = "Could not handle intent with URI: %s";
                Object[] objArr = new Object[z];
                objArr[0] = str;
                Log.w(a, str2, objArr);
            }
            return z;
        }
    }

    class MopubExecutor implements UrlExecutor {
        MopubExecutor() {
        }

        public boolean execute(String str) {
            return true;
        }
    }

    static {
        c = AdWebViewClient.class.getSimpleName();
        a = new HashSet();
        a.add(TELEPHONE);
        a.add(VOICEMAIL);
        a.add(SMS);
        a.add(MAILTO);
        a.add(GEO);
        a.add(GOOGLE_STREETVIEW);
        b = new HashSet();
        b.add("aax-us-east.amazon-adsystem.com");
        b.add("aax-us-east.amazon-adsystem.com");
        b.add("aax-beta.integ.amazon.com");
        b.add("pda-bes.amazon.com");
        b.add("d16g-cornerstone-bes.integ.amazon.com");
    }

    public AdWebViewClient(AdView adView, Context context) {
        this.d = context;
        this.e = adView;
        this.f = new HashMap();
        b();
    }

    private void b() {
        this.f.put(MOPUB, new MopubExecutor());
        this.f.put(AMAZON_MOBILE, new AmazonMobileExecutor(this.e, this.d));
        UrlExecutor intentExecutor = new IntentExecutor();
        Iterator it = a.iterator();
        while (it.hasNext()) {
            putUrlExecutor((String) it.next(), intentExecutor);
        }
    }

    private static boolean c() {
        return VERSION.SDK_INT >= 11 && VERSION.SDK_INT <= 13;
    }

    protected String a(String str) {
        return Uri.parse(str).getScheme();
    }

    protected boolean a(String str, String str2) {
        if (str2 == null) {
            return false;
        }
        if (this.f.containsKey(str2)) {
            return ((UrlExecutor) this.f.get(str2)).execute(str);
        }
        Log.d(c, "Scheme %s unrecognized. Launching external browser.", new Object[]{str2});
        return this.e.launchExternalBrowserForLink(str);
    }

    public void onLoadResource(WebView webView, String str) {
        Log.d(c, "Loaded resource: %s", new Object[]{str});
    }

    public void onPageFinished(WebView webView, String str) {
        if (this.e == null) {
            Log.w(c, "Call to onPageFinished() ignored because view is null.");
        } else {
            this.e.onPageFinished();
        }
    }

    public void onReceivedError(WebView webView, int i, String str, String str2) {
        Log.e(c, "Error: %s", new Object[]{str});
        super.onReceivedError(webView, i, str, str2);
    }

    public void putUrlExecutor(String str, UrlExecutor urlExecutor) {
        this.f.put(str, urlExecutor);
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        boolean z = false;
        if (this.e == null) {
            return false;
        }
        if (!this.e.isAdViewRenderable()) {
            return true;
        }
        if (!b.contains(Uri.parse(str).getHost()) || c()) {
            z = true;
        }
        return a(str, a(str)) ? true : z;
    }
}