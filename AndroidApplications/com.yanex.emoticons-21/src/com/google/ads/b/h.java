package com.google.ads.b;

import android.net.Uri;
import android.webkit.WebView;
import com.google.ads.br;
import com.google.ads.util.AdUtil;
import com.google.ads.util.g;
import com.google.ads.util.o;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public final class h {
    public static final o a;
    public static final Map b;
    public static final Map c;
    public static final Map d;
    private static final h e;

    static {
        e = new h();
        a = new j();
        b = Collections.unmodifiableMap(new k());
        c = Collections.unmodifiableMap(new l());
        d = Collections.unmodifiableMap(new i());
    }

    public static void a(WebView webView) {
        a(webView, "onshow", "{'version': 'afma-sdk-a-v6.4.1'}");
    }

    private static void a(WebView webView, String str) {
        g.a(new StringBuilder("Sending JS to a WebView: ").append(str).toString());
        webView.loadUrl(new StringBuilder("javascript:").append(str).toString());
    }

    public static void a(WebView webView, String str, String str2) {
        String str3 = "AFMA_ReceiveMessage";
        if (str2 != null) {
            a(webView, str3 + "('" + str + "', " + str2 + ");");
        } else {
            a(webView, str3 + "('" + str + "');");
        }
    }

    public static void a(WebView webView, Map map) {
        a(webView, "openableURLs", new JSONObject(map).toString());
    }

    public static void a(w wVar, Map map, Uri uri, WebView webView) {
        HashMap b = AdUtil.b(uri);
        if (b == null) {
            g.e("An error occurred while parsing the message parameters.");
        } else {
            String host;
            if (c(uri)) {
                host = uri.getHost();
                if (host == null) {
                    g.e("An error occurred while parsing the AMSG parameters.");
                    host = null;
                } else if (host.equals("launch")) {
                    b.put("a", "intent");
                    b.put("u", b.get("url"));
                    b.remove("url");
                    host = "/open";
                } else if (host.equals("closecanvas")) {
                    host = "/close";
                } else if (host.equals("log")) {
                    host = "/log";
                } else {
                    g.e(new StringBuilder("An error occurred while parsing the AMSG: ").append(uri.toString()).toString());
                    host = null;
                }
            } else if (b(uri)) {
                host = uri.getPath();
            } else {
                g.e("Message was neither a GMSG nor an AMSG.");
                host = null;
            }
            if (host == null) {
                g.e("An error occurred while parsing the message.");
            } else {
                br brVar = (br) map.get(host);
                if (brVar == null) {
                    g.e(new StringBuilder("No AdResponse found, <message: ").append(host).append(">").toString());
                } else {
                    brVar.a(wVar, b, webView);
                }
            }
        }
    }

    public static boolean a(Uri uri) {
        if (uri == null || !uri.isHierarchical()) {
            return false;
        }
        return b(uri) || c(uri);
    }

    public static void b(WebView webView) {
        a(webView, "onhide", null);
    }

    private static boolean b(Uri uri) {
        String scheme = uri.getScheme();
        if (scheme == null || !scheme.equals("gmsg")) {
            return false;
        }
        scheme = uri.getAuthority();
        return scheme != null && scheme.equals("mobileads.google.com");
    }

    private static boolean c(Uri uri) {
        String scheme = uri.getScheme();
        return scheme != null && scheme.equals("admob");
    }
}