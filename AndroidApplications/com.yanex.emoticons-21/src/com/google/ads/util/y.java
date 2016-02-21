package com.google.ads.util;

import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.ads.b.ad;
import com.google.ads.b.n;
import com.google.ads.b.w;
import com.google.ads.bo;
import com.google.ads.bp;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

public final class y extends ad {
    public y(w wVar, Map map, boolean z, boolean z2) {
        super(wVar, map, z, z2);
    }

    private static WebResourceResponse a(String str, Context context) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        AdUtil.a(httpURLConnection, context.getApplicationContext());
        httpURLConnection.connect();
        String str2 = "UTF-8";
        WebResourceResponse webResourceResponse = new WebResourceResponse("application/javascript", str2, new ByteArrayInputStream(AdUtil.a(new InputStreamReader(httpURLConnection.getInputStream())).getBytes(str2)));
        httpURLConnection.disconnect();
        return webResourceResponse;
    }

    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        try {
            if ("mraid.js".equalsIgnoreCase(new File(str).getName())) {
                n i = this.a.i();
                if (i != null) {
                    i.b();
                } else {
                    this.a.a(true);
                }
                bp bpVar = (bp) ((bo) this.a.g().d.a()).b.a();
                String str2;
                if (this.a.g().b()) {
                    str2 = (String) bpVar.g.a();
                    g.a(new StringBuilder("shouldInterceptRequest(").append(str2).append(")").toString());
                    return a(str2, webView.getContext());
                } else if (this.b) {
                    str2 = (String) bpVar.f.a();
                    g.a(new StringBuilder("shouldInterceptRequest(").append(str2).append(")").toString());
                    return a(str2, webView.getContext());
                } else {
                    str2 = (String) bpVar.e.a();
                    g.a(new StringBuilder("shouldInterceptRequest(").append(str2).append(")").toString());
                    return a(str2, webView.getContext());
                }
            }
        } catch (IOException e) {
            g.d("IOException fetching MRAID JS.", e);
        } catch (Throwable th) {
            g.d("An unknown error occurred fetching MRAID JS.", th);
        }
        return super.shouldInterceptRequest(webView, str);
    }
}