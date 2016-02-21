package com.heyzap.http;

import java.util.Iterator;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

class a implements HttpRequestInterceptor {
    final /* synthetic */ AsyncHttpClient a;

    a(AsyncHttpClient asyncHttpClient) {
        this.a = asyncHttpClient;
    }

    public void process(HttpRequest httpRequest, HttpContext httpContext) {
        if (!httpRequest.containsHeader(AsyncHttpClient.HEADER_ACCEPT_ENCODING)) {
            httpRequest.addHeader(AsyncHttpClient.HEADER_ACCEPT_ENCODING, AsyncHttpClient.ENCODING_GZIP);
        }
        Iterator it = AsyncHttpClient.access$000(this.a).keySet().iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            httpRequest.addHeader(str, (String) AsyncHttpClient.access$000(this.a).get(str));
        }
    }
}