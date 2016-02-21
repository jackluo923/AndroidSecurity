package com.mopub.mobileads.factories;

import org.apache.http.impl.client.DefaultHttpClient;

public class HttpClientFactory {
    private static HttpClientFactory a;

    static {
        a = new HttpClientFactory();
    }

    public static DefaultHttpClient a() {
        return a.b();
    }

    protected DefaultHttpClient b() {
        return new DefaultHttpClient();
    }
}