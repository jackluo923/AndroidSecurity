package com.heyzap.http;

import org.apache.http.HttpResponse;
import org.apache.http.impl.client.DefaultRedirectHandler;
import org.apache.http.protocol.HttpContext;

class c extends DefaultRedirectHandler {
    final /* synthetic */ boolean a;
    final /* synthetic */ AsyncHttpClient b;

    c(AsyncHttpClient asyncHttpClient, boolean z) {
        this.b = asyncHttpClient;
        this.a = z;
    }

    public boolean isRedirectRequested(HttpResponse httpResponse, HttpContext httpContext) {
        return this.a;
    }
}