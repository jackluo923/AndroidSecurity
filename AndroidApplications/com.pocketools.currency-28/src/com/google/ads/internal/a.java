package com.google.ads.internal;

import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.AdActivity;
import com.google.ads.ag;
import com.google.ads.n;
import com.google.ads.o;
import com.google.ads.p;
import com.google.ads.q;
import com.google.ads.r;
import com.google.ads.s;
import com.google.ads.t;
import com.google.ads.u;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import com.google.ads.util.f;
import com.google.ads.v;
import com.google.ads.w;
import com.google.ads.x;
import com.google.ads.y;
import com.google.ads.z;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class a {
    public static final f<a> a;
    public static final Map<String, n> b;
    public static final Map<String, n> c;
    private static final a d;

    static {
        d = new a();
        a = new f<a>() {
            public a a() {
                return d;
            }

            public /* synthetic */ Object b() {
                return a();
            }
        };
        b = Collections.unmodifiableMap(new HashMap<String, n>() {
            {
                put("/invalidRequest", new t());
                put("/loadAdURL", new u());
                put("/loadSdkConstants", new v());
            }
        });
        c = Collections.unmodifiableMap(new HashMap<String, n>() {
            {
                put("/open", new x());
                put("/canOpenURLs", new o());
                put("/close", new q());
                put("/evalInOpener", new r());
                put("/log", new w());
                put("/click", new p());
                put("/httpTrack", new s());
                put("/touch", new y());
                put("/video", new z());
                put("/plusOne", new ag());
            }
        });
    }

    public String a_(Uri uri, HashMap<String, String> hashMap) {
        if (c(uri)) {
            String host = uri.getHost();
            if (host == null) {
                b.e("An error occurred while parsing the AMSG parameters.");
                return null;
            } else if (host.equals("launch")) {
                hashMap.put("a", "intent");
                hashMap.put(AdActivity.URL_PARAM, hashMap.get("url"));
                hashMap.remove("url");
                return "/open";
            } else if (host.equals("closecanvas")) {
                return "/close";
            } else {
                if (host.equals("log")) {
                    return "/log";
                }
                b.e("An error occurred while parsing the AMSG: " + uri.toString());
                return null;
            }
        } else if (b(uri)) {
            return uri.getPath();
        } else {
            b.e("Message was neither a GMSG nor an AMSG.");
            return null;
        }
    }

    public void a_(WebView webView) {
        a(webView, "onshow", "{'version': 'afma-sdk-a-v6.0.1'}");
    }

    public void a_(WebView webView, String str) {
        b.a("Sending JS to a WebView: " + str);
        webView.loadUrl("javascript:" + str);
    }

    public void a_(WebView webView, String str, String str2) {
        String str3 = "AFMA_ReceiveMessage";
        if (str2 != null) {
            a(webView, str3 + "('" + str + "', " + str2 + ");");
        } else {
            a(webView, str3 + "('" + str + "');");
        }
    }

    public void a_(WebView webView, Map<String, Boolean> map) {
        a(webView, "openableURLs", new JSONObject(map).toString());
    }

    public void a_(d dVar, Map<String, n> map, Uri uri, WebView webView) {
        HashMap b = AdUtil.b(uri);
        if (b == null) {
            b.e("An error occurred while parsing the message parameters.");
        } else {
            String a = a(uri, b);
            if (a == null) {
                b.e("An error occurred while parsing the message.");
            } else {
                n nVar = (n) map.get(a);
                if (nVar == null) {
                    b.e("No AdResponse found, <message: " + a + ">");
                } else {
                    nVar.a(dVar, b, webView);
                }
            }
        }
    }

    public boolean a_(Uri uri) {
        if (uri == null || !uri.isHierarchical()) {
            return false;
        }
        return b(uri) || c(uri);
    }

    public void b(WebView webView) {
        a(webView, "onhide", null);
    }

    public boolean b(Uri uri) {
        String scheme = uri.getScheme();
        if (scheme == null || !scheme.equals("gmsg")) {
            return false;
        }
        scheme = uri.getAuthority();
        return scheme != null && scheme.equals("mobileads.google.com");
    }

    public boolean c(Uri uri) {
        String scheme = uri.getScheme();
        return scheme != null && scheme.equals("admob");
    }
}