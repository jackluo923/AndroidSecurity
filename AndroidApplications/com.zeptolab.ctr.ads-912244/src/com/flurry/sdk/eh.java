package com.flurry.sdk;

import com.brightcove.player.media.MediaService;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.SingleClientConnManager;
import org.apache.http.params.HttpParams;

public final class eh {
    private static SchemeRegistry a;

    public static HttpClient a(HttpParams httpParams) {
        return new DefaultHttpClient(new SingleClientConnManager(httpParams, a()), httpParams);
    }

    private static synchronized SchemeRegistry a() {
        SchemeRegistry schemeRegistry;
        synchronized (eh.class) {
            if (a != null) {
                schemeRegistry = a;
            } else {
                a = new SchemeRegistry();
                a.register(new Scheme(MediaService.DEFAULT_MEDIA_DELIVERY, PlainSocketFactory.getSocketFactory(), 80));
                if (el.d()) {
                    a.register(new Scheme("https", new ef(), 443));
                } else {
                    a.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
                }
                schemeRegistry = a;
            }
        }
        return schemeRegistry;
    }
}