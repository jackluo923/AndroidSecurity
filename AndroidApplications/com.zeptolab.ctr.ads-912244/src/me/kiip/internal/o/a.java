package me.kiip.internal.o;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import me.kiip.internal.c.g;

public class a extends c {
    private static g a;

    public static void a_(g gVar) {
        a = gVar;
    }

    @TargetApi(11)
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        if (a == null) {
            return null;
        }
        WebResourceResponse webResourceResponse;
        try {
            HttpURLConnection a = a.a(new URL(str));
            a.addRequestProperty("Cache-Control", "only-if-cached");
            a.connect();
            InputStream inputStream = a.getInputStream();
            String[] split = a.getContentType().split("; charset=");
            webResourceResponse = new WebResourceResponse(split[0], split.length >= 2 ? split[1] : "utf-8", inputStream);
        } catch (MalformedURLException e) {
            webResourceResponse = null;
        } catch (IOException e2) {
            webResourceResponse = null;
        }
        return webResourceResponse;
    }
}