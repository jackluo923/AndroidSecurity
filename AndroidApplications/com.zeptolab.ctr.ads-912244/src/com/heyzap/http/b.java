package com.heyzap.http;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.protocol.HttpContext;

class b implements HttpResponseInterceptor {
    final /* synthetic */ AsyncHttpClient a;

    b(AsyncHttpClient asyncHttpClient) {
        this.a = asyncHttpClient;
    }

    public void process(HttpResponse httpResponse, HttpContext httpContext) {
        HttpEntity entity = httpResponse.getEntity();
        if (entity != null) {
            Header contentEncoding = entity.getContentEncoding();
            if (contentEncoding != null) {
                HeaderElement[] elements = contentEncoding.getElements();
                int length = elements.length;
                int i = 0;
                while (i < length) {
                    if (elements[i].getName().equalsIgnoreCase(AsyncHttpClient.ENCODING_GZIP)) {
                        httpResponse.setEntity(new a(entity));
                        return;
                    } else {
                        i++;
                    }
                }
            }
        }
    }
}